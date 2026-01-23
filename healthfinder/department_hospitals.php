<?php
// Include the database connection and the header file
include 'includes/db_connect.php';
include 'includes/header.php'; // This file already starts the session

// Define the predefined price ranges (Copied from search.php for consistency)
$price_ranges = [
    'Less than ₹50,000' => [0, 50000],
    '₹50,000 to ₹1,00,000' => [50000, 100000],
    '₹1,00,000 to ₹3,00,000' => [100000, 300000],
    '₹3,00,000 and above' => [300000, null] // null means no upper limit
];
?>

<div class="container" style="padding: 40px 0;">

    <?php
    // Check if a department name was sent in the URL
    if (isset($_GET['name']) && !empty($_GET['name'])) {

        // --- 1. GET AND SANITIZE INPUTS ---
        $department_name = $conn->real_escape_string($_GET['name']);

        // NEW: Get price filter inputs
        $min_cost_filter = null;
        $max_cost_filter = null;
        $selected_range_key = null;
        
        // Check if a price range was selected from the dropdown
        if (isset($_GET['range_key']) && !empty($_GET['range_key'])) {
            $key_from_url = $_GET['range_key'];
            
            if (isset($price_ranges[$key_from_url])) {
                $selected_range = $price_ranges[$key_from_url];
                $min_cost_filter = $selected_range[0];
                $max_cost_filter = $selected_range[1] !== null ? $selected_range[1] : null; 
                $selected_range_key = $key_from_url;
            }
        }

        echo "<h2>Hospitals in: " . htmlspecialchars($department_name) . "</h2>";

        
        // --- 2. DISPLAY FILTER BUTTON AND DROPDOWN (NEW) ---
        echo "<div class='filter-area'>";
        // This is the button you click
        echo "<button id='filterButton' class='btn btn-primary'>Filter by Price</button>";
        
        // This form is hidden by default and shown on button click
        echo "<form id='priceFilterForm' class='filter-dropdown' method='GET' action='department_hospitals.php' style='display: none;'>";
        
        // CRITICAL: Hidden input to preserve the department name while filtering
        echo "<input type='hidden' name='name' value='" . htmlspecialchars($department_name) . "'>";
        
        // The dropdown select
        echo "<select name='range_key' id='price_range_select' onchange='this.form.submit()'>";
        echo "<option value=''>-- Select a Price Range --</option>";
        
        foreach ($price_ranges as $key => $range) {
            $selected = ($selected_range_key === $key) ? 'selected' : '';
            echo "<option value='" . htmlspecialchars($key) . "' $selected>" . htmlspecialchars($key) . "</option>";
        }
        echo "</select>";
        echo "</form>";
        echo "</div>"; // End filter-area


        // --- 3. BUILD THE SQL QUERY (UPDATED) ---
        // Base query
        $sql = "SELECT * FROM hospitals WHERE department = '$department_name'";

        // Apply the corrected price filter logic
        if ($selected_range_key !== null) { 
            if ($max_cost_filter !== null) {
                // (Hospital_Start <= Filter_End) AND (Hospital_End >= Filter_Start)
                $sql .= " AND (cost_inr_min <= $max_cost_filter AND cost_inr_max >= $min_cost_filter)";
            } else {
                // (Hospital_End >= Filter_Start)
                $sql .= " AND cost_inr_max >= $min_cost_filter";
            }
        }
        
        $sql .= " ORDER BY hospital_name ASC";


        // --- 4. EXECUTE AND DISPLAY RESULTS ---
        echo "<div class='results-list'>"; // Added for consistent styling
        
        $result = $conn->query($sql);

        // Added a result count for better UX
        $result_message = "Found " . $result->num_rows . " hospitals";
        if (isset($selected_range_key)) {
            $result_message .= " filtered by cost: <strong>" . htmlspecialchars($selected_range_key) . "</strong>";
        }
        $result_message .= ".";
        echo "<p class='result-count'>" . $result_message . "</p>";


        if ($result->num_rows > 0) {
            // Loop through each hospital and display it
            while ($row = $result->fetch_assoc()) {
                echo "<div class='result-card'>";
                echo "<h3>" . htmlspecialchars($row['hospital_name']) . "</h3>";
                echo "<p><strong>Disease Focus:</strong> " . htmlspecialchars($row['disease']) . "</p>";
                echo "<p><strong>Location:</strong> " . htmlspecialchars($row['location']) . "</p>";
                echo "<p><strong>Top Doctors:</strong> " . htmlspecialchars($row['top_doctors']) . "</p>";
                echo "<p><strong>Estimated Cost:</strong> ₹" . number_format($row['cost_inr_min']) . " - ₹" . number_format($row['cost_inr_max']) . "</p>";
                echo "</div>";
            }
        } else {
            // Updated no-results message
            echo "<p class='no-results'>No hospitals found in this department" . (isset($selected_range_key) ? " for that price range." : ".") . "</p>";
        }
        
        echo "</div>"; // End results-list

    } else {
        // If the user lands on the page without a department name
        echo "<h2>No Department Selected</h2>";
        echo "<p>Please select a department from the main departments page.</p>";
    }
    ?>
</div>

<!-- JavaScript to toggle the filter dropdown -->
<script>
document.getElementById('filterButton').addEventListener('click', function() {
    var form = document.getElementById('priceFilterForm');
    if (form.style.display === 'none' || form.style.display === '') {
        form.style.display = 'block';
    } else {
        form.style.display = 'none';
    }
});
</script>

<?php
$conn->close();
include 'includes/footer.php';
?>
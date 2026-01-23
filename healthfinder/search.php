<?php
// Include the database connection and the header file
include 'includes/db_connect.php';
include 'includes/header.php'; // This file already starts the session

// Define the predefined price ranges (Key is the display name)
$price_ranges = [
    'Less than ₹50,000' => [0, 50000],
    '₹50,000 to ₹1,00,000' => [50000, 100000],
    '₹1,00,000 to ₹3,00,000' => [100000, 300000],
    '₹3,00,000 and above' => [300000, null] // null means no upper limit
];
?>

<div class="container" style="padding: 40px 0;">

    <h2>Search Results</h2>

    <?php
    // Check if a search query was sent
    if (isset($_GET['query']) && !empty($_GET['query'])) {

        // --- 1. GET AND SANITIZE INPUTS ---
        $search_query = $conn->real_escape_string($_GET['query']);
        
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
        
        // --- 2. DISPLAY FILTER BUTTON AND DROPDOWN ---
        echo "<div class='filter-area'>";
        // This is the button you click
        echo "<button id='filterButton' class='btn btn-primary'>Filter by Price</button>";
        
        // This form is hidden by default and shown on button click
        echo "<form id='priceFilterForm' class='filter-dropdown' method='GET' action='search.php' style='display: none;'>";
        
        // Hidden input to preserve the original disease search query
        echo "<input type='hidden' name='query' value='" . htmlspecialchars($search_query) . "'>";
        
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

        // --- 3. BUILD THE SQL QUERY ---
        $sql = "SELECT * FROM hospitals WHERE disease LIKE '%$search_query%'";
        
        // *** START OF CORRECTED LOGIC ***
        // We only add price filters if a range was actually selected
        if ($selected_range_key !== null) { 
            
            // Case 1: Standard range (e.g., 50k to 100k)
            if ($max_cost_filter !== null) {
                // This finds any hospital whose range OVERLAPS with the filter.
                // (Hospital_Start <= Filter_End) AND (Hospital_End >= Filter_Start)
                $sql .= " AND (cost_inr_min <= $max_cost_filter AND cost_inr_max >= $min_cost_filter)";
            } 
            // Case 2: "And above" range (e.g., 300k and above)
            else {
                // (Hospital_End >= Filter_Start)
                // Finds any hospital whose max cost is at least the minimum filter amount.
                $sql .= " AND cost_inr_max >= $min_cost_filter";
            }
        }
        // *** END OF CORRECTED LOGIC ***
        
        $sql .= " ORDER BY hospital_name ASC";

        // --- 4. EXECUTE AND DISPLAY RESULTS ---
        echo "<div class='results-list'>";
        
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            
            $result_message = "Found " . $result->num_rows . " results for '<strong>" . htmlspecialchars($search_query) . "</strong>'";
            if (isset($selected_range_key)) {
                $result_message .= " filtered by cost: <strong>" . htmlspecialchars($selected_range_key) . "</strong>";
            }
            $result_message .= ".";

            echo "<p class='result-count'>" . $result_message . "</p>";

            while ($row = $result->fetch_assoc()) {
                echo "<div class='result-card'>";
                echo "<h3>" . htmlspecialchars($row['hospital_name']) . "</h3>";
                echo "<p><strong>Department:</strong> " . htmlspecialchars($row['department']) . "</p>";
                echo "<p><strong>Location:</strong> " . htmlspecialchars($row['location']) . "</p>";
                echo "<p><strong>Top Doctors:</strong> " . htmlspecialchars($row['top_doctors']) . "</p>";
                echo "<p><strong>Estimated Cost:</strong> ₹" . number_format($row['cost_inr_min']) . " - ₹" . number_format($row['cost_inr_max']) . "</p>";
                echo "</div>";
            }
        } else {
            echo "<p class='no-results'>No results found for '<strong>" . htmlspecialchars($search_query) . "</strong>'. Please try a different search term or range.</p>";
        }
        
        echo "</div>"; // Close results-list
        
    } else {
        echo "<p>Please enter a disease name in the search bar on the homepage.</p>";
    }

    // Close the database connection
    $conn->close();
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

<?php include 'includes/footer.php'; ?>
<?php
// Include the database connection and the header file
include 'includes/db_connect.php';
include 'includes/header.php';
?>

<div class="container" style="padding: 40px 0;">

    <h2>All Departments</h2>
    <p>Select a department to see a list of associated hospitals.</p>

    <div class="department-list">
        <?php
        // Create the SQL query to get a unique, alphabetized list of departments
        $sql = "SELECT DISTINCT department FROM hospitals ORDER BY department ASC";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Loop through each department and display it as a link
            while ($row = $result->fetch_assoc()) {
                $department_name = htmlspecialchars($row['department']);
                echo "<a href='department_hospitals.php?name=" . urlencode($department_name) . "' class='department-item'>" . $department_name . "</a>";
            }
        } else {
            echo "<p>No departments found in the database.</p>";
        }
        ?>
    </div>
</div>

<?php
$conn->close();
include 'includes/footer.php';
?>
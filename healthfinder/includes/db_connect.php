<?php
/*
 * Main database connection file for the HealthFinder application.
 */

// --- Database Credentials ---
$servername = "localhost";     
$username = "root";          // Default username for XAMPP
$password = "";              // Default password for XAMPP (usually empty string)
$dbname = "healthcare_db";   // <<< THIS IS THE CORRECTED DATABASE NAME

// --- Create a new connection to the MySQL database ---
// This is the line that establishes the connection
$conn = new mysqli($servername, $username, $password, $dbname);

// --- Check for connection errors ---
if ($conn->connect_error) {
    // If there is an error, stop the script and display the error message.
    die("Connection failed: " . $conn->connect_error);
}

// Optional: Set character set to utf8mb4 for better character support
$conn->set_charset("utf8mb4");

?>



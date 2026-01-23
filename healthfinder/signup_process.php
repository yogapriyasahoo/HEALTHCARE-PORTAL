<?php
// Include the database connection
include 'includes/db_connect.php';

// Start a session to store messages
session_start();

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get and sanitize user inputs
    $full_name = $conn->real_escape_string($_POST['name']);
    $email = $conn->real_escape_string($_POST['email']);
    $password = $_POST['password']; // We'll hash this, so no need to escape

    // --- Validation ---
    if (empty($full_name) || empty($email) || empty($password)) {
        die("Error: Please fill out all fields.");
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Error: Invalid email format.");
    }

    // --- Check if email already exists ---
    $sql_check = "SELECT id FROM users WHERE email = '$email'";
    $result_check = $conn->query($sql_check);
    if ($result_check->num_rows > 0) {
        die("Error: This email address is already registered. Please <a href='login.php'>login</a>.");
    }

    // --- Hash the password for security ---
    $password_hash = password_hash($password, PASSWORD_DEFAULT);

    // --- Insert the new user into the database ---
    $sql_insert = "INSERT INTO users (full_name, email, password_hash) VALUES ('$full_name', '$email', '$password_hash')";

    if ($conn->query($sql_insert) === TRUE) {
        // Success! Redirect to the login page with a success message.
        echo "Signup successful! You can now <a href='login.php'>log in</a>.";
        // header("Location: login.php?signup=success"); // Optional: Redirect automatically
        exit();
    } else {
        // If there was an error with the database query
        echo "Error: " . $sql_insert . "<br>" . $conn->error;
    }

    // Close the database connection
    $conn->close();

} else {
    // If someone tries to access this page directly without submitting the form
    header("Location: signup.php");
    exit();
}
?>
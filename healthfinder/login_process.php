<?php
// Include the database connection
include 'includes/db_connect.php';

// We must start a session to store login state
session_start();

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get and sanitize email
    $email = $conn->real_escape_string($_POST['email']);
    $password = $_POST['password'];

    // --- Find the user in the database ---
    $sql = "SELECT id, full_name, password_hash FROM users WHERE email = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        // User found, now verify the password
        $user = $result->fetch_assoc();
        
        // Use password_verify() to check the submitted password against the stored hash
        if (password_verify($password, $user['password_hash'])) {
            // Password is correct! Login successful.
            
            // Store user data in the session
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_name'] = $user['full_name'];
            
            // Redirect to the homepage
            header("Location: index.php");
            exit();

        } else {
            // Incorrect password
            echo "Error: Incorrect password. Please <a href='login.php'>try again</a>.";
        }
    } else {
        // No user found with that email
        echo "Error: No account found with that email address. Please <a href='signup.php'>sign up</a>.";
    }

    $conn->close();

} else {
    // Redirect if accessed directly
    header("Location: login.php");
    exit();
}
?>
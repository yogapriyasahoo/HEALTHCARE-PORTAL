<?php
// Start the session in order to access it
session_start();

// Unset all of the session variables (like user_id and user_name)
$_SESSION = array();

// Destroy the session completely
session_destroy();

// Redirect the user back to the homepage
header("location: index.php");
exit;
?>
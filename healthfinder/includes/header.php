<?php
// Start the session on every page
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Care Portal</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>

    <header class="main-header">
        <div class="container">
            <a href="index.php" class="logo">
                <div class="logo-icon">+</div> Health Care Portal
            </a>
            <nav class="main-nav">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="#">About Us</a></li> 
                    <li><a href="departments.php">Departments</a></li>
                </ul>
            </nav>
            <div class="user-actions">
                <?php if (isset($_SESSION['user_id'])): ?>
                    <span class="welcome-message">Welcome, <?php echo htmlspecialchars($_SESSION['user_name']); ?>!</span>
                    <a href="logout.php" class="btn btn-logout">Logout</a>
                <?php else: ?>
                    <!-- "Sign Up" button removed as requested -->
                    <a href="login.php" class="btn btn-primary">Login</a>
                <?php endif; ?>
            </div>
        </div>
    </header>

    <div class="content">
        <!-- This div is critical. The new CSS rule targets it to fix the footer bug. -->
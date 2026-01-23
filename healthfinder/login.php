<?php include 'includes/header.php'; ?>

<div class="form-container">

    <form action="login_process.php" method="POST">
        <h2>User Login</h2>
        <div class="form-group">
            <label for="login_email">Email Address</label>
            <input type="email" id="login_email" name="email" required>
        </div>
        <div class="form-group">
            <label for="login_password">Password</label>
            <input type="password" id="login_password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
        <p>Don't have an account? <a href="signup.php">Sign up here</a></p>
    </form>
    
</div>

<?php include 'includes/footer.php'; ?>
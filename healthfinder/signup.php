<?php include 'includes/header.php'; ?>

<div class="form-container">

    <form action="signup_process.php" method="POST">
        <h2>Create an Account</h2>
        <div class="form-group">
            <label for="signup_name">Full Name</label>
            <input type="text" id="signup_name" name="name" required>
        </div>
        <div class="form-group">
            <label for="signup_email">Email Address</label>
            <input type="email" id="signup_email" name="email" required>
        </div>
        <div class="form-group">
            <label for="signup_password">Password</label>
            <input type="password" id="signup_password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
        <p>Already have an account? <a href="login.php">Login here</a></p>
    </form>
    
</div>

<?php include 'includes/footer.php'; ?>
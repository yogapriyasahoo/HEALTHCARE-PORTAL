<?php include 'includes/header.php'; ?>

<!-- Page-specific styles for the About Us content -->
<style>
    .about-hero {
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://placehold.co/1200x300/0d6efd/ffffff?text=About+Us') center center no-repeat;
        background-size: cover;
        padding: 60px 0;
        color: white;
        text-align: center;
    }
    .about-hero h1 {
        font-size: 2.8em;
        margin: 0;
    }
    .about-hero p {
        font-size: 1.2em;
        opacity: 0.9;
    }
    
    .about-section {
        background-color: #fff;
        padding: 40px;
        margin-bottom: 30px;
        border-radius: 8px;
        box-shadow: 0 3px 10px rgba(0,0,0,0.05);
    }
    .about-section h2 {
        color: #0d6efd;
        border-bottom: 2px solid #f0f0f0;
        padding-bottom: 10px;
        margin-top: 0;
    }
    
    .offer-grid {
        display: flex;
        gap: 20px;
        margin-top: 20px;
    }
    .offer-item {
        flex: 1;
        text-align: center;
        padding: 20px;
        border: 1px solid #eee;
        border-radius: 8px;
    }
    .offer-item h3 {
        color: #333;
    }

    .team-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }
    /* Re-using the .result-card style from your main CSS for consistency */
    .team-grid .result-card {
        flex-basis: calc(33.333% - 20px);
        min-width: 250px;
    }

    /* Responsive adjustments for grids */
    @media (max-width: 768px) {
        .offer-grid, .team-grid {
            flex-direction: column;
        }
        .team-grid .result-card {
            flex-basis: 100%;
        }
    }
</style>

<!-- Hero Section for the About Page -->
<div class="about-hero">
    <h1>About Health Care Portal</h1>
    <p>Your trusted partner in navigating healthcare.</p>
</div>

<!-- Main content container -->
<div class="container" style="padding: 40px 0;">

    <!-- Our Mission Section -->
    <section class="about-section">
        <h2>Our Mission</h2>
        <p>Our mission is to simplify the process of finding high-quality, reliable healthcare. We believe that everyone deserves access to transparent information about medical services, helping you make informed decisions for yourself and your family.</p>
        <p>This portal was built to bridge the gap between patients and providers, offering a seamless way to find the care you need, right when you need it.</p>
    </section>

    <!-- What We Offer Section -->
    <section class="about-section">
        <h2>What We Offer</h2>
        <div class="offer-grid">
            <div class="offer-item">
                <h3>Comprehensive Search</h3>
                <p>Instantly find hospitals and specialists by searching for specific diseases or conditions.</p>
            </div>
            <div class="offer-item">
                <h3>Browse by Department</h3>
                <p>Explore our extensive network of hospitals by browsing specialized departments.</p>
            </div>
            <div class="offer-item">
                <h3>Transparent Details</h3>
                <p>We provide details on top doctors and estimated costs to help you compare your options.</p>
            </div>
        </div>
    </section>

    <!-- Our Team Section (Sample) -->
    <section class="about-section">
        <h2>Meet the Team (Sample)</h2>
        <p>We are a dedicated team of doctors, engineers, and healthcare advocates passionate about improving patient access to care.</p>
        <div class="team-grid">
            <div class="result-card">
                <h3>Jivitesh Barik and Ramandeep Pattanaik</h3>
                <p><strong>Founder & CEO</strong></p>
                <p>With over 20 years in medicine, Dr. Barik founded this portal to bring transparency to healthcare.</p>
            </div>
            <div class="result-card">
                <h3>Saptarshi Banerjee</h3>
                <p><strong>Chief Technology Officer</strong></p>
                <p>Rishi leads our tech team, ensuring the platform is secure, fast, and easy to use.</p>
            </div>
            <div class="result-card">
                <h3>Yogapriya Sahoo</h3>
                <p><strong>Head of Medical Research</strong></p>
                <p>Dr. Sahoo ensures all hospital and doctor information is accurate and up-to-date.</p>
            </div>
        </div>
    </section>

</div>

<?php include 'includes/footer.php'; ?>

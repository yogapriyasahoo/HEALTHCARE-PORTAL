<?php include 'includes/header.php'; ?>

<main>
    <section class="hero-section">
        <div class="hero-content">
            <h1>Find The Care You Need</h1>
            <p>Search for diseases to find trusted hospitals and doctors near you.</p>

            <form action="search.php" method="GET" class="search-bar">
                <input type="text" name="query" placeholder="Enter a disease name (e.g., Cold, Fever, Cancer)..." required>
                <button type="submit">Search</button>
            </form>

        </div>
    </section>

    </main>

<?php include 'includes/footer.php'; ?>
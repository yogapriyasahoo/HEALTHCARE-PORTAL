# HEALTHCARE-PORTAL
# Health Care Portal 🏥

**Design Capstone Project | School of Computer Science and Engineering, XIM University**

[cite_start]The **Health Care Portal** is a web-based application designed to bridge the information gap between patients and healthcare providers[cite: 13]. [cite_start]In today's fragmented healthcare landscape, finding reliable information about hospitals, specific treatments, and costs can be challenging[cite: 14, 27]. [cite_start]This project aggregates this data into a user-friendly platform, empowering users to make informed decisions about their healthcare[cite: 40].

## 📋 Table of Contents
- [Project Overview](#project-overview)
- [Key Features](#key-features)
- [Technology Stack](#technology-stack)
- [Database Schema](#database-schema)
- [Installation & Setup](#installation--setup)
- [Future Scope](#future-scope)
- [Contributors](#contributors)

## 🚀 Project Overview
[cite_start]The primary objective of this portal is to create a centralized hub where users can search for hospitals based on specific diseases or medical departments[cite: 15, 31]. [cite_start]The system provides critical details such as hospital location, top doctors, and estimated minimum and maximum treatment costs[cite: 16].

## ✨ Key Features
* [cite_start]**Disease-Based Search:** Users can find relevant hospitals by simply entering a disease name (e.g., "Cancer") in the search bar[cite: 32].
* [cite_start]**Departmental Browsing:** Browse hospitals categorised by medical departments such as Cardiology, Oncology, or Neurology[cite: 34].
* [cite_start]**Cost Estimation & Filtering:** View estimated treatment cost ranges and filter search results by budget to find affordable options[cite: 108, 240].
* [cite_start]**Detailed Hospital Profiles:** Access essential information including location, hospital type (Private/Government), and years of operation[cite: 35, 103, 109].
* [cite_start]**User Authentication:** Secure login and registration system for users to manage their access[cite: 17, 33].
* [cite_start]**Top Doctor Listings:** View names of leading specialists associated with specific treatments[cite: 107].

## 🛠 Technology Stack
[cite_start]The application is built using a standard client-server architecture[cite: 45].

* [cite_start]**Server-Side:** PHP (v7.4+) [cite: 52]
* [cite_start]**Database:** MySQL (MariaDB) [cite: 51]
* [cite_start]**Web Server:** Apache (via XAMPP bundle) [cite: 50]
* [cite_start]**Frontend:** HTML, CSS [cite: 17]
* [cite_start]**Development Tool:** Notepad++ / VS Code [cite: 79]

## 🗄 Database Schema
[cite_start]The project uses a database named `healthcaredb` containing two primary tables[cite: 136]:

1.  **`users`**: Stores user credentials and account details.
    * [cite_start]Columns: `id`, `fullname`, `email`, `password` (hashed), `createdat`[cite: 140].
2.  **`hospitals`**: Stores comprehensive hospital data.
    * [cite_start]Columns: `id`, `hospitalname`, `department`, `disease`, `location`, `topdoctors`, `mincost`, `maxcost`[cite: 144].

## ⚙️ Installation & Setup
[cite_start]This project is designed to run in a local environment using XAMPP[cite: 75].

1.  **Install XAMPP:** Download and install XAMPP for your OS.
2.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/your-username/healthcare-portal.git](https://github.com/your-username/healthcare-portal.git)
    ```
3.  **Move Files:** Copy the project folder into the `htdocs` directory of your XAMPP installation (usually `C:\xampp\htdocs`).
4.  **Database Configuration:**
    * Open **phpMyAdmin** (`http://localhost/phpmyadmin`).
    * [cite_start]Create a new database named `healthcare_db`[cite: 302].
    * Import the provided SQL file (if available) or create the tables as described in the schema section.
5.  **Configure Connection:**
    * [cite_start]Ensure `db_connect.php` has the correct credentials (default user: `root`, password: empty)[cite: 300, 301].
6.  **Run the App:**
    * Start **Apache** and **MySQL** from the XAMPP control panel.
    * Open your browser and visit `http://localhost/healthcare-portal`.

## 🔮 Future Scope
* [cite_start]**Doctor Profiles:** Detailed profiles with qualifications and experience[cite: 252].
* [cite_start]**User Reviews:** Rating system for hospitals and doctors[cite: 253].
* [cite_start]**Geolocation:** GPS integration to find nearby hospitals[cite: 254].
* [cite_start]**Appointment Booking:** Direct booking functionality for patients[cite: 264].

## 👥 Contributors
This project was submitted as a Design Capstone Report by:

* [cite_start]**Jivitesh Barik** (UCSE23029) [cite: 4]
* [cite_start]**Ramandeep Pattnaik** (UCSE23044) [cite: 4]
* [cite_start]**Saptarshi Banerjee** (UCSE23049) [cite: 4]
* [cite_start]**Yogapriya Sahoo** (UCSE23065) [cite: 4]

[cite_start]*Under the supervision of Dr. Pradip Kundu* [cite: 5]

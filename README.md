# HEALTHCARE-FINDER
A centralized web-based platform built with PHP and MySQL to bridge the information gap between patients and healthcare providers. It allows users to search for hospitals by disease, browse medical departments, and compare estimated treatment costs and specialist doctors across major Indian cities.
# Health Care Portal 🏥

**Design Capstone Project | School of Computer Science and Engineering, XIM University**

The **Health Care Portal** is a web-based application designed to bridge the information gap between patients and healthcare providers. In today's fragmented healthcare landscape, finding reliable information about hospitals, specific treatments, and costs can be challenging[cite: 14, 27]. [cite_start]This project aggregates this data into a user-friendly platform, empowering users to make informed decisions about their healthcare.

## 📋 Table of Contents
- [Project Overview]
- [Key Features]
- [Technology Stack]
- [Database Schema]
- [Installation & Setup]
- [Future Scope]

## 🚀 Project Overview
The primary objective of this portal is to create a centralized hub where users can search for hospitals based on specific diseases or medical departments[cite: 15, 31]. [cite_start]The system provides critical details such as hospital location, top doctors, and estimated minimum and maximum treatment costs.

## ✨ Key Features
* **Disease-Based Search:** Users can find relevant hospitals by simply entering a disease name (e.g., "Cancer") in the search bar.
* **Departmental Browsing:** Browse hospitals categorised by medical departments such as Cardiology, Oncology, or Neurology.
* ]**Cost Estimation & Filtering:** View estimated treatment cost ranges and filter search results by budget to find affordable options.
* **Detailed Hospital Profiles:** Access essential information including location, hospital type (Private/Government), and years of operation.
* **User Authentication:** Secure login and registration system for users to manage their access.
* **Top Doctor Listings:** View names of leading specialists associated with specific treatments.

## 🛠 Technology Stack
The application is built using a standard client-server architecture[cite: 45].

* **Server-Side:** PHP (v7.4+) 
* **Database:** MySQL (MariaDB) 
* **Web Server:** Apache (via XAMPP bundle) 
* **Frontend:** HTML, CSS 
* **Development Tool:** Notepad++ / VS Code 

## 🗄 Database Schema
[cite_start]The project uses a database named `healthcaredb` containing two primary tables:

1.  **`users`**: Stores user credentials and account details.
    * Columns: `id`, `fullname`, `email`, `password` (hashed), `createdat`.
2.  **`hospitals`**: Stores comprehensive hospital data.
    * Columns: `id`, `hospitalname`, `department`, `disease`, `location`, `topdoctors`, `mincost`, `maxcost`.

## ⚙️ Installation & Setup
This project is designed to run in a local environment using XAMPP.

1.  **Install XAMPP:** Download and install XAMPP for your OS.
2.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/Ramandeep2321/HEALTHCARE-FINDER.git)
    ```
3.  **Move Files:** Copy the project folder into the `htdocs` directory of your XAMPP installation (usually `C:\xampp\htdocs`).
4.  **Database Configuration:**
    * Open **phpMyAdmin** (`http://localhost/phpmyadmin`).
    * Create a new database named `healthcare_db`.
    * Import the provided SQL file (if available) or create the tables as described in the schema section.
5.  **Configure Connection:**
    * Ensure `db_connect.php` has the correct credentials (default user: `root`, password: empty).
6.  **Run the App:**
    * Start **Apache** and **MySQL** from the XAMPP control panel.
    * Open your browser and visit `http://localhost/healthcare-portal`.

## 🔮 Future Scope
* **Doctor Profiles:** Detailed profiles with qualifications and experience.
* **User Reviews:** Rating system for hospitals and doctors.
* **Geolocation:** GPS integration to find nearby hospitals.
* **Appointment Booking:** Direct booking functionality for patients.

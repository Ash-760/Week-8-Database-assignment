# Week-8-Database-assignment

# Clinic Booking System

## 📋 Project Description

The **Clinic Booking System** is a MySQL-based relational database designed to manage a medical clinic's core data operations. It handles patient registrations, doctor information, specializations, appointment scheduling, and prescription tracking.

This project demonstrates the use of SQL to create a normalized and well-structured relational database using **Primary Keys**, **Foreign Keys**, and constraints to enforce **1-1**, **1-M**, and **M-M** relationships.

---

## 🚀 Features

- Manage doctor and patient records
- Assign specializations to doctors
- Schedule appointments between patients and doctors
- Track appointment status (Scheduled, Completed, Cancelled)
- Issue prescriptions tied to specific appointments

---

## ⚙️ How to Set Up and Run the Project

### Prerequisites

- MySQL Server (e.g., MySQL 8.0+)
- MySQL client or GUI (e.g., MySQL Workbench, phpMyAdmin, or DBeaver)

### Steps

1. **Download or Clone this Project**
    ```bash
    git clone https://github.com/your-username/clinic-booking-system.git
    cd clinic-booking-system
    ```

2. **Open MySQL Workbench or your preferred SQL client.**

3. **Import the SQL Schema**
    - Open the file named `clinic_booking_system.sql`
    - Execute the full script to create tables and constraints

4. **Insert Sample Data**
    - Use the provided `insert_sample_data.sql` or run the sample `INSERT` statements manually to populate the database with test data

---

## 🧱 Files Included

- `clinic_booking_system.sql`: All `CREATE TABLE` statements
- `insert_sample_data.sql`: Sample `INSERT` statements with Kenyan and English names
- `ERD.png`: ER Diagram showing entities and their relationships
- `README.md`: Project documentation

---

## 📧 Author

Built by [Oremo Ashley Achieng]


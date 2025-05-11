--create a database for a clinic booking system
CREATE DATABASE IF NOT EXISTS CLINICBOOKING;


-- Use the database
USE CLINICBOOKING;

-- Doctor Table
CREATE TABLE Doctor (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Specialization Table
CREATE TABLE Specialization (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- Doctor_Specialization (M-M Join Table)
CREATE TABLE Doctor_Specialization (
    doctor_id INT,
    specialization_id INT,
    PRIMARY KEY (doctor_id, specialization_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id) ON DELETE CASCADE,
    FOREIGN KEY (specialization_id) REFERENCES Specialization(specialization_id) ON DELETE CASCADE
);

-- Patient Table
CREATE TABLE Patient (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL
);

-- Appointment Table
CREATE TABLE Appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') NOT NULL DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- Prescription Table (1-1 with Appointment)
CREATE TABLE Prescription (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT UNIQUE NOT NULL,
    medication TEXT NOT NULL,
    instructions TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id) ON DELETE CASCADE
);


-- Insert Doctors
INSERT INTO Doctor (first_name, last_name, email) VALUES
('David', 'Smith', 'david.smith@gmail.com'),
('Wanjiku', 'Mutua', 'wanjiku.mutua@gmail.com');

-- Insert Specializations
INSERT INTO Specialization (name) VALUES
('Cardiology'),
('Dermatology'),
('Pediatrics');

-- Link Doctors with Specializations
INSERT INTO Doctor_Specialization (doctor_id, specialization_id) VALUES
(1, 1),  -- David - Cardiology
(1, 3),  -- David - Pediatrics
(2, 2);  -- Wanjiku - Dermatology

-- Insert Patients
INSERT INTO Patient (first_name, last_name, email, date_of_birth) VALUES
('John', 'Doe', 'john.doe@gmail.com', '1985-05-15'),
('Amina', 'Otieno', 'amina.otieno@gmail.com', '1990-07-22');

-- Insert Appointments
INSERT INTO Appointment (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2025-06-01 10:00:00', 'Scheduled'),
(2, 2, '2025-06-02 14:30:00', 'Scheduled');

-- Insert Prescriptions
INSERT INTO Prescription (appointment_id, medication, instructions) VALUES
(1, 'Ibuprofen 400mg', 'Take one tablet every 8 hours after meals');



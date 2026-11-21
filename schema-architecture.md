# Smart Clinic - Schema & Architecture

## 1. Architecture Overview
Smart Clinic is a 3-layer application:
- Presentation Layer: User Interface for Patients, Doctors, Admin
- Business Logic Layer: Appointment booking, Doctor availability, Prescription management
- Data Access Layer: JDBC / JPA to connect with Database

Flow: User -> Controller -> Service -> Repository -> Database

## 2. Database Schema

### Table: patients
- patient_id INT, PK, Auto Increment
- name VARCHAR(100)
- age INT
- gender VARCHAR(10)
- phone VARCHAR(15)
- email VARCHAR(100)

### Table: doctors
- doctor_id INT, PK, Auto Increment
- name VARCHAR(100)
- specialization VARCHAR(100)
- phone VARCHAR(15)
- email VARCHAR(100)

### Table: appointments
- appointment_id INT, PK, Auto Increment
- patient_id INT, FK -> patients
- doctor_id INT, FK -> doctors
- appointment_date DATE
- status VARCHAR(20)

### Table: prescriptions
- prescription_id INT, PK, Auto Increment
- appointment_id INT, FK -> appointments
- medicine VARCHAR(200)
- dosage VARCHAR(100)
- notes TEXT

## 3. Relationships
- One Patient can have Many Appointments
- One Doctor can have Many Appointments
- One Appointment has One Prescription

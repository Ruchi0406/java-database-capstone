# Smart Clinic - Schema & Architecture

## Section 1: Architecture Summary
Smart Clinic is a web application for managing clinic operations. It uses a 3-layer architecture. The user interacts with the presentation layer through browser. The business logic layer handles appointment booking, doctor availability and prescription rules. The data access layer connects to the database using JDBC/JPA and performs CRUD operations. This separation makes the app easy to maintain and scale.

## Section 2: How Data and Control Move Through the System
1. User opens Smart Clinic app in browser and sends a request
2. Controller receives the request and validates the input
3. Controller calls the Service layer for business logic
4. Service layer checks rules like doctor availability and appointment time
5. Service layer calls the Repository / DAO layer
6. Repository executes SQL query on the database and gets result
7. Result goes back Service -> Controller -> User screen as confirmation

## Section 3: Database Schema

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

## Section 4: Relationships
- One Patient can have Many Appointments
- One Doctor can have Many Appointments
- One Appointment has One Prescription

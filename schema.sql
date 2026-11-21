CREATE DATABASE smart_clinic;
CREATE TABLE doctors (doctor_id SERIAL PRIMARY KEY, name VARCHAR(100), specialization VARCHAR(100), phone VARCHAR(20), email VARCHAR(100));
CREATE TABLE patients (patient_id SERIAL PRIMARY KEY, name VARCHAR(100), age INT, gender VARCHAR(10));
INSERT INTO doctors (name, specialization, phone, email) VALUES ('Dr. Sharma', 'General', '9876543210', 'sharma@clinic.com');

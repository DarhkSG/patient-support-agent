-- Create database if not exists
CREATE DATABASE IF NOT EXISTS patient_support;

USE patient_support;

-- Patients table
CREATE TABLE IF NOT EXISTS patients (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    diagnosis TEXT,
    last_visit DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Example index for faster name search
CREATE INDEX idx_name ON patients(name);

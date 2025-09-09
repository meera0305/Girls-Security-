
-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS girls_security_db;
USE girls_security_db;

-- Step 2: Create Users Table  
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);  

-- Step 3: Create Emergency Alerts Table  
CREATE TABLE IF NOT EXISTS emergency_alerts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    location VARCHAR(255),
    alert_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    alert_type ENUM('button', 'voice', 'iot') DEFAULT 'button',
    status ENUM('active', 'resolved') DEFAULT 'active',
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Step 4: Create Locations Table (for ML or Crime Data)
CREATE TABLE IF NOT EXISTS locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100),
    area VARCHAR(100),
    crime_level ENUM('low', 'medium', 'high'),
    reported_cases INT DEFAULT 0
);

-- Step 5: Insert Sample Users
INSERT INTO users (name, email, phone, password) VALUES
('Meera Chavan', 'meera@example.com', '9876543210', 'secure123');

-- Step 6: Insert Sample Alerts
INSERT INTO emergency_alerts (user_id, location, alert_type, status) VALUES
(1, 'Shivajinagar, Pune', 'button', 'active');

-- Step 7: Insert Sample Location Data
INSERT INTO locations (city, area, crime_level, reported_cases) VALUES
('Pune', 'Shivajinagar', 'medium', 14),
('Mumbai', 'Dadar', 'high', 32),
('Nashik', 'College Road', 'low', 5);

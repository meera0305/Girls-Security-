CREATE DATABASE IF NOT EXISTS raksha_security;
use_security;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(100),
  password VARCHAR(100)
);

CREATE TABLE alerts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  location VARCHAR(255),
  time DATETIME,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

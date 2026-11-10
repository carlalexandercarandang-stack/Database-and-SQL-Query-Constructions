CREATE DATABASE CompanyDB1;
CREATE DATABASE CompanyDB2;

USE CompanyDB1;

CREATE TABLE Profile (
    Profile_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Age INT,
    Department VARCHAR(100),
    Position VARCHAR(100)
);
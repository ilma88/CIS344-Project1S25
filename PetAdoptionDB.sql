CREATE DATABASE IF NOT EXISTS PetAdoptionDB;
USE PetAdoptionDB;

-- Create Table: Pets
CREATE TABLE Pets (
    PetID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Breed VARCHAR(100),
    Age INT,
    Gender ENUM('Male', 'Female'),
    Status ENUM('Available', 'Adopted', 'In Foster Care', 'Under Medical Treatment') DEFAULT 'Available'
);

-- Create Table: Adopters
CREATE TABLE Adopters (
    AdopterID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactDetails VARCHAR(100)
);

-- Create Table: Adoptions
CREATE TABLE Adoptions (
    AdopterID VARCHAR(50),
    PetID VARCHAR(50),
    AdoptionDate DATE,
    PRIMARY KEY (AdopterID, PetID),
    FOREIGN KEY (AdopterID) REFERENCES Adopters(AdopterID) ON DELETE CASCADE,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID) ON DELETE CASCADE
);

-- Create Table: Reservations
CREATE TABLE Reservations (
    AdopterID VARCHAR(50),
    PetID VARCHAR(50),
    ReservationDate DATE,
    PRIMARY KEY (AdopterID, PetID),
    FOREIGN KEY (AdopterID) REFERENCES Adopters(AdopterID) ON DELETE CASCADE,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID) ON DELETE CASCADE
);

-- Create Table: MedicalRecords
CREATE TABLE MedicalRecords (
    RecordID VARCHAR(50) PRIMARY KEY,
    PetID VARCHAR(50),
    TreatmentDetails TEXT,
    DateOfVisit DATE,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID) ON DELETE CASCADE
);

-- Insert sample data into Pets
INSERT INTO Pets (PetID, Name, Breed, Age, Gender)
VALUES
  ('P001', 'Bella', 'Golden Retriever', 3, 'Female'),
  ('P002', 'Max', 'Bulldog', 5, 'Male');

-- Insert sample data into Adopters
INSERT INTO Adopters (AdopterID, Name, ContactDetails)
VALUES
  ('A001', 'John Doe', '555-1234'),
  ('A002', 'Jane Smith', '555-5678');

-- Insert sample data into Adoptions
INSERT INTO Adoptions (AdopterID, PetID, AdoptionDate)
VALUES
  ('A001', 'P001', '2025-03-01');

-- Insert sample data into Reservations
INSERT INTO Reservations (AdopterID, PetID, ReservationDate)
VALUES
  ('A002', 'P002', '2025-03-02');

-- Insert sample data into MedicalRecords
INSERT INTO MedicalRecords (RecordID, PetID, TreatmentDetails, DateOfVisit)
VALUES
  ('MR001', 'P001', 'Routine check-up; no issues.', '2025-02-15');
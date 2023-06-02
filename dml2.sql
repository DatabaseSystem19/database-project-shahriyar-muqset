-- Create the Patients table
CREATE TABLE Patients (
  patient_id INT PRIMARY KEY,
  patient_name VARCHAR(25),
  age INT,
  gender VARCHAR(10),
  admission_date VARCHAR(25),
  diagnosis VARCHAR(25),
  attending_physician VARCHAR(25)
);

-- Create the Vital Signs table
CREATE TABLE VitalSigns (
  vital_sign_id INT PRIMARY KEY,
  patient_id INT,
  temperature FLOAT,
  heart_rate INT,
  blood_pressure VARCHAR(20),
  respiratory_rate INT,
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create the Medications table
CREATE TABLE Medications (
  medication_id INT PRIMARY KEY,
  patient_id INT,
  medication_name VARCHAR(25),
  dosage VARCHAR(25),
  frequency VARCHAR(25),
  start_date VARCHAR(25),
  end_date VARCHAR(25),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create the Lab Results table
CREATE TABLE LabResults (
  result_id INT PRIMARY KEY,
  patient_id INT,
  test_name VARCHAR(25),
  result VARCHAR(25),
  test_date VARCHAR(25),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create the Procedures table
CREATE TABLE Procedures (
  procedure_id INT PRIMARY KEY,
  patient_id INT,
  process_name VARCHAR(25),
  process_date VARCHAR(25),
  notes VARCHAR(25),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);




INSERT INTO Patients (patient_id, patient_name, age, gender, admission_date, diagnosis, attending_physician) VALUES (1, 'John Doe', 45, 'Male', '2023-05-15', 'Pneumonia', 'Dr. Smith');
INSERT INTO Patients (patient_id, patient_name, age, gender, admission_date, diagnosis, attending_physician) VALUES (2, 'Jane Smith', 32, 'Female', '2023-05-18', 'Influenza', 'Dr. Johnson');
INSERT INTO Patients (patient_id, patient_name, age, gender, admission_date, diagnosis, attending_physician) VALUES (3, 'Michael Williams', 60, 'Male', '2023-05-20', 'Hypertension', 'Dr. Brown');
INSERT INTO Patients (patient_id, patient_name, age, gender, admission_date, diagnosis, attending_physician) VALUES (4, 'Emily Davis', 28, 'Female', '2023-05-22', 'Bronchitis', 'Dr. Johnson');
INSERT INTO Patients (patient_id, patient_name, age, gender, admission_date, diagnosis, attending_physician) VALUES (5, 'Robert Johnson', 50, 'Male', '2023-05-25', 'Diabetes', 'Dr. Wilson');

INSERT INTO VitalSigns (vital_sign_id, patient_id, temperature, heart_rate, blood_pressure, respiratory_rate) VALUES (1, 1, 98.6, 72, '120/80', 16);
INSERT INTO VitalSigns (vital_sign_id, patient_id, temperature, heart_rate, blood_pressure, respiratory_rate) VALUES (2, 2, 99.2, 80, '110/70', 18);
INSERT INTO VitalSigns (vital_sign_id, patient_id, temperature, heart_rate, blood_pressure, respiratory_rate) VALUES (3, 3, 98.9, 65, '130/85', 14);
INSERT INTO VitalSigns (vital_sign_id, patient_id, temperature, heart_rate, blood_pressure, respiratory_rate) VALUES (4, 4, 100.1, 75, '125/80', 16);
INSERT INTO VitalSigns (vital_sign_id, patient_id, temperature, heart_rate, blood_pressure, respiratory_rate) VALUES (5, 5, 97.8, 70, '115/75', 15);


INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date) VALUES (1, 1, 'Antibiotic', '500mg', 'Once a day', '2023-05-15', '2023-05-22');
INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date) VALUES (2, 2, 'Painkiller', '10mg', 'Every 6 hours', '2023-05-18', '2023-05-25');
INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date) VALUES (3, 3, 'Blood Pressure Medication', '25mg', 'Twice a day', '2023-05-20', '2023-05-27');
INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date) VALUES (4, 4, 'Cough Syrup', '15ml', 'Every 8 hours', '2023-05-22', '2023-05-29');
INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date) VALUES (5, 5, 'Insulin', '10 units', 'Before meals', '2023-05-25', '2023-06-01');


INSERT INTO LabResults (result_id, patient_id, test_name, result, test_date) VALUES (1, 1, 'Blood Test', 'Normal', '2023-05-16');
INSERT INTO LabResults (result_id, patient_id, test_name, result, test_date) VALUES (2, 2, 'Influenza Test', 'Positive', '2023-05-19');
INSERT INTO LabResults (result_id, patient_id, test_name, result, test_date) VALUES (3, 3, 'Cholesterol Test', 'High', '2023-05-21');
INSERT INTO LabResults (result_id, patient_id, test_name, result, test_date) VALUES (4, 4, 'X-Ray', 'Clear', '2023-05-23');
INSERT INTO LabResults (result_id, patient_id, test_name, result, test_date) VALUES (5, 5, 'Blood Glucose Test', 'Elevated', '2023-05-26');

INSERT INTO Procedures (procedure_id, patient_id, process_name, process_date, notes) VALUES (1, 1, 'Lung Biopsy', '2023-05-17', 'No complications');
INSERT INTO Procedures (procedure_id, patient_id, process_name, process_date, notes) VALUES (2, 2, 'Flu Vaccination', '2023-05-20', 'Mild pain');
INSERT INTO Procedures (procedure_id, patient_id, process_name, process_date, notes) VALUES (3, 3, 'Echocardiogram', '2023-05-22', 'Enlarged left ventricle');
INSERT INTO Procedures (procedure_id, patient_id, process_name, process_date, notes) VALUES (4, 4, 'Bronchoscopy', '2023-05-24', 'Minor irritation');
INSERT INTO Procedures (procedure_id, patient_id, process_name, process_date, notes) VALUES (5, 5, 'Injection', '2023-05-27', 'Patient learned');

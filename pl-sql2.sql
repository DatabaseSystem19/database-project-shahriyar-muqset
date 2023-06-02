DECLARE
  patient_name VARCHAR(25);
  age INT;
  diagnosis VARCHAR(25);
BEGIN
  SELECT patient_name, age, diagnosis INTO patient_name, age, diagnosis
  FROM Patients
  WHERE patient_id = 1;
  
  DBMS_OUTPUT.PUT_LINE('Patient Name: ' || patient_name);
  DBMS_OUTPUT.PUT_LINE('Age: ' || age);
  DBMS_OUTPUT.PUT_LINE('Diagnosis: ' || diagnosis);
END;
/






--Fetching Patient Details
DECLARE
  v_temperature FLOAT;
  v_heart_rate INT;
BEGIN
  v_temperature := 99.5;
  v_heart_rate := 80;
  
  UPDATE VitalSigns
  SET temperature = v_temperature, heart_rate = v_heart_rate
  WHERE vital_sign_id = 1;
  
  DBMS_OUTPUT.PUT_LINE('Vital signs updated successfully.');
END;
/


--Updating Vital Signs
DECLARE
  v_medication_id INT;
  v_patient_id INT;
  v_medication_name VARCHAR(25);
  v_dosage VARCHAR(25);
BEGIN
  v_medication_id := 6;
  v_patient_id := 1;
  v_medication_name := 'Painkiller';
  v_dosage := '10mg';
  
  INSERT INTO Medications (medication_id, patient_id, medication_name, dosage, frequency, start_date, end_date)
  VALUES (v_medication_id, v_patient_id, v_medication_name, v_dosage, 'Every 4 hours', '2023-06-01', '2023-06-08');
  
  DBMS_OUTPUT.PUT_LINE('Medication inserted successfully.');
END;
/



--Inserting Medication
DECLARE
  v_result_id INT;
BEGIN
  v_result_id := 3;
  
  DELETE FROM LabResults
  WHERE result_id = v_result_id;
  
  DBMS_OUTPUT.PUT_LINE('Lab result deleted successfully.');
END;
/




--Deleting Lab Result
DECLARE
  v_patient_id INT;
  v_procedure_count INT;
BEGIN
  v_patient_id := 1;
  
  SELECT COUNT(*) INTO v_procedure_count
  FROM Procedures
  WHERE patient_id = v_patient_id;
  
  DBMS_OUTPUT.PUT_LINE('Number of procedures for Patient ID ' || v_patient_id || ': ' || v_procedure_count);
END;
/

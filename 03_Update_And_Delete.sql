SELECT  p.*
FROM Appointments a
JOIN Patients p ON a.patient_id = p.id
WHERE a.doctor_id = 5;


SELECT m.*
FROM patients p
JOIN Medical_Record m ON m.patient_id = p.id
WHERE p.id = 5;

SELECT d.id, d.first_name, d.last_name, COUNT(a.id) AS total_appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.id = a.doctor_id
GROUP BY d.id, d.first_name, d.last_name;


SELECT d.id, d.first_name, d.last_name, COUNT(dp.patient_id) AS total_patients
FROM Doctors d
LEFT JOIN Doctor_Patient dp ON d.id = dp.doctor_id
GROUP BY d.id, d.first_name, d.last_name;


UPDATE Appointments
SET status='Scheduled'
WHERE id='3';


DELETE Patients
WHERE id= '7';


SELECT d.id, d.first_name, d.last_name, COUNT(dp.patient_id) AS patient_count
FROM Doctors d
JOIN Doctor_Patient dp ON d.id = dp.doctor_id
GROUP BY d.id, d.first_name, d.last_name
HAVING COUNT(dp.patient_id) > 5;



SELECT p.id, p.first_name,p.last_name, COUNT(mr.id) AS diagnosis_count
FROM Patients p
JOIN Medical_Record mr ON p.id = mr.patient_id
GROUP BY p.id, p.first_name,p.first_name
HAVING COUNT(mr.id) > 1;


SELECT 
    DATE_TRUNC('month', appointment_date) AS month,
    COUNT(*) AS total_appointments
FROM Appointments
GROUP BY month
ORDER BY month;


ALTER TABLE Doctors
ADD CONSTRAINT unique_doctor_email UNIQUE (email);


ALTER TABLE Patients
ADD CONSTRAINT unique_patient_email UNIQUE (email);

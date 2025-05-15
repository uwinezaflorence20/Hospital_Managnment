INSERT INTO Doctors (first_name, last_name, speciality, phone_number, email)
VALUES 
('Alice', 'Smith', 'Cardiology', '1234567890', 'alice.smith@hospital.com'),
('Bob', 'Johnson', 'Neurology', '0987654321', 'bob.johnson@hospital.com'),
('Clara', 'Adams', 'Pediatrics', '2223334444', 'clara.adams@hospital.com'),
('David', 'Lee', 'Orthopedics', '5556667777', 'david.lee@hospital.com'),
('Eva', 'Martinez', 'Dermatology', '8889990000', 'eva.martinez@hospital.com');


INSERT INTO Patients (first_name, last_name, date_of_birth, gender, phone_number, email)
VALUES 
('John', 'Doe', '1990-05-15', 'Male', '1112223333', 'john.doe@example.com'),
('Jane', 'Doe', '1985-09-22', 'Female', '4445556666', 'jane.doe@example.com'),
('Mike', 'Ross', '1992-03-11', 'Male', '7778889999', 'mike.ross@example.com'),
('Rachel', 'Zane', '1989-12-01', 'Female', '1231231234', 'rachel.zane@example.com'),
('Tom', 'Holland', '2000-07-04', 'Male', '3213213210', 'tom.holland@example.com');


INSERT INTO Appointments (doctor_id, patient_id, appointment_date, status)
VALUES
(1, 1, '2025-05-15', 'Scheduled'),
(2, 2, '2025-05-16', 'Completed'),
(3, 3, '2025-05-17', 'Canceled'),
(4, 4, '2025-05-18', 'Scheduled'),
(5, 5, '2025-05-19', 'Completed');


INSERT INTO Medical_Record (patient_id, diagnosis, treatment, doctor_id)
VALUES
(1, 'Hypertension', 'Prescribed medication A', 1),
(2, 'Migraine', 'Advised rest and medication B', 2),
(3, 'Asthma', 'Inhaler and monitoring', 3),
(4, 'Fracture', 'Cast and follow-up', 4),
(5, 'Acne', 'Topical treatment', 5);


INSERT INTO Doctor_Patient (doctor_id, patient_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


CREATE TABLE IF NOT EXISTS Doctors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    speciality VARCHAR(200),
    phone_number VARCHAR(200),
    email VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Patients (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    date_of_birth DATE,
	gender VARCHAR(200),
    phone_number VARCHAR(200),
    email VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Appointments (
    id SERIAL PRIMARY KEY,
	doctor_id INT REFERENCES Doctors(id),
	patient_id INT REFERENCES Patients(id),
	appointment_date DATE,
	status VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Medical_Record (
    id SERIAL PRIMARY KEY,
	patient_id INT REFERENCES Patients(id),
	diagnosis VARCHAR(200),
	treatment VARCHAR(200),
	doctor_id INT REFERENCES Doctors(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

//MANY TO MANY

CREATE TABLE IF NOT EXISTS Doctor_Patient (
	patient_id INT REFERENCES Patients(id),
	doctor_id INT REFERENCES Doctors(id),
	PRIMARY KEY (doctor_id,patient_id)
    
);

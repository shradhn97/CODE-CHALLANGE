Create database Q3;
Use Q3;
CREATE TABLE t_doctor(
doctor_id INT(11) ,
doctor_name VARCHAR(25) ,
mobile_no INT(11) ,
email VARCHAR(30) ,
specialization VARCHAR(10) ,
fees INT(7),
PRIMARY KEY (doctor_id)
);
CREATE TABLE t_patient(
patient_id VARCHAR(10) ,
patient_name VARCHAR(30) ,
gender CHAR(2),
ailment VARCHAR(20) ,
doctor_id INT(11) ,
PRIMARY KEY (patient_id),
FOREIGN KEY (doctor_id) REFERENCES t_doctor(doctor_id)
);

CREATE TABLE t_hospital(
available_doctor INT(11),
shift_time VARCHAR(20),
FOREIGN KEY (available_doctor) REFERENCES t_doctor(doctor_id)
);
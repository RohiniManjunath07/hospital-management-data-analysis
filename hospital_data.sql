USE hospital_db;
DROP TABLE IF EXISTS billing;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients(
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    time VARCHAR(20),
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    grand_total DECIMAL(10,2),
    created_at DATETIME,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);


INSERT INTO doctors VALUES
(1, 'Dr. Sneha Rao', 'Cardiology', '9900112233'),
(2, 'Dr. Arun Mehta', 'Neurology', '9811122233'),
(3, 'Dr. Lakshmi Iyer', 'General Medicine', '9887766554'),
(4, 'Dr. Mohan Shetty', 'Orthopedics', '9776655443'),
(5, 'Dr. Priya Kulkarni', 'Dermatology', '9898989898'),
(6, 'Dr. Rohan Deshpande', 'ENT', '9123456789'),
(7, 'Dr. Kavita Jain', 'Gynecology', '9090909090'),
(8, 'Dr. Manish Verma', 'Pediatrics', '9988776655'),
(9, 'Dr. Shweta Pillai', 'Psychiatry', '9812345678'),
(10,'Dr. Harish Gowda', 'Urology', '9789789789');


INSERT INTO patients VALUES
(1, 'Rahul Sharma', 32, 'Male', '9876543210', 'Bengaluru'),
(2, 'Priya Desai', 28, 'Female', '9988776655', 'Mumbai'),
(3, 'Arjun Nair', 45, 'Male', '9123456780', 'Kochi'),
(4, 'Kavya Gowda', 36, 'Female', '9090909090', 'Bengaluru'),
(5, 'Rohit Verma', 52, 'Male', '9812345678', 'Delhi'),
(6, 'Sneha Patil', 29, 'Female', '9000000001', 'Pune'),
(7, 'Vikram Singh', 40, 'Male', '9000000002', 'Hyderabad'),
(8, 'Anjali Menon', 31, 'Female', '9000000003', 'Kochi'),
(9, 'Nikhil Rao', 27, 'Male', '9000000004', 'Chennai'),
(10,'Divya Nair', 34, 'Female', '9000000005', 'Bengaluru'),
(11,'Suraj Gupta', 30, 'Male', '9000000006', 'Delhi'),
(12,'Pooja Sharma', 26, 'Female', '9000000007', 'Mumbai'),
(13,'Karan Patel', 38, 'Male', '9000000008', 'Ahmedabad'),
(14,'Meera Joshi', 44, 'Female', '9000000009', 'Pune'),
(15,'Amit Kumar', 50, 'Male', '9000000010', 'Lucknow'),
(16,'Ritu Sharma', 33, 'Female', '9000000011', 'Jaipur'),
(17,'Sahil Malhotra', 41, 'Male', '9000000012', 'Delhi'),
(18,'Riya Kapoor', 24, 'Female', '9000000013', 'Mumbai'),
(19,'Farhan Ali', 47, 'Male', '9000000014', 'Hyderabad'),
(20,'Tanya Bhatt', 29, 'Female', '9000000015', 'Surat'),
(21,'Dhanush R', 37, 'Male', '9000000016', 'Bengaluru'),
(22,'Shreya Iyer', 28, 'Female', '9000000017', 'Chennai'),
(23,'Lokesh Rao', 35, 'Male', '9000000018', 'Mysuru'),
(24,'Vidya Menon', 42, 'Female', '9000000019', 'Kochi'),
(25,'Imran Khan', 39, 'Male', '9000000020', 'Hyderabad'),
(26,'Pallavi Hegde', 32, 'Female', '9000000021', 'Bengaluru'),
(27,'Arvind Patil', 53, 'Male', '9000000022', 'Kolhapur'),
(28,'Neha Gupta', 30, 'Female', '9000000023', 'Delhi'),
(29,'Roshan Shetty', 45, 'Male', '9000000024', 'Mangalore'),
(30,'Deepa Rao', 27, 'Female', '9000000025', 'Chennai'),
(31,'Sunil Kumar', 48, 'Male', '9000000026', 'Bhopal'),
(32,'Aishwarya Jain', 25, 'Female', '9000000027', 'Indore'),
(33,'Mahesh Verma', 44, 'Male', '9000000028', 'Nagpur'),
(34,'Khushi Agarwal', 22, 'Female', '9000000029', 'Delhi'),
(35,'Ajay Thakur', 29, 'Male', '9000000030', 'Shimla'),
(36,'Geeta Naik', 33, 'Female', '9000000031', 'Goa'),
(37,'Yogesh W', 38, 'Male', '9000000032', 'Bengaluru'),
(38,'Swathi R', 31, 'Female', '9000000033', 'Mysuru'),
(39,'Anup Kulkarni', 46, 'Male', '9000000034', 'Pune'),
(40,'Bhavana Shetty', 34, 'Female', '9000000035', 'Mangalore'),
(41,'Dilip S', 49, 'Male', '9000000036', 'Hyderabad'),
(42,'Monica Paul', 28, 'Female', '9000000037', 'Kochi'),
(43,'Sharath K', 36, 'Male', '9000000038', 'Bengaluru'),
(44,'Anita D', 27, 'Female', '9000000039', 'Mumbai'),
(45,'Sandeep N', 52, 'Male', '9000000040', 'Delhi'),
(46,'Preeti Rao', 29, 'Female', '9000000041', 'Goa'),
(47,'Vishal Shetty', 40, 'Male', '9000000042', 'Udupi'),
(48,'Lavanya S', 26, 'Female', '9000000043', 'Chennai'),
(49,'Harsha V', 37, 'Male', '9000000044', 'Bengaluru'),
(50,'Kritika Sharma', 28, 'Female', '9000000045', 'Pune');


INSERT INTO appointments VALUES
(1, 5, 3, '2025-12-05', '10:30 AM', 'Completed'),
(2, 12, 7, '2025-12-05', '11:45 AM', 'Completed'),
(3, 21, 2, '2025-12-06', '09:15 AM', 'Pending'),
(4, 8, 1, '2025-12-06', '02:00 PM', 'Completed'),
(5, 17, 4, '2025-12-07', '12:00 PM', 'Completed'),
(6, 3, 9, '2025-12-07', '03:30 PM', 'Cancelled'),
(7, 29, 5, '2025-12-08', '10:00 AM', 'Completed'),
(8, 14, 6, '2025-12-08', '01:30 PM', 'Pending'),
(9, 42, 8, '2025-12-09', '11:00 AM', 'Completed'),
(10, 31, 10, '2025-12-09', '04:15 PM', 'Completed'),
(11, 22, 3, '2025-12-10', '09:45 AM', 'Completed'),
(12, 47, 1, '2025-12-10', '01:20 PM', 'Completed'),
(13, 10, 7, '2025-12-11', '10:10 AM', 'Completed'),
(14, 18, 2, '2025-12-11', '12:40 PM', 'Pending'),
(15, 36, 4, '2025-12-12', '02:25 PM', 'Completed'),
(16, 27, 9, '2025-12-12', '03:50 PM', 'Completed'),
(17, 45, 5, '2025-12-13', '11:30 AM', 'Completed'),
(18, 1, 6, '2025-12-13', '01:00 PM', 'Pending'),
(19, 34, 8, '2025-12-14', '09:20 AM', 'Completed'),
(20, 40, 10, '2025-12-15', '03:10 PM', 'Completed');


INSERT INTO billing VALUES
(1, 5, 1, 850.00, '2025-12-05 10:45:00'),
(2, 12, 2, 1200.00, '2025-12-05 12:00:00'),

(3, 8, 4, 650.00, '2025-12-06 02:20:00'),

(4, 17, 5, 900.00, '2025-12-07 12:20:00'),

(5, 29, 7, 700.00, '2025-12-08 10:20:00'),

(6, 42, 9, 550.00, '2025-12-09 11:20:00'),
(7, 31, 10, 1300.00, '2025-12-09 04:30:00'),

(8, 22, 11, 780.00, '2025-12-10 10:00:00'),
(9, 47, 12, 950.00, '2025-12-10 01:45:00'),

(10, 10, 13, 600.00, '2025-12-11 10:25:00'),

(11, 36, 15, 1100.00, '2025-12-12 02:40:00'),
(12, 27, 16, 500.00, '2025-12-12 04:10:00'),

(13, 45, 17, 750.00, '2025-12-13 11:50:00'),

(14, 34, 19, 820.00, '2025-12-14 09:40:00'),
(15, 40, 20, 950.00, '2025-12-15 03:30:00');

Use hospital_db;
ALTER TABLE billing
ADD COLUMN discount_amount DECIMAL(10,2) DEFAULT 0.00,
ADD COLUMN refund_amount DECIMAL(10,2) DEFAULT 0.00;

Use hospital_db;
UPDATE billing SET discount_amount = 50.00 WHERE bill_id = 1;
UPDATE billing SET discount_amount = 100.00 WHERE bill_id = 2; 
UPDATE billing SET discount_amount = 25.00 WHERE bill_id = 4;
UPDATE billing SET discount_amount = 80.00 WHERE bill_id = 7;
UPDATE billing SET discount_amount = 120.00 WHERE bill_id = 11;
UPDATE billing SET discount_amount = 75.00 WHERE bill_id = 13;
UPDATE billing SET refund_amount = 50.00 WHERE bill_id = 3;  
UPDATE billing SET refund_amount = 100.00 WHERE bill_id = 10; 
UPDATE billing SET refund_amount = 30.00 WHERE bill_id = 14;  
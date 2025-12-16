# Hospital Database Analysis using Python & MySQL

This mini project demonstrates how to integrate **Python (Pandas)** with **MySQL** to perform real-world data analysis on a hospital management database.  
The database is created and managed using **MySQL Workbench**, while data querying and analysis are done using **VS Code**.

---

## 📌 Project Overview

- Designed a relational **Hospital Database** with Patients, Doctors, Appointments, and Billing tables
- Inserted realistic dummy data for analysis
- Connected MySQL database to Python using `mysql-connector`
- Used **Pandas** to execute SQL queries and perform aggregations
- Demonstrated how updates made via Python reflect instantly in MySQL Workbench

---

## 🛠️ Technologies Used

- **Python**
- **Pandas**
- **MySQL**
- **MySQL Workbench**
- **VS Code**

---

## 🗂️ Database Schema

### Tables:
- `patients`
- `doctors`
- `appointments`
- `billing`

### Relationships:
- Patients ↔ Appointments (One-to-Many)
- Doctors ↔ Appointments (One-to-Many)
- Appointments ↔ Billing (One-to-One)

---

## 📊 Analysis Performed

Using Pandas and SQL queries:
- Total amount paid by patients
- Total refund amount issued
- Total discount given
- Average discount applied

These metrics are fetched directly from the MySQL database using Python.

---

## 📁 Project Structure
```text
hospital-database-analysis/
│
├── hospital_data.sql    # Database schema, table creation, inserts, and updates
├── pandas_read.py       # Python script for MySQL data analysis
```

---

## 🔄 Live Database Connection

- The database is hosted in MySQL
- Any updates made through **VS Code (Python)** are instantly reflected in **MySQL Workbench**
- Demonstrates real-time database interaction

---

## 🚀 How to Run

1. Import `hospital_data.sql` into MySQL Workbench
2. Update MySQL credentials in `pandas_read.py`
3. Run the Python script:
   python pandas_read.py


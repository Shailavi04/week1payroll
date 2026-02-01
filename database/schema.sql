CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    description VARCHAR(100)
);

CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    company_email VARCHAR(100),
    contact_number VARCHAR(15),
    address TEXT
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department_id INT,
    client_id INT,
    salary DECIMAL(10,2),
    role VARCHAR(20),   -- HR / Employee
    joining_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    employee_id INT,
    date DATE,
    status VARCHAR(10),  -- Present / Absent / Leave
    check_in_time TIME,
    check_out_time TIME,

    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE payroll (
    payroll_id SERIAL PRIMARY KEY,
    employee_id INT,
    month VARCHAR(15),
    year INT,
    basic_salary DECIMAL(10,2),
    deductions DECIMAL(10,2),
    bonus DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    generated_date DATE,

    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

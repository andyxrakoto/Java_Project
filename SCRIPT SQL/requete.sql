CREATE DATABASE entreprise;

\c entreprise

CREATE TABLE IF NOT EXISTS Employees (
    id_employee SERIAL PRIMARY KEY,
    first_name VARCHAR(150),    
    last_name VARCHAR(150),
    position VARCHAR(50),
    hire_date DATE,
    salary float,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id_department)
);


CREATE TABLE IF NOT EXISTS Departments (
    id_department SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Leaves (
    id_leave SERIAL PRIMARY KEY,
    employee_id INT,
    start_date DATE,
    end_date DATE,
    reason VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES Employees(id_employee)
);


CREATE TABLE IF NOT EXISTS Salaries (
    id_salary SERIAL PRIMARY KEY,
    employee_id INT,
    amount float,
    payment_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(id_employee)
);


CREATE TABLE IF NOT EXISTS Tasks (
    id_task SERIAL PRIMARY KEY,
    employee_id INT,
    description VARCHAR(200),
    assignment_date DATE,
    due_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES Employees(id_employee)
);
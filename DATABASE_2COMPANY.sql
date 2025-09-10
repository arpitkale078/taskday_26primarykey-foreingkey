CREATE TABLE Employees (
    employee_id serial PRIMARY KEY,
    name VARCHAR,
    position VARCHAR,
    salary DECIMAL
);

Select * from Employees

INSERT INTO Employees (name, position, salary) VALUES
('John Doe', 'Manager', 75000),
('Jane Smith', 'Engineer', 65000),
('Alice Brown', 'Technician', 55000),
('Bob White', 'HR', 50000),
('Charlie Black', 'Engineer', 60000),
('David Green', 'Manager', 80000),
('Eva Blue', 'Technician', 57000),
('Frank Grey', 'Engineer', 63000),
('Grace Red', 'HR', 52000),
('Hannah Yellow', 'Engineer', 61000);




CREATE TABLE Departments (
    department_id serial PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments (department_name) VALUES
('Engineering'),
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('Research'),
('IT Support'),
('Administration'),
('Production'),
('Logistics');

select * from departments


CREATE TABLE Assignments (
    assignment_id serial PRIMARY KEY,
    employee_id INT,
    department_id INT,
    assigned_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Assignments (employee_id, department_id, assigned_date) VALUES
(1, 1, '2025-03-10'),
(2, 1, '2025-03-12'),
(3, 2, '2025-03-15'),
(4, 3, '2025-03-20'),
(5, 1, '2025-03-25'),
(6, 2, '2025-03-28'),
(7, 1, '2025-04-01'),
(8, 3, '2025-04-05'),
(9, 2, '2025-04-10'),
(10, 1, '2025-04-15');

select * from Assignments

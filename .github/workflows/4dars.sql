CREATE TABLE colors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    model VARCHAR(100) NOT NULL,
    color_id INT REFERENCES colors(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO colors (name) VALUES ('Red'), ('Blue'), ('Green'), ('Black'), ('White');

INSERT INTO cars (model, color_id) VALUES ('Toyota Corolla', 1), ('Honda Civic', 2);

INSERT INTO employees (full_name, position, salary) VALUES
('shohrux', 'Manager', 5000),
('shahzod', 'Salesperson', 3000);

SELECT * FROM employees;

SELECT * FROM employees WHERE id = 1;

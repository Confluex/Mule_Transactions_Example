CREATE TABLE IF NOT EXISTS employees(
      emp_no INT NOT NULL,
      birth_date DATE NOT NULL,
      first_name VARCHAR(14) NOT NULL,
      last_name VARCHAR(16) NOT NULL,
      gender VARCHAR(1) NOT NULL,
      hire_date DATE NOT NULL,
      PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS salary_history(
      emp_no INT NOT NULL,
      salary INT NOT NULL,
      from_date DATE NOT NULL,
      to_date DATE NOT NULL,
      PRIMARY KEY (emp_no,from_date)
);

CREATE TABLE IF NOT EXISTS employees(
      emp_no INT NOT NULL AUTO_INCREMENT,
      birth_date DATE NOT NULL,
      first_name VARCHAR(14) NOT NULL,
      last_name VARCHAR(16) NOT NULL,
      gender VARCHAR(1) NOT NULL,
      hire_date DATE NOT NULL,
      PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS salary_history(
      salary_id INT NOT NULL AUTO_INCREMENT,
      emp_no INT NOT NULL,
      salary INT NOT NULL,
      from_date DATE NOT NULL,
      to_date DATE NOT NULL,
      PRIMARY KEY (salary_id),
      FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
      VALUES (10001, '1973-09-02', 'George', 'Johnson', 'M', '2012-06-26');

INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,1,85097,'2014-06-22','2015-06-22');
INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,2,85112,'2012-06-26','2014-06-22');
INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,3,88958,'2015-06-22','9999-01-01');
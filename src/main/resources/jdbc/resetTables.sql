TRUNCATE TABLE employees;
INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
	VALUES (10001, '1973-09-02', 'George', 'Johnson', 'M', '2012-06-26');

TRUNCATE TABLE salary_history;
INSERT INTO salary_history(emp_no,salary,from_date,to_date)
	VALUES(10001,85112,'2012-06-26','2014-06-22');
INSERT INTO salary_history(emp_no,salary,from_date,to_date)
	VALUES(10001,85097,'2014-06-22','2015-06-22');
INSERT INTO salary_history(emp_no,salary,from_date,to_date)
	VALUES(10001,88958,'2015-06-22','9999-01-01');

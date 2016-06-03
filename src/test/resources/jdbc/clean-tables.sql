SET REFERENTIAL_INTEGRITY FALSE;

TRUNCATE TABLE salary_history;
TRUNCATE TABLE employees;

SET REFERENTIAL_INTEGRITY TRUE;

ALTER TABLE employees ALTER COLUMN emp_no RESTART WITH 1;
ALTER TABLE salary_history ALTER COLUMN salary_id RESTART WITH 1;

INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
      VALUES (10001, '1973-09-02', 'George', 'Johnson', 'M', '2012-06-26');

INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,1,85097,'2014-06-22','2015-06-22');
INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,2,85112,'2012-06-26','2014-06-22');
INSERT INTO salary_history(emp_no, salary_id, salary,from_date,to_date)
      VALUES(10001,3,88958,'2015-06-22','9999-01-01');
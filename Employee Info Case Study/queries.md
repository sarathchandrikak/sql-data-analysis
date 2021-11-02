1. Select the information from the "dept_no" column of the "departments" table. Select all data from the "departments" table.
2. Select all people from the "employees" table whose first name is "Elvis".
3. Retrieve a list with all female employees whose first name is Kellie.
4. Retrieve a list with all employees whose first name is either Kellie or Aruna.
5. Retrieve a list with all female employees whose first name is either Kellie or Aruna.
6. Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.
7. Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.
8. Select the data about all individuals, whose first name starts with "Mark", specify that the name can be succeeded by any sequence of characters.
9. Retrieve a list with all employees who have been hired in the year 2000.
10. Retrieve a list with all employees whose employee number is written with 5 characters, and starts with "1000".
11. Extract all individuals from the "employees" table whose first name contains "Jack".
12. Extract list containing the names of employees that do not contain "Jack".
13. Select all the information from the "salaries" table regarding contracts from 66,000 to 70,000 dollars per year.
14. Retrieve a list with all individuals whose employee number is not between "10004" and "10012".
15. Select the names of all departments with numbers between "d003" and "d006".
16. Select the names of all departments whose department number value is not null.
17. Retrieve a list with data about all female employees who were hired in the year 2000 or after.
18. Extract a list with all employees' salaries higher than $150,000 per annum.
19. Obtain a list with all different "hire dates" from the "employees" table.
20. How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
21. How many managers do we have in the “employees” database?
22. Select all data from the "employees" table, ordering it by "hire date" in descending order.
23. Write a query that obtains two columns. The first column must contain annual salaries higher than 80,000 dollars. 
    The second column, renamed to "emps_with_same_salary", must show the number of employees contracted to that salary. Lastly, sort the output by the first column.
24. Select all employees whose average salary is higher than $120,000 per annum.
25. Select the first 100 rows from the 'dept_emp' table.
26. Task 1:
    a. Select ten records from the “titles” table to get a better idea about its content.
    b. Then, in the same table, insert information about employee number 999903. State that he/she is a “Senior Engineer”, who has started working in this position on October 1st, 1997.
    c. At the end, sort the records from the “titles” table in descending order to check if you have successfully inserted the new record.
27. Task 2:
    a. Insert information about the individual with employee number 999903 into the “dept_emp” table. 
    b. He/She is working for department number 5, and has started work on October 1st, 1997; her/his contract is for an indefinite period of time.
28. Create a new department called "Business Analysis". Register it under number "d010".
29. Change the "Business Analysis" department name to "Data Analysis".
30. Remove the department number 10 record from the "departments" table.
31. How many departments are there in the "employees" database?


    





```sql
  select dept_no from departments;
  select * from employees where first_name = "Elvis";
  select first_name, last_name from employees where first_name = "Kellie" and gender="F";
  select first_name, last_name from employees where first_name = "Kellie" or first_name = "Aruna";
  select first_name, last_name from employees where gender = 'F' and (first_name = "Kellie" or first_name = "Aruna");
  select first_name, last_name from employees where first_name IN ("Denis", "Elvis");
  select * from employees where first_name NOT IN ("John", "Mark", "Jacob");
  select * from employees where first_name like "Mark%";
  select * from employees where hire_date like ("%2000%");
  select * from employees where emp_no like "1000_";
  select * from employees where first_name like "Jack%";
  select * from employees where fist_name not like "%Jack%";
  select * from salaries where salary BETWEEN 60000 AND 70000;
  select * from employees where emp_no BETWEEN 10004 and 10012;
  select dept_name from departments where dept_no BETWEEN "d003" and "d006";
  select dept_name from departments where dept_no is not null;
  select * from employees where gender = 'F' and hire_date > "2000-01-01";
  select * from salaries where salary > 150000; 
  select DISTINCT (hire_date) from Employees;
  select count(*) from salaries where salary >= 100000;
  select count(*) from dept_manager;
  select * from employees order by hire_date DESC;
  select salary, count(salary) as emps_with_same_salary from salaries group by salary having salary > 80000 Order by salary;
  select * from dempt_emp limit 100;
  insert into employees values (999903, "1977-09-14", "Johnathan", "Creek", "M", "1999-01-01"); 
  insert into titles values (999903, "Senior Engineer", "1997-10-01", "9999-01-01");
  select * from titles order by from_date DESC;
  insert into dept_emp values (999903, "d005", "1991-10-01", "9999-01-01");  
  insert into departments values ("d010", "Business Analysis");
  update departments set dept_name = "Data Analysis" where dept_no = "d010";
  delete from departments where dept_no = "d010";


  
```

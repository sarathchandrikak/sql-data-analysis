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
```

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
32. What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?
33. Which is the lowest employee number in the database?
34. Which is the highest employee number in the database?
35. What is the average annual salary paid to employees who started after the 1st of January 1997?
36. Round the average amount of money spent on salaries for all contracts that started after the 1st of January 1997 to a precision of cents.
37. Select the department number and name from the ‘departments_dup’ table and add a third column where you name the department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.
38. Modify the code obtained from the previous question in the following way. Apply the IFNULL() function to the values from the first and second column, so that ‘N/A’ is displayed whenever a department number has no value, and ‘Department name not provided’ is shown if there is no value for ‘dept_name’.
39. Extract a list containing information about all managers' employee number, first and last name, department number, and hire date.
40. Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. 
41. Select the first and last name, the hire date, and the job title of all employees whose first name is "Margareta" and have the last name "Markovitch".
42. Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
43. How many male and how many female managers do we have in the "employees" database?
44. Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.
45. Select the entire information for all employees whose job title is "Assistant Engineer".



```sql
  1. select dept_no from departments;
  2. select * from employees where first_name = "Elvis";
  3. select first_name, last_name from employees where first_name = "Kellie" and gender="F";
  4. select first_name, last_name from employees where first_name = "Kellie" or first_name = "Aruna";
  5. select 
        first_name, last_name from employees 
        where gender = 'F' and (first_name = "Kellie" or first_name = "Aruna");
  6. select first_name, last_name from employees where first_name IN ("Denis", "Elvis");
  7. select * from employees where first_name NOT IN ("John", "Mark", "Jacob");
  8. select * from employees where first_name like "Mark%";
  9. select * from employees where hire_date like ("%2000%");
  10. select * from employees where emp_no like "1000_";
  11. select * from employees where first_name like "Jack%";
  12. select * from employees where fist_name not like "%Jack%";
  13. select * from salaries where salary BETWEEN 60000 AND 70000;
  14. select * from employees where emp_no BETWEEN 10004 and 10012;
  15. select dept_name from departments where dept_no BETWEEN "d003" and "d006";
  16. select dept_name from departments where dept_no is not null;
  17. select * from employees where gender = 'F' and hire_date > "2000-01-01";
  18. select * from salaries where salary > 150000; 
  19. select DISTINCT (hire_date) from Employees;
  20. select count(*) from salaries where salary >= 100000;
  21. select count(*) from dept_manager;
  22. select * from employees order by hire_date DESC;
  23. select 
        salary, count(salary) as emps_with_same_salary 
        from salaries 
        group by salary having salary > 80000 
        Order by salary;
  24. select * from dempt_emp limit 100;
  25. insert into employees values (999903, "1977-09-14", "Johnathan", "Creek", "M", "1999-01-01"); 
  26. insert into titles values (999903, "Senior Engineer", "1997-10-01", "9999-01-01");
  27. select * from titles order by from_date DESC;
  28. insert into dept_emp values (999903, "d005", "1991-10-01", "9999-01-01");  
  29. insert into departments values ("d010", "Business Analysis");
  30. update departments set dept_name = "Data Analysis" where dept_no = "d010";
  31. delete from departments where dept_no = "d010";
  32. select count(distinct dept_no) from dept_emp;
  33. select sum(salary) from salaries where from_date > "1997-01-01";
  34. select emp_no from employees order by emp_no limit 1;
  35. select emp_no from employees order by emp_no desc limit 1;
  36. select avg(salary) from salaries where from_date > "1997-01-01";
  37. select round(avg(salary),2) from salaries where from_date > "1997-01-01";
  38. select 
        dept_no, dept_name, coalesce(dept_no, dept_name) as dept_info 
        from departments_dup 
        order by dept_no asc;
  39. select 
        IFNULL(dept_no, 'NA') as dept_no, 
        IFNULL(dept_name, "Department name not provided") as dept_name, 
        COALESCE(dept_no, dept_name) as dept_info 
      from departments_dup;
  40. select 
        e.first_name, e.last_name, e.hire_date, e.emp_no, d.dept_no 
        from employees as e 
        inner join 
        dept_manager as d 
        on e.emp_no = d.emp_no;
  41. select *
        from employees as e 
        left join 
        dept_manager as d 
        on e.emp_no = d. emp_no 
        where 
        e.last_name = "Markovitch" 
        order by d.dept_no DESC, e.emp_no;
  42. select 
        e.first_name, e.last_name, e.hire_date, t.title 
        from employees as e 
        left join 
        titles as t 
        on e.emp_no = t.emp_no 
        where e.first_name = "Margareta" and  e.last_name = "Markovitch";
  43. select 
        e.gender, count(d.emp_no) 
        from employees as e 
        inner join 
        dept_manager as d 
        on e.emp_no = d.emp_no 
        group by e.gender;
  44. select * 
        from employees 
        where (hire_date between "1990-01-01" and "1995-01-01") and emp_no in(select emp_no from dept_manager); 
  45. select * 
        from employees e 
        where 
        exists 
            ( 
                select * 
                from titles t 
                where t.emp_no = e.emp_no 
                and 
                title="Assistant Engineer"
             )
        ; 
  
```

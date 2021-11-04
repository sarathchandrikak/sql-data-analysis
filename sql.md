Data Definition Language (DDL) - A set of statements that allow user to define or modify data structures and objects such as tables 

    * Create
    * Alter 
    * Drop
    * Rename
    * Truncate
    
Data Manipulation Language (DML) - A set of statements that allow us to manipulate the data in the tables of a database.

    * Select
    * Insert
    * Update
    * Delete
    
Data Control Language (DCL) - A set of statements that allow userts to grant permisions to users.

    * Grant
    * Revoke

Transaction Control Languate (TCL) - A set of statements that allow users to save and restore the state of the database. It helps to provide updated information for everyone using the table.

    * Commit 
    * Rollback 
 
Key Words or Reserve words: They cannot be used to create tables. 

Relational Schema

    It is defined as an existing idea of how database can be designed. 

Primary Key 
    
    A column or set of columns whose value exists and is unique for every record in the table is called Primary Key. 
    Each table has only one primary key. It cannot be a null value. 

Foreign Key

    A column or set of columns that helps to idefity the relationship between multiple tables. 

Unique and Null Constraints

    Unique Key constraint should contain values and they should be unique. 
    Null key constaint states the column can have null values.
    Both constraints can be used on multiple columns. 
    
Relationships - It tells how much of the data from a Foreign key field can be seen in the primary key column of the table the data is related to and vice versa.  

    * One to Many Relationship
    * One to One Relationship
    * Many to Many Relationship
    
# Database Creation and Queries

Create Database - A new Database can be created using one of the two queries. 

    ```sql
    Create Database if not exists Sales; 
    Create Schema if not exists Sales;
    ```
    
Data Type - Each and every column in the database has specific datatype. Datatype and size of the field is defined using the following
* Length - It is a measure used to indicate how many symbols certain datatype has
* Size - It indicates the memory space used by a data type and is measured in bytes. 
* Storage - It is the physical space in the computers drive memory where the data is being saved or stored. 

Different data types 
* Character - Char(10) - Datatype is fixed. For a name with 3 letters also takes 10 as the memory space. - Maximum memory - 255
* Variable Character - VarChar(10) - Datatype is variable. For a name with 3 characters it takes 3 bytes. - Maxiumum memory - 65535
* Enumerator - Enum - Takes the size based on the number of members of the set. 
* Numeric Data Types - Integer, Fixed Point, Floating Point 
* Fixed point data type
    * They represent exact values
    * Decimal(5, 3) - A decimal number with precision 5 and scale 3. Eg: 10.523. If only one digit is specified, it is treated as precision.
    * Numeric 
* Floating Point data type 
    * They are used for approximate values only
    * Aims to balance between the range and precision
    * Float 
    * Double
* Main difference between the fixed and floating point is in the way the value is represented in the memory of the computer. 
* Date - Used to represent the date 
* DateTime - Date combined with Time. Represents the date shown on the calendar and time shown on clock.
* Timestamp - Used for a well defined exact point in time. It provides easy access to find the difference between two timestamps.
* char, varchar, date, datetime and timestamp must be written within quotes. 
* BLOB - Binary large object. Refers to a file of binary data. It gets involved when saving files to a record.

### Creating a table 

```sql 
    create table sales(
          purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
          Date_of_purchase DATE NOT NULL,
          customer_id INT,
          item_code varchar(10) NOT NULL
    );
```
Auto_Increment 
        
     Frees us from having to insert all purchase numbers manually through the insert command at a later stage. 
     Assigns 1 to the first record of the table and automatically increments by 1 for every subsequent row. 
     
### MySQL Constraints

Constraints - Specific rules or limits that defined on the table. Role of constraints is to outline the existing relationships between different tables in the database.

  * Primary Key Constraint 
  * Foreign Key Constraint 
  * Unique Key Constraint 
      * Unique key in MySQL has same role to indexes. 
      * Index is an organizational unit that helps to retrieve data easily.
      * To remove a unique key from the table 

      ```sql
      Alter table tablename drop INDEX unique_field_id;
      Alter table customers drop INDEX email_address;
      ```
  * Default Key Constraint
  * Not Null Constraint 

### IfNULL 

```sql 
      IFNULL(Expression1, Expression2) 
```

It returns the first of the two indicated values if the data value found in table is not null, and returns the second value if there is a null value. 
Prints the return value in the column of the output. 

```sql
   select dept_no, IFNULL(dept_name, 'Department name not provided') as dept_name FROM departments_dup;
```
### COALESCE

```sql 
      COALESCE(Expression1, Expression2, ..., ExpressionN)
```

Its more like a IF NULL function with more than 2 parameters.\
It can also have single arguemt.\


Both IF NULL and COALESCE do not change the database. They merely create an output where certain values appear in place of null values. 

### Joins

Used to combine multiple tables.
* Inner Join
* Left Join
* Right Join
* Cross Join

### Union all and Union

Union all is used to combine few select statements in a single output.\
It is more like a tool that unifies multiple tables.

```sql 
      Select N columns from table 1 UNION ALL select N columns from table 2.
```
  * In this same columns from each table must be selected. 
  * These columns should have same name, same order and should contain related data types.
      
Union and Union all has same usage but union displays only the distinct values from the tables.\
Union uses more computational power and storage space.\
If better results needed opt for union and if optimization needed opt for union all.

### SQL Views

A view is a virtual table whose contents are obtained from an existing table.

```sql 
      create or replace view v_view_name as select columns from tablename. 
```
### Stored Routines

An SQL statement or a set of SQL statements that can be stored on the database server.\
Whenever a user needs to run the query, they can call, reference or invoke a routine.\
Two types of stored routines 
   * Stored Procedures
   * Functions

Instead of ";" a delimiter is used while creating stored procedures. Following is the syntax for creating a stored procedure. 

```sql
      Delimiter $$
      create procedure procedure_name()
      begin
      select * from table_name 
      end $$ 
      Delimiter;
```
It is exectured as follows 
   
     call databasename.stored_procedure(); 
     or
     call stored_procedures();
     
### Stored Procedure with an input paramter

They can take input values and then use it in the query or queries written in the body of procedure.\
This value is represented by the IN parameter.

```sql
      Delimiter $$
      create procedure procedure_name(in parameter)
      begin
      select * from table_name
      end $$
      delimiter;
```

### Stored procedure with an output parameter

It takes input and output parameters and provides results. 
```sql
   Delimiter $$
   create procedure procedure_name (in parameter, out parameter)
   begin
   select * from table_name
   end $$
   delimiter;
```

### SQL Variables

In stored procedures input given is considered as a parameter and output is the variable.\
It is created as follows.

      set @avg_salary = 0;
Call the stored procedure with output parameter and pass the defined variable as output parameter. 


### User defined functions

In functions there are no output parameters and all are the input parameters. So, no need to include 'in' keyword. 

```sql
   
   Delimiter $$
   Create Function Function_Name (parameter datatype) Returns datatype
   begin
   Declare variable_name datatype
   select ... => Same as select statement as of stored procedures
   return variable_name
   end $$
   Delimiter;
```
Functions cannot be called. Instead a select statement is used to select the function. 




   

   


     



    

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
     



    

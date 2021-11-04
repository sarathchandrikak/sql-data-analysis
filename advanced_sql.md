# Advanced SQL Topics

## Types of SQL Variables: 
  
   * Local - Declare keyword is used in creating Local variable. 
   * Session - Set is the keyword used in creating session variable, with '@' as starting symbol.
   * Global - Set global or Set @@global.varname is used in creating a global variable. 

## User Definied or System Variables

  * User-Defined - Variables that can be set by the user manually. It can be categorized into Local and Session variables. 
  * System - Variables that are pre defined on our system - MySQL Server. These can be categorized into Global and Session variables. 

## Trigger
  
  * A type of stored program associated with the table that will be activated automatically once a specific event occurs. 
  * The event must be represented by one of the following three DML statements. 
      * Insert
      * Update
      * Delete

A trigger is a MySQL object that can trigger a specific action or calculation before or after an Insert, Update, Delete has been executed. 

## Index

 * Index of a table functions like index of a book.
 * It can be used to increase the speed of searches related to table.
 * Composite Indexes - Can be applied to multiple columns.
 * Primary and Unique keys are also MySQL indexes. 

## Case

Used when certain value needs o be displayed with other. Case, When, Then are the keywords used in a case statement.

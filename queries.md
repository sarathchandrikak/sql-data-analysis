# Sample Queries for reference

1. ISNULL() - Returns the 2nd parameter if 1st parameter is null. Maximum of 2 parameters.
  
    `SELECT X, ISNULL(X, Y) FROM TABLE.`
    
2. COALESCE() - Same as ISNULL() but can specify multiple parameters. 

    `SELECT X, COALESCE(X, Y, Z) FROM TABLE`
    
3. DATEADD() - To add or subtract date values. 

    `SELECT DATEADD(DD, 30, '2020-06-21')`
  
    SYNTAX: `DATEADD(DATEPART, Number, Date)`\
    DATEPART: DD/MM/YY/HH part of the date

4. DATEDIFF() - Obtain difference between two datetime values.  

    `SELECT DATEDIFF(DD, '2019-05-1', '2020-02-03')
    
      SYNTAX: 'DATEDIFF(DATEPART, STARTDATE, ENDDATE)
5. ROUND and TRUNCATE are two types of functions used to reduce the number of decimal places. 
  
    * ROUND(Number, Decimal_Places) - Rounds up to specified number of decimal places. ROUND(13.66, 0) -> 14.0
    * ROUND(Number, Decimal_Places, Digits, 1) - Truncates the number. ROUND(13.66, 0, 1) -> 13
    * Round considers the decimal places while truncate ignores the decimal places. 

6. Loops in SQL 

        DECLARE @var = 1 
    
        While @var < 10 
        
          BEGIN 
            
             SET @var = @var + 2
             
          END
          
        SELECT @var 
    
 7. CTE's are derived tables.

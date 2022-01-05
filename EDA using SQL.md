# Exploratory Data Analysis using SQL

1. Count the number of rows and columns. 
2. Count( * ) gives count of total number of rows in the table and count (column_name) gives count of not null values in that particular column. This helps us to find the number of missing rows in that particular column. 
3. COALESCE and NOT NULL functions to fetch appropriate values in case of NULL values in that table.
4. Exploring each and every column constraints. Even Primary and Foreign key constraint expolaration is much needed.
5. Foreign Key, Primary Key, Not Null, Unique, Check constraints are the different constraints in a column.
6. CAST function changes the datatype and display with new datatype in that particular query. 
```sql 
    select CAST(value as new_datatype) or select value::new_datatype;
```
7. Explore range and summary statistics of a column. 


## Exploring Distributions and data

1. Binning or grouping values might help to give a more detailed description. Following are the different ways to do binning or grouping.
  
    * Truncate 
       * It reduces the precision of a number. It replaces the smallest numeric places, i.e the right most digits with zeros. 
       * Trunc with positive number replaces with zeroes from right after the decimal place.
       * Trunc with negative number replaces with zeroes from right before the decumal place. 
       * Using Trunc negative number as 1 place, bins can be formed and count of values can be taken. 
   * Generate Series
       * To group by values of 5 and 20, generate series function helps. 
       
       ```sql 
          select generate_series(start, end, step);
       ```
2. Correlation is measured to explore two columns. It range from -1 to +1. 
  ```sql 
      select corr(column_1, column_2) from table;
  ```
3. To compute median of data, percentile function is used. 
  
  ```sql 
      select percentile_disc(percentile) within group (order by column_name) from table;
      select percentile_cont(percentile) within group (order by column_name) from table;
  ```

## Temporary table

  Temporary tables can be useful to store data for future reference or for breaking complicated queries into smaller pieces. 
  
```sql
    Create temp table new_tablename as select column_1, column_2 from table;
```

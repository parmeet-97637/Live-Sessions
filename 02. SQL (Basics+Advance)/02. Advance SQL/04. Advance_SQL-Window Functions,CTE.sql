use test;
select * from employee;

-- Find the average salary within each department
select Name, Age, Department, Salary,
avg(salary) OVER(partition by department) as 'Avg_salary'
from employee;

-- find the max salary, min slary and count of employees, total salary in each department
select e.*,
min(salary) OVER(partition by department) as 'Min_salary',
max(salary) OVER(partition by department) as 'Max Salary',
count(Name) OVER(partition by department) as 'No. of employees',
sum(salary) OVER(partition by department) as 'Total Salary'
from employee e;

-- Window Functions - Rank and Dense Rank
-- find the rank and percent_rank of employees within each department on the basis of salary
select e.*,
rank() OVER(partition by department order by salary desc) as `Rank`,
dense_rank() Over(partition by department order by salary desc) as `Dense_rank`,
percent_rank() OVER(partition by department order by salary desc) as `percent_rank`
from employee e;

-- find the row number with and without partition
select e.*,
row_number() OVER() as 'row_number_without_partition',
row_number() OVER(partition by department) 'row_number_with_partition'
from employee e;

-- find the employees with highest salary
-- first method
create view temp_employee_rank as
select e.*,
dense_rank() over(partition by department order by salary desc) as `dense_rank` from employee e;

select * from temp_employee_rank where `dense_rank`=1;

-- first_value()
select e.*,
first_value(salary) over(partition by department order by salary desc) as `top`,
last_value(salary) over(partition by department order by salary desc) as `last`
from employee e;

--- CTES
-- Common table experessions  : They are temporary/virtual tables
-- Syntax :
-- 		WITH temp_table_name as 
--			(query)
--			query;    
-- CTEs and Views : Both are virtual/temporary tables
-- The life of CTE is within the query where as the life of view is till we explicity drop it. 
-- CTEs are used when you need the query only once, whereas Views are used when the query is needed again and again.
-- when you create a run time column and on the same column if you want to apply the filters or any other operations 
-- then you would get an error,  to achieve it you can use CTE's or view.
--  find the employees within each department with highest salary
WITH emp_temp as 
(select e.*, dense_rank() OVER(partition by department order by salary desc) as ranks from employee e)
select * from emp_temp where ranks=1;

--  find the employees within each department with lowest salary
WITH emp_temp as 
(select e.*, dense_rank() OVER(partition by department order by salary asc) as ranks from employee e)
select * from emp_temp where ranks=1;

-- Lag & lead function
select * from sales;

-- find the %inc or dec in sales month on month basis
-- Feb: ((11000-10000)/10000 *100) 
WITH temp_sales as 
(select month, sales_value,
lag(sales_value) OVER() as previous_month_sales
 from sales)
 select *, ((sales_value - previous_month_sales)/ previous_month_sales *100) as percent_inc_dec from temp_sales;

-- lead
WITH temp_sales as 
(select month, sales_value,
lead(sales_value) OVER() as next_month_sales
 from sales)
 select *, ((next_month_sales-sales_value)/ sales_value *100) as percent_lead from temp_sales;

-- Window Function 
--	- (aggregate functions : max, min, avg, sum, count)
--	- Rank, Dense rank, percent_rank, row_number, first_value, last_value, lag, lead
-- CTEs
	-- CTES Vs views
    
-- Frames
-- Running total
select  city,sold from city_sales;

-- ROWS UNBOUNDED PRECEDING : keyword

select city, sold, 
sum(sold) OVER(order by city ROWS UNBOUNDED PRECEDING) as running_total
from city_sales;

-- We want a running total for each month
select city, sold, month,
sum(sold) OVER(partition by month order by city ROWS UNBOUNDED PRECEDING) as running_total
from city_sales;

-- We want a running total for each city
select city, sold, month,
sum(sold) OVER(partition by city order by city ROWS UNBOUNDED PRECEDING) as running_total
from city_sales;

-- Stock market : Moving averages 
-- moving average of 3
select name, yearmonth,close,
avg(close) OVER(partition by name ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS `ma(3)`
from pivot_stock_data;

-- moving average of 3
select name, yearmonth,close,
avg(close) OVER(partition by name ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS `ma(5)`,
avg(close) OVER(partition by name ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS `ma(10)`,
avg(close) OVER(partition by name ROWS BETWEEN 19 PRECEDING AND CURRENT ROW) AS `ma(20)`
from pivot_stock_data;

-- moving average 3 excluding current row
select name, yearmonth, close,
avg(close) OVER(partition by name ROWS 3 PRECEDING) as `ma(3)`
from pivot_stock_data;


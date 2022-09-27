-- Functions
-- Procedures
-- Pivots & Dynamic Programming

-- Functions : Resuable code then functions become very handy.

-- Syantax :
--		DELIMITER $$
--		CREATE FUNCTION function_name(parameter_name data_type) returns data_type deterministic
-- 			BEGIN
--				LOGIC
--			END$$
--		DELIMITER ;
---------------------------------------------------------------------------------------------------------
use test;
select * from employee1;

-- We are interested in finding the age of each employee
select current_date();
select *, year(current_date()) - year(dob) age from employee1;

-- We will a function which will take a input paramater as date of birth and return the age.
DELIMITER $$
CREATE FUNCTION calculate_age(date_of_birth date) returns int deterministic
	BEGIN
		DECLARE todaydate date;
        select current_date() into todaydate;
        return year(todaydate) - year(date_of_birth);
	END$$
DELIMITER ;

-- CALL or EXECUTE THE ABOVE FUNCTION
select *,calculate_age(dob) as age from employee1;

select calculate_age('1990-10-10');

------------------------------------------------------------------------------------------------------------------
-- Stored Procedures
-- It is a set of SQL statements with an assigned name, which can be stored for later use.
-- Syntax :
--		DELIMIETR //
-- 		CREATE PROCEDURE procedure_name(parameter_name data_type)
--			BEGIN
--				LOGIC
--			END//
--		DELIMIETER ;
-----------------------------------------------------------------------------------
-- Diff B/w Functions and Procdures
-- 1. Functions(UDFs) supports only input paramaters, whereas SP supports i/p, o/p or i/p-o/p paramaters.
-- 2. functions cannot call SP whereas SP can call functions.
-- 3. Functions can be called using any select statement whereas SP can be called using CALL statement.
-- 4. functions must return a value whereas SP need not return any value. 
-- 5. functions only select operation is allowed, whereas SP can handle all the database operations.
-------------------------------------------------------------------------------------------------------
-- Implement the Stored_procedure
create table orders (
order_no int8,
order_date date,
order_amount decimal(12,2)
);

-- check 
select * from orders;

-- Using SP we will insert the records into this order table
DELIMITER //
CREATE PROCEDURE insert_ord_table (ordno int8, ordt date, ordamt decimal(12,2))
	BEGIN
		insert into orders VALUES(ordno,ordt,ordamt);
        COMMIT;
	END //
DELIMITER ;

-- EXECTUE THE SP
CALL insert_ord_table(1,current_date(),1234.67);

-- check 
select * from orders;

-- we Have entered wrong order amount it should be 12346.7 whereas we entered 1234.67. 
-- Using SP let us update the table

DELIMITER $$
CREATE PROCEDURE updt_ord_table(ordno int, ord_amt decimal(12,2))
	BEGIN
		SET SQL_SAFE_UPDATES=0;
        update orders set order_amount = ord_amt where order_no=ordno;
        SET SQL_SAFE_UPDATES=1;
	END$$
DELIMITER ;

-- EXECUTE SP
CALL updt_ord_table(1,12346.7);

-- check 
select * from orders;

-- Drop function or procedure
Drop function calculate_age;
Drop procedure updt_ord_table;

------------------------------------------------------------------------------------------------------------------------
-- PIVOTS
-- Transform the rows to columns
-- It is similar to the pivots in excel
-- It is similar to pandas pivot_table or pivot function

select * from pivot_stock_data;


-- Output 
-- Name		'2013-02'	2013-03'	'2013-04'......... '2018-02'
-- AAPL		-6.88%		1.06%		0.2%...................
-- AMD		-3.49%		2%			11.02%	.................
-- ...
-- ...
-- ..
-----------------------------------------------------------------------------------------------------------------
-- PIVOT and UNPIVOT (This keywords are mising in MYSQL)

-- To achieve pivots in mysql we would be using case statement

select name,
max(case 
when formatted_date ='2013-02' Then delta_pct
else NULL
end) as '2013-02',
max(case 
when formatted_date ='2013-03' Then delta_pct
else NULL
end) as '2013-03' ,
max(case 
when formatted_date ='2013-04' Then delta_pct
else NULL
end) as '2013-04'  
from pivot_stock_data group by name;

-------------------------------------------------------
select count(distinct(formatted_date)) from pivot_stock_data;

-- Dynamic Programming

select name,
max(case when formatted_date ='2013-02' Then delta_pct else NULL end) as '2013-02',
max(case when formatted_date ='2013-03' Then delta_pct else NULL end) as '2013-03' ,
max(case when formatted_date ='2013-04' Then delta_pct else NULL end) as '2013-04'  
from pivot_stock_data group by name;

select * from pivot_stock_data;
-- All the static part are encapsulated inside the double quotes

SET @sql = (select
group_concat(
	concat("max(case when formatted_date ='",formatted_date,"' Then delta_pct else NULL end) as '",formatted_date,"'")
			)
            from pivot_stock_data);
            
-- In Above statement 13 rows are truncate by group_concat and you end up with a warning
-- Because the maximum length of group_concat is 1024.

-- To overcome the warning we will set the group_concat_max_len
SET group_concat_max_len = 100000;
SET @sql = (select
group_concat(
	distinct concat("max(case when formatted_date ='",formatted_date,"' Then delta_pct else NULL end) as '",formatted_date,"'")
			)
            from pivot_stock_data);
            
-- let us check @sql variable
select @sql;

SET @pivot_statement = concat("select name,",@sql,"from pivot_stock_data group by name;");

select @pivot_statement;

-- execute the above prepared query
-- PREPARE STATEMENT USING PREPARE KEYWORD

prepare complete_pivot_statement
from @pivot_statement;

-- exectue
execute complete_pivot_statement;

-- Dynamic Programming
-- 1. We started with the Pivots : Since there is no pivot in mysql so we used case statement to achieve pivots.
-- 2. If we use statis case condition in our problme statement then we need to write 61 time case condition which would be very length and time consuming process.
-- 3. To over come this we created a dynamic query for case conditions
		-- All the static part we encapsulated inside the double qoutes
		-- Dynamic part change to the dynamic column
        -- we concatenated all the strings using concat function
        -- since there were 61 max(case...) statements so we used group concat function to group all the case statement in one variable.
        -- we changed the length of group_concat from 1024 to 100000 using SET group_concat_max_len 
        -- we prepared whole select statement inside a variable which is @pivot_statement.
-- 4. To execute the query we used two keywords prepare and excute
		-- prepare complete_pivot_statement from @pivot_statement
        -- execute complete_pivot_statement

-- Leet code : Hard questions.
insert into test.employee1 VALUES(100,'Madhu',600000,'2020-01-01');

select * from test.employee1 e1 inner join window_functions.employees e2
on e2.emp_id = e1.employeeId;

















        








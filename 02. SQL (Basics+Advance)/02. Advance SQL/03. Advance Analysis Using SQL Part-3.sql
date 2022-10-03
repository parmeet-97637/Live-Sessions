-- My Cursors
-- If we consider the general loops in programming. They are the specific set of instructions and they keep on executing unitl 
-- the condition break the loop.
-- MYSQL also provides a way to execute instructions on indiviual rows using cursors.

-- Properties
-- 1. Non- Scrollable : You can iterate over the rows only in one direction.
--	Employee :
--			Name		Age
--        	Parmeet		23
--        	Trishaan	21
--        	Adarsh		22
-- You cannot skip a row, you cannot go back or you cannot jump to a row.

-- 2. Read-Only : You cannot update or delete using cursor
-- 3. Asensitive : MySQL cursors points to the underlying data.  It runs faster than an insensititve cursor.
---					Insensitive cursors points to a snapshot of underlying data, making it slower than asensititve cursors.

-- How to create the cursors
-- To create the MYSQL cursors we will need few keywords
--	1. DECLARE
--	2. OPEN
--	3. FETCH
--	4. CLOSE


-- 1. Declare Statement
-- In declare statement we can declare a variable, cursors and handlers.
-- The declare statement follows some sequence that needs to be adhered 
-- First things : you must atleast declare one variable to use later with fetch statement.

-- Syntax: DECLARE <variable_name> variable_type
-- ** When declaring a cursor we would need to attach a select statement with that.

-- Syntax for delcaring cursor : DECLARE <cursor_name> CURSOR FOR <select_statement>

-- you also have to declare a "Not Found" handler.
-- Synatx of Handler : DECLARE CONTINUE HANDLER FOR NOT FOUND SET FINISHED =1;

-- 2. Open Statement
-- The open statement would initialize the statement from the declare cusrsor statement.
--	Syntax : OPEN <cursor-name

-- 3. Fetch Statement
-- It will work as a iterator
-- It fetches the next row from the rows associated  with the select statement declared in the cursor.

-- Synatx : FETCH <cursor_name> into <variable_name>
-- If you have have a variable_list , then you need to declare all those variables earlier
-- Syntax : FETCH <cursor_name> into a,b,c

-- 4. CLOSE Statement
-- This statement will close the open cursor.
-- Synatx : CLOSE <cursor_name>

----------------------------------------------------------------------------------------------------------------------------
use window_functions;
select * from football;

-- I have populated this table using CSV files. The script will be uploaded over GIT.
-- Problem Statement :
-- We will create a cursor
--	  a. Loop the cursor through the football table
--    b. Calculate the average goals of a team that won a match scored at half time.
 select * from football where FTR ='H' order by HTHG desc;
 
DELIMITER $$
DROP PROCEDURE if exists cursordemo;
CREATE PROCEDURE cursordemo (inout average_goals float)
	BEGIN
        DECLARE matches int DEFAULT 0;
        DECLARE goals int DEFAULT 0;
        DECLARE done int DEFAULT FALSE;
        DECLARE half_time_goals decimal(12,6);
        
		DECLARE team_cursor CURSOR FOR select cast(HTHG as float) from football where FTR ="H";
        
        DECLARE CONTINUE HANDLER FOR NOT FOUND set done =True;
        
        OPEN team_cursor;
 
		teams_loop:
			LOOP
				FETCH team_cursor into half_time_goals;
				IF done THEN LEAVE teams_loop;
                END IF;
				SET goals = goals + half_time_goals;
                SET matches = matches +1;
            END LOOP teams_loop;
            
            SET average_goals = goals/matches;
            
		CLOSE team_cursor;
        
	END$$
DELIMITER ;

-- EXECUTE the above procedure
SET @avg_goals = 0.0;
CALL cursordemo(@avg_goals);

-- Let us see that is the valeu in @avg_goals
select @avg_goals;

-- verfication
select avg(cast(HTHG as float)) from football  where FTR="H";


        



























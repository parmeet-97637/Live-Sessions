use airbnb_rental;

-- Find the number of consumers
select count(member_id) total_customers from member;

-- Find the male and female consumers
select gender, count(member_id) total_customers from member group by gender;

-- find the age of customers
select m.*, year(current_date())-year(birthday) age from member m;

-- customers from which country visists more
select c.country, count(m.member_id) total_customers from member m 
inner join member_address ma 
inner join city c
on m.member_id = ma.member_id and 
ma.zip_code = c.zip_code
group by c.country;

-- How many bookings are made by each customers
select m.member_id,count(b.booking_id) total_bookings from member m 
inner join bookings b 
on m.member_id = b.member_id group by m.member_id order by total_bookings desc;

-- Selects the full name and member_id from all male members
SELECT last_name, first_name, member_id FROM member WHERE gender = 'M' ORDER BY last_name ASC; 

-- Displays a result table with all available contact information joining three tables, ordering the results from A to Z
SELECT last_name, first_name, email, password, phone FROM login_info 
LEFT JOIN member ON login_info.member_id = member.member_id
LEFT JOIN contact_info ON login_info.member_id = contact_info.member_id
ORDER BY last_name ASC; 

-- Displays all saved cities. 
SELECT * FROM city ORDER BY country; 

-- Only selects cities which names start with either 'H' or 'B'.
SELECT DISTINCT cityname FROM city WHERE cityname LIKE "H%" OR cityname LIKE "B%"; 

-- Selects all cities that are not located in Germany. 
SELECT DISTINCT cityname FROM city WHERE country NOT IN ('Germany'); 

-- Displays a result table with the full address of all members joining three tables
SELECT last_name, first_name, street, house_number, member_address.zip_code, cityname FROM member_address 
LEFT JOIN member ON member_address.member_id = member.member_id
LEFT JOIN city ON member_address.zip_code = city.zip_code
ORDER BY last_name ASC; 

-- Displays as result the full address of all members with addresses in the city of Hamburg
SELECT last_name, first_name, street, house_number, member_address.zip_code, cityname FROM member_address 
LEFT JOIN member ON member_address.member_id = member.member_id
LEFT JOIN city ON member_address.zip_code = city.zip_code
WHERE cityname = 'Hamburg'
ORDER BY last_name ASC; 

-- Selecting an overview of all already redeemed coupons. 
SELECT * FROM coupons WHERE redeemed = TRUE;

-- Selecting the Social Media information stored in the table as well as displaying 
-- the corresponding members' name through joining the tables member and social_media.
SELECT social_media.member_id, first_name, last_name, instagram_url, facebook_url FROM social_media
INNER JOIN member ON member.member_id = social_media.member_id; 

-- Selecting all social media and member names where there is an instagram account saved. 
SELECT social_media.member_id, first_name, last_name, instagram_url FROM social_media
INNER JOIN member ON member.member_id = social_media.member_id GROUP BY social_media.member_id HAVING instagram_url IS NOT NULL; 

-- Output of the stored payment information from the database.  
SELECT * FROM payment_methods; 

-- Outputs a list of all hosts on the plattform in descending order of their first name. 
SELECT first_name, last_name, host_id, host.member_id FROM host
LEFT JOIN member ON host.member_id = member.member_id ORDER BY first_name DESC; 

-- Outputs a list with all accommodations that are available and cheaper than 50€ per night. 
SELECT * FROM accommodation WHERE availability = TRUE AND price_per_night < 50; 

-- Result table shows the average, maximal and minimal price per night. 
SELECT AVG(price_per_night) AS average_price, MAX(price_per_night) 
AS max_price, MIN(price_per_night) AS min_price FROM accommodation;

-- Lists all accommodation that cost between 10 and 70dollars.
SELECT * FROM accommodation WHERE price_per_night BETWEEN 10 AND 70 ORDER BY price_per_night DESC; 

-- Showcases the Number of Guests an accommodation can have, but only for listings that are currently available. 
SELECT accommodation_id, number_of_guests_possible AS Guest_Number FROM accommodation WHERE availability = true; 

-- Queries all results from the booking table where the booking took place in the year 2021. 
SELECT * FROM bookings WHERE start_date LIKE "2021%"; 

-- Queries a list of all the total booking prices per booking with the guests names and member_ids. 
SELECT price_total, first_name, last_name, bookings.member_id FROM bookings
INNER JOIN member ON bookings.member_id = member.member_id ORDER BY price_total; 

-- Selects an overview of the specified attributes for only the invoices that have not been payed yet. 
SELECT invoice_id, invoice.booking_id, accommodation_id, payable_amount, first_name, last_name, invoice_payed FROM invoice
INNER JOIN bookings ON bookings.booking_id = invoice.booking_id
INNER JOIN member ON bookings.member_id = member.member_id
WHERE invoice_payed = FALSE; 

-- Queries all information about the payments the company needs to make 
-- to the hosts (respectively their earnings), ordered by the host_id. 
SELECT host_id, payable_amount_to_host AS "Earnings Host", invoice_id
FROM payments_to_host ORDER BY host_id; 

-- Queries all entries from the cancellations table. 
SELECT * FROM cancellations; 

-- Query that connects four tables, resulting in an overview of the 
-- accommodations' addresses as well as the name of the respective host. 
SELECT a1.accommodation_id, street, house_number, zip_code, 
first_name AS 'Host: Firstname', last_name 'Host: Name'
FROM accommodation_address AS a1
INNER JOIN accommodation AS a2 ON a1.accommodation_id = a2.accommodation_id
INNER JOIN host ON a2.host_id = host.host_id
INNER JOIN member ON host.member_id = member.member_id; 

-- Calculates how many pictures per accommodation are saved.
-- All accommodation_ids that are not in the list do not have any pictures saved.  
SELECT accommodation_id as ID, COUNT(*) as '# of pictures saved' 
FROM pictures GROUP BY accommodation_id; 

-- Queries a list of the attributes / accommodation, 
-- where a guest has the possibility to rent the whole accommodation. 
SELECT accommodation_id as ID, home_type, has_tv, has_kitchen, has_heating, 
has_internet, has_aircon, total_bedrooms, total_bathrooms 
FROM equipment_features WHERE room_type = "whole accommodation"; 

-- Queries the ratings and members who gave the ratings ordered by the accommodation ID. 
SELECT rating_for_accommodation_id AS 'Acc. ID', rating, comment, 
first_name AS 'Member: firstname', last_name AS 'Member: lastname' 
FROM ratings
LEFT JOIN member ON ratings.rating_given_by_member_id = member.member_id 
ORDER BY rating_for_accommodation_id;


-- Queries all information about instructors. 
SELECT * FROM instructor; 

-- Joins experiences and city to retrieve all experiences 
-- that are available to groups with size 10 and over. 
SELECT title, zip_code, cityname, country FROM experiences 
INNER JOIN city USING (zip_code) WHERE group_size >= 10 ORDER BY country; 

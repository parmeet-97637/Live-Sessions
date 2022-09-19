use airbnb_rental;

-- Find the number of consumers
select count(member_id) from member;

-- find the male and female consumers
select gender, count(member_id) as no_of_consumers from member group by gender;

-- customers from which country vists more
select c.country,count(m.member_id) as total_customers from member m 
inner join member_address ma 
inner join city c 
on m.member_id = ma.member_id and 
ma.zip_code = c.zip_code group by c.country order by total_customers desc;

-- find the age of customers
select m.*, year(current_date()) - year(birthday) age from member m ;

-- How many booings are made by each customers
select m.member_id, count(b.booking_id) as number_of_bookings from member m 
inner join bookings b 
on m.member_id = b.member_id group by m.member_id;

-- join via using keyword
select m.member_id, count(b.booking_id) as number_of_bookings from member m 
inner join bookings b 
using(member_id) group by m.member_id order by number_of_bookings;

-- select full name and memebr_id for all the customers
select member_id, concat(first_name,' ',last_name) as full_name from member;

-- Display the table with all the available contact information
select * from member m 
inner join contact_info c
using(member_id);

-- select only those cities which start with H or B
select * from city where cityname like "H%" or cityname like "B%";

-- select only those citites who has "a" in the second position
select * from city where cityname like "_a%";

-- select only those citites that are ending with "H" or "B"
select * from city where cityname like "%H" or cityname like "%B";

-- select all the cities that are not located in germany
select distinct cityname from city where country not in ('Germany');

-- select the full address for all the members
select m.first_name, m.last_name, 
concat("House_number : ", ma.house_number, " Street_name : ",ma.street, " ",ma.zip_code, " ", c.cityname, " ", c.country) as full_address 
from member m
inner join member_address ma
inner join city c 
on m.member_id = ma.member_id and
ma.zip_code = c.zip_code;

-- select all the already reedemed coupons
select * from coupons where redeemed = 1;
select * from coupons where redeemed = True;

-- select all the social media information
select * from social_media;

-- find the customers who are active on instagram and facebook both
select first_name, last_name,facebook_url, instagram_url from member m 
inner join social_media s
using(member_id) 
where instagram_url is not null and facebook_url is not null;

-- find the customers who are inactive on instagram and facebook both
select first_name, last_name,facebook_url, instagram_url from member m 
inner join social_media s
using(member_id) 
where instagram_url is null and facebook_url is null;

-- find the customers whose payment method is via credit card
select * from payment_methods where credit_card_no is not null;

-- find the customers whose payment method is via credit card and their credit card is verified
select * from payment_methods where credit_card_no is not null and credit_card_verification =True;

-- Target customers
select * from payment_methods where credit_card_no is not null and credit_card_verification =False;
select * from payment_methods where credit_card_no is  null and paypal_verification =False;

-- hosts
select * from host h 
left join member  m 
using(member_id);

-- find the list of all accomodations that are avaialble and cheaper than 50 per night
select * from accommodation where availability = True and price_per_night<50;

-- let us fetch the ratings for the above availble accomodation
select a.accommodation_id, avg(r.rating) as avg_rating, a.price_per_night from accommodation a
inner join ratings r 
on a.accommodation_id = r.rating_for_accommodation_id where availability = True and price_per_night<50 
group by a.accommodation_id order by avg_rating desc;

-- list all the costs between 10 and 70
select * from accommodation where price_per_night between 10 and 70;

-- find the accommodation which has been booked most
select accommodation_id, count(accommodation_id) as total_bookings_till_date from member m 
inner join bookings b 
using(member_id) group by accommodation_id order by total_bookings_till_date desc;


-- -- find the accommodation which has been booked most with its address
select b.accommodation_id, count(b.accommodation_id) as total_bookings_till_date , aa.street,aa.house_number, aa.zip_code 
from member m 
inner join bookings b 
inner join accommodation_address aa
on m.member_id = b.member_id and
b.accommodation_id = aa.accommodation_id 
group by b.accommodation_id order by total_bookings_till_date desc;

-- find all bookings from 2021
select * from bookings where year(start_date) ='2021';

-- find the best month in which most bookings happened
select monthname(start_date) `month_name`, count(booking_id) as no_of_bookings 
from bookings group by `month_name` order by no_of_bookings desc;

-- invoices - customers whose invoice are pending
select m.first_name, m.last_name,i.invoice_id,i.payable_amount,i.payment_date,i.invoice_payed from invoice i
inner join bookings b 
inner join member  m
on i.booking_id = b.booking_id and 
b.member_id = m.member_id where i.invoice_payed = False;

-- find all the information about that payments the company needs to make to the hosts
select * from payments_to_host pth 
inner join invoice i 
using(invoice_id) where i.invoice_payed=False; 

-- cancellaltions
-- accommodation's which were cancelled most number of times
select b.accommodation_id, count(b.accommodation_id) as total_count, sum(c.refund) as total_refund
from cancellations c 
left join bookings b 
on c.booking_id = b.booking_id group by b.accommodation_id order by total_count desc;

-- instructor
select * from instructor;

-- understand the experience of each instructor
select instructor_id,first_name description from instructor i 
inner join experiences e 
using(instructor_id) where group_size>=10;

-- Joins
-- Few inbuilts functions
-- ERD Diagram are there on the GitHub repo
-- Inbuilt functions, joings, filterings, limit(selecting top records)

-- select the customer who has done highest number of bookings - top 3
select m.member_id, count(b.booking_id) as total_bookings from member m 
inner join bookings b 
using(member_id) group by m.member_id order by total_bookings desc limit 3;

-- select the second highest customer who has done highest bookings
select m.member_id, count(b.booking_id) as total_bookings from member m 
inner join bookings b 
using(member_id) group by m.member_id order by total_bookings desc limit 1,1;

-- Pure Advance 
	-- Window Functions : Rank, Desne_rank, lag,lead, nutile, percentile_rank
    -- CTEs
    -- CTEs Vs Views
    -- Functions
    -- Procedures
    -- Frames
    -- Pivots 
    -- Indexes
    
    
select aa.zip_code, count(booking_id) total_bookings,c.cityname from bookings b 
inner join accommodation_address aa 
inner join city c
on b.accommodation_id = aa.accommodation_id 
and aa.zip_code = c.zip_code 
group by zip_code order by total_bookings desc;

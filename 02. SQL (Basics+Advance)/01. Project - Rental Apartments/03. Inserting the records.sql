USE `airbnb_rental`;

-- Inserting the values for the "member" table
-- Each member gets an automatically created member ID
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Parmeet', 'Singh', 'M', '1992-07-17', '/Users/parmeetsingh/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Shruti', 'Sharma', 'F', '1990-11-02', '/Users/shrutisharma/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Aniket', 'Kumar', 'M', '1995-06-01', '/Users/aniketkumar/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Chanda', 'Harshita', 'F', '1960-01-12', '/Users/chandaharshita/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Wasim', 'Narayanpur', 'M', '1991-03-15', '/Users/wasimnarayanpur/Pictures/ProfilePicture');

INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Tina', 'Dang', 'F', '1980-08-22', '/Users/tinadang/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Rohit', 'Gupta', 'M', '1979-09-21', '/Users/rohitgupta/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Ramandeep', 'kaur', 'F', '1964-04-13', '/Users/ramandeepkaur/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Ranbeer', 'Singh', 'M', '1985-09-11', '/Users/ranbeersingh/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Pallavi', 'kumar', 'F', '1987-02-23', '/Users/pallavikumar/Pictures/ProfilePicture');

INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Murali', 'vagnipura', 'M', '2000-06-15', '/Users/muralivagnipura/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Jiya', 'Mittal', 'F', '2001-05-12', '/Users/jiyamittal/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Harish', 'Sharma', 'M', '2005-07-01', '/Users/harishsharma/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Nidhi', 'hegde', 'F', '1969-01-30', '/Users/nidhihegde/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Haneesh', 'chhabra', 'M', '2005-09-11', '/Users/haneeshchhabra/Pictures/ProfilePicture');

INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Shelly', 'saluja', 'F', '1999-06-12', '/Users/shellysaluja/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('yogesh', 'shukla', 'M', '1998-09-19', '/Users/yogeshshukla/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('nitika', 'sharma', 'F', '1976-10-12', '/Users/nitikasharma/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('Fahad', 'Ahmed', 'M', '1955-05-23', '/Users/fahadahmed/Pictures/ProfilePicture');
INSERT INTO member(first_name, last_name, gender, birthday, profile_picture) VALUES ('priyanka', 'jain', 'F', '1979-10-30', '/Users/priyankajain/Pictures/ProfilePicture');


-- Inserting the values for the "login" table corresponding to the entries in the "members" table
INSERT INTO login_info VALUES('ps@gmail.com', 'Hello1234', 1);
INSERT INTO login_info VALUES('ss@gmail.com', 'random3489', 2);
INSERT INTO login_info VALUES('ak@gmail.com', 'randompassword1', 3);
INSERT INTO login_info VALUES('ch@gmail.com', 'password90', 4);
INSERT INTO login_info VALUES('wn@gmail.com', 'login6789', 5);

INSERT INTO login_info VALUES('td@gmail.com', 'abcd1234', 6);
INSERT INTO login_info VALUES('rg@gmail.com', 'login89', 7);
INSERT INTO login_info VALUES('rk@gmail.com', 'login99', 8);
INSERT INTO login_info VALUES('rs@gmail.com', 'HaLLo1992', 9);
INSERT INTO login_info VALUES('pk@gmail.com', 'pw12!hj', 10);

INSERT INTO login_info VALUES('mv@gmail.com', 'thisisapassword', 11);
INSERT INTO login_info VALUES('jm@gmail.com', 'passwordtwo', 12);
INSERT INTO login_info VALUES('hs@gmail.com', 'threefour5', 13);
INSERT INTO login_info VALUES('nh@gmail.com', 'starkesPW', 14);
INSERT INTO login_info VALUES('hc@gmail.com', 'notaigain1234', 15);

INSERT INTO login_info VALUES('ssa@gmail.com', 'hjl9138*1', 16);
INSERT INTO login_info VALUES('ys@gmail.com', 'dbnwiU(8', 17);
INSERT INTO login_info VALUES('ns@gmail.com', 'qwZ34!', 18);
INSERT INTO login_info VALUES('fa@gmail.com', 'tzIuZb12', 19);
INSERT INTO login_info VALUES('pj@gmail.com', 'PluI907!', 20);

-- Inserting values into "contact info" table corresponding to the entries in the "members" table
INSERT INTO contact_info VALUES('017621450847', 1);
INSERT INTO contact_info VALUES('4296796546357', 2);
INSERT INTO contact_info VALUES('12983985673', 3);
INSERT INTO contact_info VALUES('3698842427091', 4);
INSERT INTO contact_info VALUES('58104213939', 5);

INSERT INTO contact_info VALUES('1615949281', 6);
INSERT INTO contact_info VALUES('9139480823', 7);
INSERT INTO contact_info VALUES('6365906956', 8);
INSERT INTO contact_info VALUES('49697154102', 9);
INSERT INTO contact_info VALUES('84922808804', 10);

INSERT INTO contact_info VALUES('9785514851667', 11);
INSERT INTO contact_info VALUES('5520579404', 12);
INSERT INTO contact_info VALUES('6976698866483', 13);
INSERT INTO contact_info VALUES('66915152193', 14);
INSERT INTO contact_info VALUES('795424493167', 15);

INSERT INTO contact_info VALUES('065554179398', 16);
INSERT INTO contact_info VALUES('46621136398078', 17);
INSERT INTO contact_info VALUES('65115205594', 18);
INSERT INTO contact_info VALUES('3931567207', 19);
INSERT INTO contact_info VALUES('08117259879', 20);

-- Inserting data into the "city " table
INSERT INTO city VALUES ('58002', 'Ostergotland', 'Sweden'); 
INSERT INTO city VALUES ('93831', 'Norrbotten', 'Sweden'); 
INSERT INTO city VALUES ('28149', 'Madrid', 'Spain'); 
INSERT INTO city VALUES ('28410', 'Boalo', 'Spain'); 
INSERT INTO city VALUES ('28900', 'Getafe', 'Spain'); 

INSERT INTO city VALUES ('80331', 'München', 'Germany'); 
INSERT INTO city VALUES ('80469', 'München', 'Germany'); 
INSERT INTO city VALUES ('46215', 'Busan', 'South Korea'); 
INSERT INTO city VALUES ('46244', 'Busan', 'South Korea'); 
INSERT INTO city VALUES ('124508', 'Delhi', 'India'); 

INSERT INTO city VALUES ('140001', 'Punjab', 'India'); 
INSERT INTO city VALUES ('403001', 'Goa', 'India'); 
INSERT INTO city VALUES ('14999', 'New York', 'United States of America'); 
INSERT INTO city VALUES ('22003', 'Virginia', 'United States of America'); 
INSERT INTO city VALUES ('19980', 'Delaware', 'United States of America'); 

INSERT INTO city VALUES ('89423', 'Gundelfingen', 'Germany'); 
INSERT INTO city VALUES ('20357', 'Hamburg', 'Germany'); 
INSERT INTO city VALUES ('20537', 'Hamburg', 'Germany'); 
INSERT INTO city VALUES ('32479', 'Hille', 'Germany'); 
INSERT INTO city VALUES ('53146', 'Berlin', 'Germany'); 

INSERT INTO city VALUES ('53151', 'Berlin', 'Germany'); 
INSERT INTO city VALUES ('04100', 'Lazio', 'Italy'); 
INSERT INTO city VALUES ('30010', 'Veneto', 'Italy'); 
INSERT INTO city VALUES ('50010', 'Tuscany', 'Italy'); 
INSERT INTO city VALUES ('98168', 'Sicily', 'Italy'); 

-- Inserting data into the "member address" table corresponding to the members in the "member" table
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Weidenallee', 49, 1, 20357); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Weidenallee', 49, 2, 20357); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Burgoyne Road', 149, 2, 98168); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Malpas Close', 3, 3, 50010); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Leisure Way', 9, 4, 53146); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Middridge Road', 69, 5, 20357); 

INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Constable Drive', 39, 6, 32479); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Constable Drive', 39, 7, 32479); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Cotton Passage', 89, 7, 32479); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Drury Chase', 89, 8, 14999); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Weidenallee', 49, 9, 19980); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('White Hart Haven', 1, 10, 19980); 

INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('St Lukes Poplars', 49, 11, 124508); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Maxwell Link', 56, 12, 46215); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Dane Copse', 34, 13, 20357); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Ashby Terrace', 120, 14, 20537); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Everest Leaze', 149, 15, 20357); 

INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Broad Place', 45, 16, 403001); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Highgrove Lanes', 34, 17, 80331); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Dryden Villas', 22, 18, 80469); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Dryden Villas', 22, 19, 80469); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Everest Leaze', 9, 19, 14999); 
INSERT INTO member_address(street, house_number, member_id, zip_code) VALUES ('Atlas Firs', 109, 20, 14999); 

-- Inserting data into the "coupons" table
-- A member can have zero or more coupons, but a coupons always belongs to one member
alter table coupons auto_increment=100;
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Christmas voucher discount on the first overnight stay', '10.00', '2021-12-31', true, 2); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Christmas voucher discount on the first overnight stay', '10.00', '2021-12-31', false, 5); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Christmas voucher discount on the first overnight stay', '10.00', '2021-12-31', true, 7); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Christmas voucher discount on the first overnight stay', '10.00', '2021-12-31', false, 8); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Christmas voucher discount on the first overnight stay', '10.00', '2021-12-31', true, 10); 

INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Lovebirds gift voucher', '50.00', '2022-02-28', false, 10); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Lovebirds gift voucher', '50.00', '2022-02-28', true, 20); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Lovebirds gift voucher', '50.00', '2022-02-28', true, 18); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Lovebirds gift voucher', '50.00', '2022-02-28', false, 8); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Lovebirds gift voucher', '50.00', '2022-02-28', false, 14); 

INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Individual gift card, variable amount', '10.00', '2024-10-31', false, 1); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Individual gift card, variable amount', '25.00', '2023-02-28', false, 13); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Individual gift card, variable amount', '100.00', '2022-10-31', true, 12); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Individual gift card, variable amount', '65.50', '2025-12-31', false, 3); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Individual gift card, variable amount', '15.50', '2024-09-30', false, 4); 

INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Cultuzz voucher for activities', '15.00', '2023-06-01', false, 5); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Cultuzz voucher for activities', '10.00', '2024-07-01', false, 11); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Cultuzz voucher for activities', '17.00', '2025-08-01', false, 14); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Cultuzz voucher for activities', '18.50', '2022-09-01', false, 12); 
INSERT INTO coupons(description, amount, expiry_date, redeemed, member_id) VALUES ('Cultuzz voucher for activities', '22.50', '2025-11-01', false, 17); 

-- Inserting values into the 'Social Media' Table corresponding to members
-- Social Media channels are optional but each social media channel saved must belong to a member
INSERT INTO social_media(member_id, instagram_url) VALUES (1, 'https://www.instagram.com/parmeetsingh/');
INSERT INTO social_media(member_id, facebook_url) VALUES (2, 'https://www.facebook.com/shrutisharma/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (3, 'https://www.instagram.com/aniketkumar/', 'https://www.facebook.com/aniketkumar/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (4, 'https://www.instagram.com/chandaharshita/', 'https://www.facebook.com/chandaharshita/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (5, 'https://www.instagram.com/wasimnarayanpur/', 'https://www.facebook.com/wasimnarayanpur/');

INSERT INTO social_media(member_id, facebook_url) VALUES (6, 'https://www.facebook.com/tinadang/');
INSERT INTO social_media(member_id, facebook_url) VALUES (7, 'https://www.facebook.com/rohitgupta/');
INSERT INTO social_media(member_id, facebook_url) VALUES (8, 'https://www.facebook.com/ramandeepkaur/');
INSERT INTO social_media(member_id, facebook_url) VALUES (9, 'https://www.facebook.com/ranbeersingh/');
INSERT INTO social_media(member_id, facebook_url) VALUES (10, 'https://www.facebook.com/pallavikumar/');

INSERT INTO social_media(member_id, instagram_url) VALUES (11, 'https://www.instagram.com/muralivagnipura/');
INSERT INTO social_media(member_id, instagram_url) VALUES (12, 'https://www.instagram.com/jiyamittal/');
INSERT INTO social_media(member_id, instagram_url) VALUES (13, 'https://www.instagram.com/harishsharma/');
INSERT INTO social_media(member_id, instagram_url) VALUES (14, 'https://www.instagram.com/nidhihegde/');
INSERT INTO social_media(member_id, instagram_url) VALUES (15, 'https://www.instagram.com/haneeshchhabra/');

INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (16, 'https://www.instagram.com/shellysaluja/', 'https://www.facebook.com/shellysaluja/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (17, 'https://www.instagram.com/yogeshshukla/', 'https://www.facebook.com/yogeshshukla/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (18, 'https://www.instagram.com/nitikasharma/', 'https://www.facebook.com/nitikasharma/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (19, 'https://www.instagram.com/fahadahmed/', 'https://www.facebook.com/fahadahmed/');
INSERT INTO social_media(member_id, instagram_url, facebook_url) VALUES (20, 'https://www.instagram.com/priyankajain/', 'https://www.facebook.com/priyankajain/');

-- Inserting payment methods into the corresponding table
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('ps@gmail.com', true, 1); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('ss@gmail.com', false, 2); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('ak@gmail.com', true, 3); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('ch@gmail.com', true, 4); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('wn@gmail.com', false, 5); 

INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('td@gmail.com', false, 6); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('rg@gmail.com', true, 7); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('rk@gmail.com', true, 8); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('rs@gmail.com', false, 9); 
INSERT INTO payment_methods(paypal_email, paypal_verification, member_id) VALUES ('pk@gmail.com', true, 10); 

INSERT INTO payment_methods(credit_card_no, credit_card_verification, member_id) VALUES ('0334456789', true, 11); 
INSERT INTO payment_methods(credit_card_no, credit_card_verification, member_id) VALUES ('4752427069', true, 12); 
INSERT INTO payment_methods(credit_card_no, credit_card_verification, member_id) VALUES ('3020484362', false, 13); 
INSERT INTO payment_methods(credit_card_no, credit_card_verification, member_id) VALUES ('7702694338', false, 14); 
INSERT INTO payment_methods(credit_card_no, credit_card_verification, member_id) VALUES ('4365931821', true, 15); 

INSERT INTO payment_methods(paypal_email, paypal_verification, credit_card_no, credit_card_verification, member_id) VALUES ('ssa@gmail.com', true, '7439915541', true, 16); 
INSERT INTO payment_methods(paypal_email, paypal_verification, credit_card_no, credit_card_verification, member_id) VALUES ('ys@gmail.com', false, '8682615013', true, 17); 
INSERT INTO payment_methods(paypal_email, paypal_verification, credit_card_no, credit_card_verification, member_id) VALUES ('ns@gmail.com', true, '1407297469', false, 18); 
INSERT INTO payment_methods(paypal_email, paypal_verification, credit_card_no, credit_card_verification, member_id) VALUES ('fa@gmail.com', true, '2429733492', true, 19); 
INSERT INTO payment_methods(paypal_email, paypal_verification, credit_card_no, credit_card_verification, member_id) VALUES ('pj@gmail.com', true, '5778940978', true, 20); 

-- Inserting data into the host table
INSERT INTO host (member_id) VALUES (2);
INSERT INTO host (member_id) VALUES (4); 
INSERT INTO host (member_id) VALUES (6); 
INSERT INTO host (member_id) VALUES (8); 
INSERT INTO host (member_id) VALUES (10); 

INSERT INTO host (member_id) VALUES (12); 
INSERT INTO host (member_id) VALUES (14); 
INSERT INTO host (member_id) VALUES (15); 
INSERT INTO host (member_id) VALUES (17); 
INSERT INTO host (member_id) VALUES (18);  

-- Inserting values into the accommodation table
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (1, 'Living exclusively on the water on a living area of 117 m² plus 60 m² skydeck.
Underfloor heating, dark floorboards, 2 bedrooms with boxspring and upholstered bed
Elegant sanitary facilities, spacious skydeck, private swimming dock with gate.', 4, 152, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (1, 'Cozy wooden house on Ostergotland, one of the largest beaches in Europe, about 8 km from the house. The house is furnished with kitchen and living room in one with wood stove.
2 bedrooms', 4, 55, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (2, 'This beautiful 1-room apartment No. 12 of a former 3 *** superior hotel is offered in direct beach location. It has just been freshly renovated and equipped with a kitchenette.', 2, 49, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (3, 'The triple glass windows and the inside-outside curtains guarantee comfort and relax.
The house is composed of a living room with a little furnished kitchen, a bedroom with a quality mattress and a bathroom with a shower box.', 2, 69, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (4, '4-room house 55 m2 on 2 levels, on the first floor. Simple furnishings: living/dining room with sloping ceilings with satellite TV and radio. 1 room with sloping ceilings with 1 double bed (2 x 70 cm). Small kitchenette (4 hot plates, microwave, electric coffee machine).', 6, 53, FALSE);

INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (4, 4, 152, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (4, 4, 152, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (5, 4, 152, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (6, 4, 152, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (7, 4, 152, TRUE);

INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (7, 'Our modern design apartment is on a roof terrace, full of light, and perfectly located to explore the unique history and bustling life of our city. It is 3 minutes walk to the metro, 7 minutes to the old town.', 3, 100, FALSE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (8, 'Golden Suites Apartment is a part of a brand new building (completed in 2020), located in the heart of the city, just a breath away from all the major archaeological sites everything by walking distance.', 4, 100, FALSE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (8, '70sqm 2-room-comfort-apartment in the heart of Berlin - directly at the Museum Island and the Humbold University; new building 2013; fully equipped; high-speed-WLan', 2, 45, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (9, 'Spacious suite for 4 people, with 2 bedrooms and large bathroom with shower and toilet, in an elegant house, with living room and desk, 2 smart TVs, bed linen, towels, gel and shampoo, refrigerator, microwave, capsule coffee maker, dishes, cutlery and glasses, computer safe, also has a terrace overlooking the garden and where you can smoke.', 4, 98, TRUE);
INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (9, 'Double room for 1 pers. ', 1, 30, FALSE);

INSERT INTO accommodation(host_id, description, number_of_guests_possible, price_per_night, availability) VALUES (10, 'Towels and utensils such as shampoo , conditioner , shower gel and hairdryer are available for guests. Free wifi, free and easy parking on the street. It is a quiet area which makes nightlife perfect.', 1, 32, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (10, 1, 25, FALSE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (10, 2, 80, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (10, 4, 75, TRUE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (10, 4, 69, FALSE);
INSERT INTO accommodation(host_id, number_of_guests_possible, price_per_night, availability) VALUES (10, 2, 45, TRUE);

-- Inserting values for the booking table
alter table bookings 
auto_increment=1000;
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2022-01-01', '2022-01-08', 343, 3, 1);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2020-06-01', '2020-06-05', 212, 5, 3);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-07-15', '2021-07-30', 2280, 9, 3);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-05-12', '2021-05-19', 700, 11, 10);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2019-03-13', '2019-03-18', 400, 18, 7);

INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2022-01-07', '2022-01-14', 315, 21, 7); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-09-09', '2021-09-18', 675, 19, 8); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2018-08-13', '2018-08-19', 192, 16, 9);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2018-10-17', '2018-10-31', 1400, 12, 10); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2018-11-03', '2018-11-08', 760, 6, 11); 

INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2019-05-09', '2019-05-12', 128, 16, 12);
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2019-08-15', '2019-08-30', 1500, 12, 13); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2019-12-01', '2019-12-08', 392, 3, 15); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-12-01', '2021-12-08', 392, 3, 15); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2022-01-01', '2022-01-08', 1064, 1, 16); 

INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-11-01', '2021-11-06', 150, 15, 17); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2021-10-12', '2021-10-20', 240, 15, 18); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2017-10-09', '2017-10-12', 100, 17, 19); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2017-08-07', '2017-08-08', 69, 20, 20); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2017-05-04', '2017-05-08', 225, 13, 2); 

INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2016-05-04', '2016-05-08', 220, 2, 1); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2016-07-07', '2016-07-08', 55, 2, 2); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2016-10-10', '2016-10-15', 245, 3, 3); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2016-04-15', '2016-04-20', 345, 4, 9); 
INSERT INTO bookings(start_date, end_date, price_total, accommodation_id, member_id) VALUES ('2016-06-06', '2016-06-07', 69, 4, 20); 

-- Inserting values for the invoice table 
alter table invoice auto_increment=2022;
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1000, 100, 343, '2022-01-30', FALSE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1001, 101, 212, '2020-06-15', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1002, 102, 2280, '2021-08-15', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1003, 103, 700, '2021-05-30', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1004, 104, 400, '2019-03-30', TRUE);

INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1005, 105, 305, '2022-01-30', FALSE); 
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1006, 106, 675, '2021-09-30', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1007, 107, 192, '2018-08-30', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1008, 108, 1390, '2018-11-15', TRUE); 
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1009, 109, 760, '2018-11-30', TRUE);

INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1010, 110, 28, '2019-05-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1011, 1500, '2019-09-10', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1012, 392, '2019-12-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1013, 392, '2021-12-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1014, 1064, '2022-01-30', FALSE);

INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1015, 150, '2021-11-10', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1016, 111, 190, '2021-10-24', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1017, 100, '2017-10-18', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1018, 112, 19, '2017-08-09', TRUE);
INSERT INTO invoice(booking_id, coupons_id, payable_amount, payment_date, invoice_payed) VALUES (1019, 113, 215, '2017-05-09', TRUE);

INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1020, 220, '2016-05-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1021, 55, '2016-07-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1022, 245, '2016-10-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1023, 345, '2016-04-30', TRUE);
INSERT INTO invoice(booking_id, payable_amount, payment_date, invoice_payed) VALUES (1024, 69, '2016-06-30', TRUE);

-- Inserting values for the "payments_to_host" table
INSERT INTO payments_to_host VALUES (2022, 2, 317.275); 
INSERT INTO payments_to_host VALUES (2023, 4, 196.1); 
INSERT INTO payments_to_host VALUES (2024, 6, 2109); 
INSERT INTO payments_to_host VALUES (2025, 7, 647.5); 
INSERT INTO payments_to_host VALUES (2026, 10, 370); 

INSERT INTO payments_to_host VALUES (2027, 10, 282.125); 
INSERT INTO payments_to_host VALUES (2028, 10, 624.375); 
INSERT INTO payments_to_host VALUES (2029, 10, 177.6); 
INSERT INTO payments_to_host VALUES (2030, 8, 1285.75); 
INSERT INTO payments_to_host VALUES (2031, 4, 703); 

INSERT INTO payments_to_host VALUES (2032, 10, 25.9); 
INSERT INTO payments_to_host VALUES (2033, 8, 1387.5); 
INSERT INTO payments_to_host VALUES (2034, 2, 362.6); 
INSERT INTO payments_to_host VALUES (2035, 2, 362.6); 
INSERT INTO payments_to_host VALUES (2036, 1, 984.2); 

INSERT INTO payments_to_host VALUES (2037, 9, 138.75); 
INSERT INTO payments_to_host VALUES (2038, 9, 175.75); 
INSERT INTO payments_to_host VALUES (2039, 10, 92.5); 
INSERT INTO payments_to_host VALUES (2040, 10, 17.575); 
INSERT INTO payments_to_host VALUES (2041, 8, 198.88); 

INSERT INTO payments_to_host VALUES (2042, 1, 203.5); 
INSERT INTO payments_to_host VALUES (2043, 1, 50.875); 
INSERT INTO payments_to_host VALUES (2044, 2, 226.625); 
INSERT INTO payments_to_host VALUES (2045, 3, 319.125); 
INSERT INTO payments_to_host VALUES (2046, 3, 63.825); 

-- Inserting values into the cancellations table. 
INSERT INTO cancellations VALUES (1019, 2041, 215); 
INSERT INTO cancellations VALUES (1017, 2039, 100); 
INSERT INTO cancellations VALUES (1015, 2037, 150); 
INSERT INTO cancellations VALUES (1013, 2035, 392); 
INSERT INTO cancellations VALUES (1011, 2033, 1500); 
INSERT INTO cancellations VALUES (1000, 2022, 343);
INSERT INTO cancellations VALUES (1004, 2026, 400);
INSERT INTO cancellations VALUES (1005, 2027, 305);

-- Inserting values into the accommodation_address table. 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Union Street', 32, 1, '04100'); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Waterside', 2, 2, 124508); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Regent Street', 43, 3, 140001); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Richmond Street', 12, 4, 14999); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Riverside Close', 8, 5, 19980); 

INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Weidenallee', 49, 6, 20357); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Voie Automne', 18, 7, 22003); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Rue de Mugissement', 21, 8, 28149); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Boulevard du Sud', 1, 9, 28410); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Baker Way', 23, 10, 28900); 

INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Railway Passage', 11, 11, 30010); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Cherry Avenue', 7, 12, 403001); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Fakename', 3, 13, 53146); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Maxwell Link', 56, 14, 46215); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Schildergasse', 5, 15, 50010); 

INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Kastanienallee', 19, 16, 50010); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Houghton Springs', 16, 17, 58002); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Königsallee', 12, 18, 80331); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Maximilianstraße', 18, 19, 80331); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Guston Road', 20, 20, 93831); 
INSERT INTO accommodation_address (street, house_number, accommodation_id, zip_code) VALUES ('Foxwood Glebe', 20, 21, 98168); 

-- Inserting values into the pictures table. 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (1, 'Boxed Water is better', '/Accommodation/1/Pictures/', 'Boxed Water - work from home desk with iPad pro');
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (1, 'Notre Dame', '/Accommodation/1/Pictures/', 'Kathedrale Notre Dame de Paris von Wolken umgeben');
INSERT INTO pictures(accommodation_id, file_name, storage_location) VALUES (1, 'Luxushotelzimmer', '/Accommodation/1/Pictures/'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (2, 'Cooles Känguru', '/Accommodation/2/Pictures/', 'Ausgewachsenes Rotes Känguru in der australischen Wüste'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (3,'Weiße Rose', '/Accommodation/3/Pictures/', 'Weiße Rosenblüte in einem natürlichen Garten'); 

INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (4,'Tesla', '/Accommodation/4/Pictures/', 'Tesla-Auto mit Strom auf einem Parkplatz');
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (5,'Whirlpool', '/Accommodation/5/Pictures/', 'Private pool, Greece. Relaxing vacation gateway concept');
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (5,'Bedroom', '/Accommodation/5/Pictures/', 'Boston hotel interior design skyline view'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (6,'Living Room', '/Accommodation/6/Pictures/', 'Apartment living room interior design'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (8,'Modern Apartement', '/Accommodation/8/Pictures/', 'Modern apartment interior in the city.'); 

INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (9,'Coffee Table', '/Accommodation/9/Pictures/', 'Living room interior design with elegant coffee table');  
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (10,'Hardwood Kitchen', '/Accommodation/10/Pictures/', 'Hardwood Kitchen design in Airbnb Apartment');
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (11, 'Couch', '/Accommodation/11/Pictures/', 'Elegant Couch for you to sleep on'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (12, 'Loft', '/Accommodation/12/Pictures/', 'Cool Loft with minimalistic design'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (13, 'Cozy Living Room', '/Accommodation/13/Pictures/', 'Couch with pink cussions and plants in the background'); 

INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (14, 'Mirror', '/Accommodation/14/Pictures/', 'Big, round mirror in the hallway'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location, alt_text) VALUES (14, 'Fireplace', '/Accommodation/14/Pictures/', 'Beautiful apartment with big fireplace'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location) VALUES (16, 'Home Decor', '/Accommodation/16/Pictures/'); 
INSERT INTO pictures(accommodation_id, file_name, storage_location) VALUES (16, 'Furniture Kitchen', '/Accommodation/16/Pictures/');
INSERT INTO pictures(accommodation_id, file_name, storage_location) VALUES (19, 'Bedroom', '/Accommodation/19/Pictures/');

-- Inserting values into the Equipment Features table. 
INSERT INTO equipment_features VALUES (1, 'house', 'whole accommodation', FALSE, TRUE, TRUE, TRUE, FALSE, 1, 1); 
INSERT INTO equipment_features VALUES (2, 'house', 'shared room', TRUE, FALSE, TRUE, TRUE, TRUE, 2, 1); 
INSERT INTO equipment_features VALUES (3, 'apartment', 'shared room', FALSE, FALSE, TRUE, TRUE, TRUE, 1, 2); 
INSERT INTO equipment_features VALUES (4, 'apartment', 'whole accommodation', FALSE, TRUE, FALSE, TRUE, FALSE, 3, 1); 
INSERT INTO equipment_features VALUES (5, 'apartment', 'whole accommodation', TRUE, TRUE, TRUE, TRUE, FALSE, 2, 1); 

INSERT INTO equipment_features VALUES (6, 'mobile home', 'whole accommodation', TRUE, TRUE, TRUE, TRUE, TRUE, 1, 1); 
INSERT INTO equipment_features VALUES (7, 'mobile home', 'shared room', FALSE, TRUE, FALSE, TRUE, FALSE, 1, 1); 
INSERT INTO equipment_features VALUES (8, 'mobile home', 'whole accommodation', FALSE, FALSE, TRUE, TRUE, FALSE, 2, 2); 
INSERT INTO equipment_features VALUES (9, 'vacation home', 'own room', FALSE, TRUE, FALSE, TRUE, FALSE, 3, 1); 
INSERT INTO equipment_features VALUES (10, 'vacation home', 'own room', FALSE, TRUE, TRUE, FALSE, FALSE, 3, 2); 
 
INSERT INTO equipment_features VALUES (11, 'house', 'whole accommodation', FALSE, TRUE, TRUE, TRUE, FALSE, 1, 1); 
INSERT INTO equipment_features VALUES (12, 'house', 'shared room', TRUE, FALSE, TRUE, TRUE, TRUE, 2, 1); 
INSERT INTO equipment_features VALUES (13, 'apartment', 'shared room', FALSE, FALSE, TRUE, TRUE, TRUE, 1, 2); 
INSERT INTO equipment_features VALUES (14, 'apartment', 'whole accommodation', FALSE, TRUE, FALSE, TRUE, FALSE, 3, 1); 
INSERT INTO equipment_features VALUES (15, 'apartment', 'whole accommodation', TRUE, TRUE, TRUE, TRUE, FALSE, 2, 1); 

INSERT INTO equipment_features VALUES (16, 'mobile home', 'whole accommodation', TRUE, TRUE, TRUE, TRUE, TRUE, 1, 1); 
INSERT INTO equipment_features VALUES (17, 'mobile home', 'shared room', FALSE, TRUE, FALSE, TRUE, FALSE, 1, 1); 
INSERT INTO equipment_features VALUES (18, 'mobile home', 'whole accommodation', FALSE, FALSE, TRUE, TRUE, FALSE, 2, 2); 
INSERT INTO equipment_features VALUES (19, 'vacation home', 'own room', FALSE, TRUE, FALSE, TRUE, FALSE, 3, 1); 
INSERT INTO equipment_features VALUES (20, 'vacation home', 'own room', FALSE, TRUE, TRUE, FALSE, FALSE, 3, 2); 
INSERT INTO equipment_features VALUES (21, 'house', 'whole accommodation', FALSE, TRUE, TRUE, TRUE, FALSE, 1, 1); 

-- Inserting values into the ratings table. 
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 'Vielen Dank für die schöne kurze Auszeit vom Alltag! In eurer Idylle kann man perfekt abschalten und die Natur genießen :) ', 1, 3);   
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 'Der Aufenthalt war sehr schön! Die Wohnung ist mit viel Liebe eingerichtet und es ist alles da was benötigt wird. Die Umgebung ist sehr ruhig und entspannt.', 3, 9);   
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('5', 'Beste Gelegenheit um rauszukommen & die Natur zu genießen!', 10, 11);   
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('3', 'Everything was fine, the flat has a very special charm', 7, 18);   
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('2', 'Unfortunately it does not completely promise how the pictures would imply.', 7, 21);   

INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('1', 8, 19); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('2', 9, 16); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('3', 10, 12); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 11, 6); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('5', 12, 16); 

INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('5', 'The perfect place for a couple to stay when seeing the sights.', 13, 12); 
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 'Don’t think twice ! Just go for it !! Best airbnb in town . It’s quite an experience :)', 15, 3); 
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('3', 'Wir hatten einen sehr schönen Aufenthalt.', 15, 3); 
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('3', 'Nette Gastgeber, aber Einrichtung schon etwas veraltet und abgenutzt.', 16, 1); 
INSERT INTO ratings (rating, comment, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 'Never expected the stay to be this special. The food was delicious, so was the overall arrangement of the stay.', 17, 15); 

INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('1', 15, 18); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('2', 19, 17); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('3', 20, 20); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 2, 13); 
INSERT INTO ratings (rating, rating_given_by_member_id, rating_for_accommodation_id) VALUES ('4', 17, 10); 

-- Inserting values into the 'instructor' table. 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Hans', 'Anderson', 'hans.anderson@gmail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Dave', 'Fischer', 'dave.fischer@gmail.de'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Jörg', 'Holzmann', 'JoergHolzman@cuvox.de'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Janina', 'Gersten', 'JaninaGersten@cuvox.de'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Kevin', 'Müller', 'KevinMueller@einrot.com'); 

INSERT INTO instructor (first_name, last_name, email) VALUES ('Dominik', 'Werner', 'DominikWerner@einrot.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Rene', 'Nacht', 'rene.nacht@gmail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Kristina', 'Lemann', 'lemann.kristina@web.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Caitlyn', 'Chubb', 'CaitlynChubb@gmx.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Brodie', 'Mayrhofer', 'brodie.m1993@gmail.com'); 

INSERT INTO instructor (first_name, last_name, email) VALUES ('Sara', 'See', 'see.sara1992@gmail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Claudia', 'Percy', 'percy.claudia@gmail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Zane', 'Wilder-Neligan', 'zane_wilder@googlemail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Klim', 'Biryukov', 'Klim_Biryukov@web,de'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Isabella', 'Kalinina', 'iKalinina@gmail.com'); 

INSERT INTO instructor (first_name, last_name, email) VALUES ('Paul', 'Alekseyeva', 'Paul-Alekseyeva@gmail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Karlo', 'Obad', 'karlo_o@info.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Amaury', 'Fresne', 'Fresne.Amaury@info.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Amelie', 'Avare', 'Amelie_A1989@mail.com'); 
INSERT INTO instructor (first_name, last_name, email) VALUES ('Remy', 'Ayot', 'Remy.Ayot@gmail.com'); 

-- Inserting values into the 'experiences' table. 
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Awesome Pasta', 'Cook with one of the best chefs ever: Our grandma! 
She and her sisters will show you how to prepare the perfect handmade pasta—no machines, just your hands, the freshest local ingredients, and love.' , TRUE, 25, 1, '58002'); 
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Italian Pasta', 'I will teach you how to make the real Italian pasta from scratch.
We will make two classic traditional pastas: ravioli and fettuccine. In addition to making homemade pasta we will prepare different sousec sauces: Tomato and basil, Amatriciana, Gricia, Butter and sage.' , FALSE, 10, 2, '93831');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Paneer Tikka', 'A unique foodie experience that you will never forget with Chef.', TRUE, 15, 3, '28149');
INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Cocktails', TRUE, 10, 3, '28149');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Food Kingdom', 'A unique and fun way to taste delicious food and drinks at amazing restaurants. 
Our guide Ronnie will greet you and whisk you away to sample various foods and teach you about food culture and history.', FALSE, 10, 4, '28900');

INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Best local food and ambience', 'You will meet up with your guide and the rest of 
the group at a central meeting point. After an initial welcome, all guests will be paired with their own easy-to-handle bicycle. After 
a few safety instructions you will ride on to your first stop. Although each tour is different, you can be fairly certain to see the 
following attractions on our 3-hour tour: Monuments/Memorials/Beaches/Forts', FALSE, 20, 5, '80331');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('PubCrawl Tour', 'Best Pubs in the world with vwide varieties of coktails and drinks. 
Music was good with good starters experience', TRUE, 20, 6, '80331');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Discover Munich walking tour', 
'Our most popular tour contains everything you should know about Munich. Discover the best of Munich with our great city guides: 
compact, entertaining and well-researched! Embark on an exciting tour of discovery with us to the most famous sights of the city, 
rounded off by interesting facts and surprising anecdotes, which can often surprise even locals themselves.', TRUE, 50, 7, '80469');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Biergarten-Tour in München', 'Good Group get together and good for treking. The night stay in Jungle experience was awesome followed by bounfire', TRUE, 10, 8, '80469');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Safari Experience', 
'Good Night safari, good ambience and well supported by guides.', FALSE, 5, 9, '403001');

INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Graffiti-Workshop in Brooklyn',
'This unique hands-on workshop allows participants to create their own graffiti art project with the help of an authentic NYC graffiti artist. 
Learn the tips and techniques of aerosol art from fill-ins to masterpieces as you immerse yourself in the graffiti art culture.', TRUE, 15, 10, '14999');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Relax at a weaving workshop',
'When you step into Loop of the Loom, light music and cheerful colors invite you to a pre-set loom waiting for you. 
In this experience, you will create your own tapestry in our peaceful and meditative zen weaving dojo.', TRUE, 18, 11, '14999');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Food and Footprints: Streetfood Special', 
'**We now offer a daytime version of this tour that will have several different stops** **PLEASE READ BEFORE BOOKING. 
This is an outdoor food tour with lots of walking**', TRUE, 24, 12, '19980');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('Hamburg Food Experience',
'Forget all the clichés you’re secretly harboring about German food, and eat your way around Hamburg with one of our local Hamburg hosts who can’t wait to show you that 
their city’s cuisine is a world away from the sausages, schnitzels, sauerkraut you thought you were in for. ', TRUE, 32, 13, '20357');
INSERT INTO experiences (title, description, availability, group_size, instructor_id, zip_code) VALUES ('CityTour', 
'Good local city tour and sky diving exprience with local shopping ', TRUE, 22, 14, '22003');

INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Hiking', FALSE, 12, 15, '32479');
INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Free Walking Tour', FALSE, 13, 16, '53151');
INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Workshop: Jaipur-Töpferkunst', FALSE, 15, 17, '04100');
INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Learn to make Cocktails', TRUE, 15, 18, '30010');
INSERT INTO experiences (title, availability, group_size, instructor_id, zip_code) VALUES ('Summer Capital Walk', TRUE, 15, 19, '98168');
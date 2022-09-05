DROP DATABASE IF EXISTS `airbnb_rental`;
CREATE DATABASE `airbnb_rental`; 
USE `airbnb_rental`;

/* Creates the member table which includes information about each member 
as well as an artificially created primary key. The db does not save the profile picture
itself but just a link to its storage location. */
CREATE TABLE member (
  member_id INT NOT NULL AUTO_INCREMENT,
  first_name tinytext NOT NULL,
  last_name tinytext NOT NULL, 
  gender ENUM('F', 'M', 'O'), 
  birthday DATE, 
  profile_picture varchar(100), 
  PRIMARY KEY (member_id), 
  CHECK (birthday > "1910-01-01") 
);

/* Creating the login information table that holds the email and password of the member. 
Member_ID is the Primary Key again, as one member can only have one login. */
CREATE TABLE login_info ( 
email varchar(50) NOT NULL, 
password varchar(20) NOT NULL, 
member_id INT NOT NULL,
PRIMARY KEY (member_ID), 
CONSTRAINT FK_member_login FOREIGN KEY (member_id) REFERENCES member(member_id) 
ON DELETE CASCADE ON UPDATE CASCADE,
UNIQUE(email)
);

/* Creating the contact information table that holds an optional phone number of the member. 
The phone number is the primary key, as one member can have more than one phone number.
The member_id references the member table and creates a link between the two tables. */
CREATE TABLE contact_info (
phone varchar(20) NOT NULL, 
member_id INT NOT NULL,
PRIMARY KEY (phone), 
CONSTRAINT FK_member_contact FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* This statement creates the city table used to store information about a city. 
The zip_code is the natural primary key. A city can only belong to one of the listet countries. */
CREATE TABLE city (
zip_code varchar(10) NOT NULL, 
cityname mediumtext, 
country ENUM('Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Angola', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Australia', 'Austria',
'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 
'Botswana', 'Brazil', 'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cote d''Ivoire', 'Cabo Verde', 'Cambodia', 'Cameroon', 'Canada', 
'Central African Republic', 'Chad', 'Chile', 'China', 'Colombia', 'Comoros', 'Congo', 'Costa Rica', 'Croatia', 'Cuba', 'Cyprus', 
'Czechia', 'Democratic Republic of the Congo', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 
'Equatorial Guinea', 'Eritrea', 'Estonia', 'Eswatini', 'Ethiopia', 'Fiji', 'Finland', 'France', 'Gabon', 'Gambia', 'Georgia', 'Germany', 
'Ghana', 'Greece', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Holy See', 'Honduras', 'Hungary', 'Iceland', 
'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kuwait', 
'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Madagascar', 'Malawi', 
'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Mauritania', 'Mauritius', 'Mexico', 'Micronesia', 'Moldova', 'Monaco', 'Mongolia', 
'Montenegro', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 
'North Korea', 'North Macedonia', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestine State', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 
'Philippines', 'Poland', 'Portugal', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 
'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 
'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Korea', 'South Sudan', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Sweden', 
'Switzerland', 'Syria', 'Tajikistan', 'Tanzania', 'Thailand', 'Timor-Leste', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 
'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay', 'Uzbekistan', 
'Vanuatu', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'Zimbabwe'),
PRIMARY KEY (zip_code) 
);

/* This statement creates the table to store member address data. 
It references to tables and therefore has two foreign keys: zip_code and member_id. 
It also has an artificial primary key, the address_id. */
CREATE TABLE member_address (
address_id INT NOT NULL AUTO_INCREMENT, 
street mediumtext, 
house_number INT, 
member_id INT NOT NULL, 
zip_code varchar(10) NOT NULL,
PRIMARY KEY (address_id), 
CONSTRAINT FK_member_zip FOREIGN KEY (zip_code) REFERENCES city(zip_code) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT FK_member_address FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* With this table, information about coupons and vouchers are stored. Each coupons gets an individual coupons_id, 
which is the primary key of the table. It's auto_incremented from the number 100 onwards. 
A coupon always belongs to one specific member. A member can have more than one coupon. */
CREATE TABLE coupons (
coupons_id INT NOT NULL AUTO_INCREMENT, 
description varchar(200) DEFAULT 'Standard Coupon', 
amount decimal(10,2), 
expiry_date date, 
redeemed boolean, 
member_id INT NOT NULL, 
PRIMARY KEY (coupons_id), 
CONSTRAINT FK_member_coupons FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* The social media information of a member is stored in a separate table, since it can 
theoretically be expanded continuously. More networks can always be added, etc. 
It is optional for a member if he has none, one or more social media profiles.*/
CREATE TABLE social_media (
member_id INT NOT NULL, 
instagram_url varchar(300), 
facebook_url varchar(300), 
PRIMARY KEY (member_id), 
CONSTRAINT FK_member_social FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Possibility to store payment_method information in this table. */
CREATE TABLE payment_methods (
payment_method_id INT NOT NULL AUTO_INCREMENT,
paypal_email VARCHAR(50), 
paypal_verification boolean, 
credit_card_no varchar(50), 
credit_card_verification boolean,
member_id INT NOT NULL, 
PRIMARY KEY (payment_method_id),
CONSTRAINT FK_member_payment FOREIGN KEY (member_id) REFERENCES member(member_id) 
ON DELETE CASCADE ON UPDATE CASCADE
);

/* Creates a table for all hosts on the plattform. Every host is automatically a guest, 
but not every guest is a host. 
Therefore, the host inherits the properties of a normal member from the corresponding 
table (member_id as foreign key). */
CREATE TABLE host (
host_id INT NOT NULL AUTO_INCREMENT, 
member_id INT NOT NULL, 
PRIMARY KEY (host_id), 
CONSTRAINT FK_member_host FOREIGN KEY (member_id) REFERENCES member(member_id) 
ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

/* This statement creates a table for all available accommodation. 
A host can offer more than one accommodation, 
but an accommodation always belongs to exactly one host. */
CREATE TABLE accommodation (
accommodation_id INT NOT NULL AUTO_INCREMENT, 
host_id INT NOT NULL, 
description longtext,
number_of_guests_possible smallint(20), 
price_per_night decimal(10,2), 
availability boolean, 
PRIMARY KEY (accommodation_id), 
CONSTRAINT FK_acc_host FOREIGN KEY (host_id) REFERENCES host(host_id) 
ON DELETE CASCADE ON UPDATE CASCADE
); 

/* Creates booking table containing reservation information.
Checks whether end date is after start date. 
Sets a constraint on the foreign keys. Links both the accommodation and member table.   
*/
CREATE TABLE bookings (
booking_id INT NOT NULL AUTO_INCREMENT, 
start_date date, 
end_date date, 
price_total decimal(10,2), 
accommodation_id INT NOT NULL,
member_id INT NOT NULL, 
PRIMARY KEY (booking_id), 
CONSTRAINT FK_accommodation_id_booking FOREIGN KEY (accommodation_id) 
REFERENCES accommodation(accommodation_id) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_member_bookings FOREIGN KEY (member_id) 
REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE, 
CHECK (start_date < end_date) 
);

/* Creates "invoice" table, referencing the "bookings" table through the booking_id as foreign key. 
Additionally references the "coupons" table through the coupons_id attribute. 
Information about which member the invoice belongs to can be retrieved via the booking_id. */
CREATE TABLE invoice (
invoice_id INT NOT NULL AUTO_INCREMENT, 
booking_id INT NOT NULL, 
coupons_id INT, 
payable_amount decimal(10,2), 
payment_date date, 
invoice_payed boolean,
PRIMARY KEY (invoice_id),
CONSTRAINT FK_invoice_booking FOREIGN KEY (booking_id) REFERENCES bookings(booking_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT FK_invoice_coupons FOREIGN KEY (coupons_id) REFERENCES coupons(coupons_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

/* Table to store information about how much money the company needs to pay to 
the hosts for their accommodation offering. 
We assume: Each host gets 92,5% of the total payable_amount. 
The company keeps 7.5% of the revenue as commission. 
*/
CREATE TABLE payments_to_host (
invoice_id INT NOT NULL, 
host_id INT NOT NULL, 
payable_amount_to_host decimal(10,2),
PRIMARY KEY (invoice_id, host_id), 
CONSTRAINT payments_invoice_host FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT host_id_payments FOREIGN KEY (host_id) REFERENCES host(host_id) 
ON DELETE CASCADE ON UPDATE CASCADE
);

/* 
The table records whether there was a cancellation of the booking and which invoice is affected. 
In real world settings, the amount of the refund would be based on when the cancellation occurred. 
For simplicity, it is assumed for this project that the full amount is refunded at any time. 
*/ 
CREATE TABLE cancellations (
booking_id INT NOT NULL, 
invoice_id INT NOT NULL, 
refund decimal(10,2), 
PRIMARY KEY (booking_id, invoice_id), 
CONSTRAINT cancellations_invoice FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT cancellations_bookings FOREIGN KEY (booking_id) REFERENCES bookings(booking_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT
);

/* Similar to the member_address table, this sequence creates a table for the accommodation addresses. 
It references the accommodation as well as the city table and works with an artifical primary key. */
CREATE TABLE accommodation_address (
acc_address_id INT NOT NULL AUTO_INCREMENT, 
street MEDIUMTEXT, 
house_number INT, 
accommodation_id INT NOT NULL, 
zip_code VARCHAR(10) NOT NULL,
PRIMARY KEY (acc_address_id), 
CONSTRAINT FK_acc_address_zip FOREIGN KEY (zip_code) REFERENCES city(zip_code) 
ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT FK_acc_address FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) 
ON DELETE CASCADE ON UPDATE CASCADE
);

/* A table for the storage information about pictures belonging to accommodations. 
One accommodation can have none or more than one picture, one picture always 
belongs to exactly one accommodation.  
*/
CREATE TABLE pictures (
picture_id INT NOT NULL AUTO_INCREMENT, 
accommodation_id INT NOT NULL, 
file_name mediumtext NOT NULL, 
storage_location mediumtext NOT NULL, 
alt_text mediumtext,
PRIMARY KEY (picture_id),
CONSTRAINT FK_pictures_acc FOREIGN KEY (accommodation_id) 
REFERENCES accommodation(accommodation_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Table that specifies the equipment features for the available accommodations */ 
CREATE TABLE equipment_features (
accommodation_id INT NOT NULL,
home_type ENUM('house', 'apartment', 'mobile home', 'vacation home', 'houseboat'),
room_type ENUM('whole accommodation', 'own room', 'shared room'), 
has_tv BOOLEAN, 
has_kitchen BOOLEAN, 
has_heating BOOLEAN, 
has_internet BOOLEAN, 
has_aircon BOOLEAN, 
total_bedrooms INT, 
total_bathrooms INT, 
PRIMARY KEY (accommodation_id), 
CONSTRAINT FK_acc_equipment FOREIGN KEY (accommodation_id) 
REFERENCES accommodation(accommodation_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* A table to store the ratings belonging to specific appartements. 
Linking the member who gave the rating through the member_id. 
Rating can have a value between 1 to 5 stars. Optional to leave a comment as well. */
CREATE TABLE ratings (
rating_id INT AUTO_INCREMENT NOT NULL, 
rating ENUM('1', '2', '3', '4', '5') NOT NULL, 
comment VARCHAR(300), 
rating_given_by_member_id INT NOT NULL,
rating_for_accommodation_id INT NOT NULL,
PRIMARY KEY (rating_id), 
CONSTRAINT FK_ratings_member FOREIGN KEY (rating_given_by_member_id) 
REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE, 
CONSTRAINT FK_ratings_acc FOREIGN KEY (rating_for_accommodation_id) 
REFERENCES accommodation(accommodation_id) ON DELETE CASCADE ON UPDATE CASCADE 
);

/* Creates a table with the details about instructors who offer experiences 
and activities on the plattform. 
One doesn't have to be a member to offer activities on the plattform. 
*/
CREATE TABLE instructor (
instructor_id INT AUTO_INCREMENT NOT NULL,  
first_name tinytext NOT NULL,
last_name tinytext NOT NULL, 
email varchar(50) NOT NULL,
PRIMARY KEY (instructor_id)
);

/* This statement creates the 'experiences and activities' table that 
stores information about what activities you can book in a city of choice. 
It references the tables 'city' as well as 'instructor' via foreign keys. */
CREATE TABLE experiences (
activity_id INT AUTO_INCREMENT NOT NULL, 
title TEXT, 
description LONGTEXT, 
availability BOOLEAN, 
group_size INT, 
instructor_id INT NOT NULL, 
zip_code VARCHAR(10) NOT NULL,
PRIMARY KEY (activity_id), 
CONSTRAINT FK_experiences_zip FOREIGN KEY (zip_code) 
REFERENCES city(zip_code) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT FK_experiences_instructor FOREIGN KEY (instructor_id) 
REFERENCES instructor(instructor_id) ON DELETE CASCADE ON UPDATE CASCADE
);

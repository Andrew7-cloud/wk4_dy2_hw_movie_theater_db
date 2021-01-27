-- create table
Create Table customers
(customer_id SERIAL, first_name varchar(50), last_name varchar(50), address varchar(50), billing_info varchar(50));

-- visually confirm the table exists
select * from customers;

-- inserting rows into the new table  
INSERT INTO customers (first_name, last_name, address, billing_info) 
VALUES ('Mrs Robert Dupree', 'Mrs. Dupree', '456 Main St','texas');

-- visualy observing new records
select * from customers;


-- create table
Create Table concessions
(receipt_id SERIAL, amount numeric(10,2), product_id INTEGER);

--visually confirm creation of table
select * from concessions;

--  add records
-- adding data into the concessions table   
INSERT INTO concessions (amount, product_id) 
VALUES (30.00,3);

--visually confirm creation of concessions
select * from concessions;


-- create tickets table
Create Table tickets
(ticket_id SERIAL PRIMARY KEY, channel_purchase VARCHAR(100), time date, amount numeric(10,2),movie_id INTEGER);

--visually confirm creation of table
select * from tickets;

-- adding data into the concessions table   
INSERT INTO tickets (channel_purchase, time, amount,movie_id) 
VALUES ('Fandango in theater and online','2017-07-23',10.00,1);

select * from tickets;


-- create movies table
Create Table movies
(ticket_id SERIAL PRIMARY KEY, channel_purchase VARCHAR(100), time date, amount numeric(10,2),movie_id INTEGER);

select * from movies;

-- adding data into the concessions table   
INSERT INTO movies (channel_purchase, time, amount,movie_id) 
VALUES ('Fandango in theater and online','2017-07-23',10.00,1);

VALUES ('Fear and Loathing in Las Vegas','2020-07-07',11.00,2);


VALUES ('Fandango in theater and online','2017-07-23',10.00,1);


select * from movies;




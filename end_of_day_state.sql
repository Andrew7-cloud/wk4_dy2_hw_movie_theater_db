-- Changing database structure when needed
--  Following commands/ clauses are a part of DDL Staments 
-- Statements we use to change database are:
--  ALTER UPDATE/ SET, DELETE/ WHERE, ADD(Uses with an ALTER statement), DROP

-- ALTER statement for the order_tbl

-- find order table
ALTER TABLE order_tbl
-- column to be affected
ALTER COLUMN order_id
-- command to make change
DROP NOT NULL;

-- result: ERROR:  column "order_id" is in a primary key
--  SQL state: 42P16


-- Update for the order_tbl table.  changing order data

select * from order_tbl;

-- update order_tbl table2
update order_tbl
SET order_date = '2021-01-27'
WHERE order_date = '2021-01-26' and cart_id =1;


-- DELETE statement from brand where the seler_id is 1

--  deletes the data associated with seller_id (does not delete the table)

select * from brand;

DELETE FROM brand
WHERE seller_id=1;


-- Add Statement, customer table

select * from customer;

-- adding a column 
ALTER TABLE customer
add email varchar(200);

select * from customer;

update customer
set email ='joelc@codingtemple.com'
where customer_id=1;

select * from customer;

-- drop statement for removing table from database

-- safest way to drop a table, cut off all relationships within and among all objects
DROP TABLE cart CASCADE;














-- insert a row of data into the customer table
insert into customer(customer_id,first_name,last_name,address,billing_info)
VALUES (1,'Joel','Carter','555 Circle Dr','4242-4242-4242-4242 623 05/24');

select * from customer;

-- insert a row of data into the brand table
insert into brand(seller_id,brand_name,contact_number,address)
VALUES (1,'Coding tTemple LLC','775-555-4490','222 W Ontario St Chicago Il');

select * from brand;

-- insert a row of data into the inventory table
insert into inventory(upc,product_amount)
VALUES (1,20);

select * from inventory;


-- insert a row of data into the cart table
insert into cart(cart_id,customer_id)
VALUES (1,1);

select * from cart;


--  insert data row into order_tbl table
insert into order_tbl(order_id,sub_total, total_cost,cart_id)
VALUES (1,40.00,45.50,1);

select * from order_tbl;

--  insert data row into product table
insert into product(item_id,amount,product_name,seller_id,upc)
VALUES (1,20.00,'Python 101',1,1);

select * from product;




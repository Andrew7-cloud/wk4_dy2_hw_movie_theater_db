--  Primary Key can't be empty or be a duplicated.  This is a table constraint.

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

CREATE TABLE brand (
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(150),
	contact_number VARCHAR(20),
	address VARCHAR(150)
);


CREATE TABLE inventory (
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER
);

# customer_id is a column inside?
CREATE TABLE cart (
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	-- references from 
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE order_tbl (
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(10,2),
	total_cost NUMERIC(10,2),
	cart_id INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id)
	
);


CREATE TABLE product (
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(10,2),
	product_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	upc INTEGER NOT NULL,
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id),
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);







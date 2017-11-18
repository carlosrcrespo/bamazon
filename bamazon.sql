DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

-- Then create a Table inside of that database called products. 
CREATE TABLE product(

-- The products table should have each of the following 

-- columns: item_id (unique id for each product) product_name 
		item_id INTEGER NOT NULL,
-- (Name of product) department_name price (cost to customer) 
		name_product VARCHAR(100),
-- stock_quantity (how much of the product is available in stores)
		stock_qty INTEGER NOT NULL

);

-- Populate this database with around 10 different products. 
-- (i.e. Insert "mock" data rows into this database and table).
INSERT INTO product(item_id, name_product, stock_qty)
VALUES(01, "Lucky Brand Jeans", 347);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(02, "Lucky Brand Heels", 89);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(03, "Gaba Neurotransmitter", 780);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(04, "Morrocon Floor Pillows", 63);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(05, "Raspberry Pi3 + Kit", 123);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(06, "Wireless Apple Mac Keyboard", 18);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(07, "Bob Marley and the Wailers Album", 210);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(08, "Ancient Civilization Technologies Book", 14);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(09, "Solar Patio String Lights in a Jar", 3);

INSERT INTO product(item_id, name_product, stock_qty)
VALUES(10, "Meditation Rug", 32);

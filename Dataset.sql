DROP TABLE IF EXISTS `customer`;
DROP TABLE IF EXISTS `products`;
DROP TABLE IF EXISTS `payment`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `seller`;
DROP TABLE IF EXISTS `shopping_order`;
DROP TABLE IF EXISTS `deliveries`;
DROP TABLE IF EXISTS `transaction_reports`;


CREATE TABLE `customer` (
`customer_ID` INT(11) PRIMARY KEY NOT NULL,
`name` VARCHAR(55) NOT NULL,
`contact` VARCHAR(40) NOT NULL,
`address` VARCHAR(255) NOT NULL);

CREATE TABLE `products` (
`product_ID` INT(11) PRIMARY KEY NOT NULL,
`product_name` VARCHAR(55) NOT NULL,
`price` INT(11) NOT NULL,
`description` TEXT NOT NULL COMMENT 'Description/Details of Product ',
`category` INT(11) NOT NULL);

CREATE TABLE `payment` (
`payment_ID` INT(11) PRIMARY KEY NOT NULL COMMENT 'Payment ID Number',
`customer_ID` INT(11) NOT NULL COMMENT 'Name of Customer',
`product_name` VARCHAR(150) NOT NULL COMMENT 'Name of Product',
`date` DATE NOT NULL COMMENT 'Date of Product Payment ');

CREATE TABLE `categories` (
`category_ID` INT(11) PRIMARY KEY NOT NULL,
`category_name` VARCHAR(55) NOT NULL,
`category_type` VARCHAR(40) NOT NULL);

CREATE TABLE `seller` (
`seller_ID` INT(11) PRIMARY KEY NOT NULL,
`product_ID` INT(11) NOT NULL,
`name` VARCHAR(55) NOT NULL,
`contact_address` VARCHAR(255) NOT NULL);

CREATE TABLE `shopping_order` (
`order_ID` INT(11) PRIMARY KEY NOT NULL,
`customer_ID` INT(11) NOT NULL,
`date` DATE NOT NULL);

CREATE TABLE `deliveries` (
`delivery_ID` INT(11) PRIMARY KEY NOT NULL,
`order_ID` INT(11) NOT NULL,
`customer_ID` INT(11) NOT NULL,
`product_ID` INT(11) NOT NULL,
`date` DATE NOT NULL);

CREATE TABLE `transaction_reports` (
`report_ID` INT(11) PRIMARY KEY NOT NULL,
`customer_ID` INT(11) NOT NULL,
`order_ID` INT(11) NOT NULL,
`product_ID` INT(11) NOT NULL,
`payment_ID` INT(11) NOT NULL,
`date` DATE NOT NULL);

ALTER TABLE `products` ADD CONSTRAINT `products_category_categories_category_ID` FOREIGN KEY (`category`) REFERENCES `categories`(`category_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `payment` ADD CONSTRAINT `payment_customer_ID_customer_customer_ID` FOREIGN KEY (`customer_ID`) REFERENCES `customer`(`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `seller` ADD CONSTRAINT `seller_product_ID_products_product_ID` FOREIGN KEY (`product_ID`) REFERENCES `products`(`product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `shopping_order` ADD CONSTRAINT `shopping_order_customer_ID_customer_customer_ID` FOREIGN KEY (`customer_ID`) REFERENCES `customer`(`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `deliveries` ADD CONSTRAINT `deliveries_order_ID_shopping_order_order_ID` FOREIGN KEY (`order_ID`) REFERENCES `shopping_order`(`order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `deliveries` ADD CONSTRAINT `deliveries_customer_ID_customer_customer_ID` FOREIGN KEY (`customer_ID`) REFERENCES `customer`(`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `deliveries` ADD CONSTRAINT `deliveries_product_ID_products_product_ID` FOREIGN KEY (`product_ID`) REFERENCES `products`(`product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `transaction_reports` ADD CONSTRAINT `transaction_reports_customer_ID_customer_customer_ID` FOREIGN KEY (`customer_ID`) REFERENCES `customer`(`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `transaction_reports` ADD CONSTRAINT `transaction_reports_order_ID_shopping_order_order_ID` FOREIGN KEY (`order_ID`) REFERENCES `shopping_order`(`order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `transaction_reports` ADD CONSTRAINT `transaction_reports_product_ID_products_product_ID` FOREIGN KEY (`product_ID`) REFERENCES `products`(`product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `transaction_reports` ADD CONSTRAINT `transaction_reports_payment_ID_payment_payment_ID` FOREIGN KEY (`payment_ID`) REFERENCES `payment`(`payment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

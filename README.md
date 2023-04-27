# database_development

This is a demonstration of how a database can be designed, modelled and developed by the use of Unified Modelling Language (UML) diagrams.
This was actualized using an online shopping system as a case study.

## UML Diagrams

- Activity diagram
- Entity-Relationship diagram
- Class diagram
- Use case diagram

## Database

### Tables

- `customer`
- `products`
- `payment`
- `categories`
- `seller`
- `shopping_order`
- `deliveries`
- `transaction_reports`

### Foreign key relationship

```sql 

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

```
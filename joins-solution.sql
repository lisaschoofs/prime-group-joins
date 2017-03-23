Exercise
For each of the following questions

Write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
Write the SQL query that answers the question, below that comment.
Once one person writes half of the queries, switch off.

--EVERYTHING WILL BE A SELECT

--Get all customers and their addresses.
SELECT *
FROM "customers" JOIN "addresses"
ON "customers"."id" = "addresses"."customer_id";

--Get all orders and their line items.
SELECT *
FROM "orders" JOIN "line_items"
ON "orders"."id" = "line_items"."order_id";

--Which warehouses have cheetos?
--only one! delta
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" = 'cheetos';


--Which warehouses have diet pepsi?
--three! alpha, delta, gamma
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" = 'diet pepsi';


--IGNORE TIL LATER
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


--How many customers do we have?
--4!
SELECT count(*) FROM "customers";

--How many products do we carry?
--7!
SELECT count(*) FROM "products";

--What is the total available on-hand quantity of diet pepsi?
--92
SELECT SUM("on_hand") FROM "warehouse_product"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" = 'diet pepsi';

--1
SELECT * FROM Customers;
--2
SELECT product_name,category FROM Products
WHERE(Price BETWEEN 5000 AND 10000);
--3
SELECT * FROM Products 
ORDER BY Price DESC;
--4
SELECT COUNT(*),AVG(total_amount),MIN(total_amount),MAX(otal_amount),Product_id 
FROM Orders
GROUP BY Product_id;
--5
SELECT COUNT(*),Customer_id FROM Orders GROUP BY Customer_id HAVING COUNT(*)>2;
--6
SELECT COUNT(*),
    MONTH(OrderDate)
FROM Orders
GROUP BY MONTH(OrderDate);
--7
SELECT o.product_name,
    o.customer_name,
    o.OrderDate
FROM Orders o
    INNER JOIN  Product ON Products.Product_id = Orders.Product_id,
    INNER JOIN  Customer ON Customers.Customer_id = Orders.Customer_id
    ;
    --8
    SELECT * FROM Orders
    WHERE OrderDate>=ADD_MONTH(Now(),3);
    --9
SELECT *
FROM Customer
    INNER JOIN
        Orders ON Orders.Customer_id <> Customer.Customer_id;
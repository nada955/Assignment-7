

1- SELECT orderNumber,SUM(orderNumber) AS TotalNum FROM `orderdetails` GROUP BY orderNumber;


2- SELECT emp.employeeNumber,emp.firstName,emp.lastName,mang.reportsTo,mang.firstName,mang.lastName
FROM `employees` AS emp JOIN employees AS mang
ON emp.employeeNumber = mang.reportsTo;

3- SELECT firstName,lastName FROM `employees` WHERE officeCode = 7;


4- SELECT employees.officeCode,employees.firstName,employees.lastName,offices.city,offices.officeCode
 FROM `employees` JOIN offices ON employees.officeCode = offices.officeCode WHERE city='london';



5- SELECT customers.customerNumber,customers.customerName, orders.orderNumber,orderdetails.priceEach,SUM(priceEach)
 FROM `customers` JOIN orders JOIN orderdetails
ON customers.customerNumber = orders.customerNumber
and orders.orderNumber = orderdetails.orderNumber
GROUP BY priceEach;


-- SELECT customers.customerName,orders.orderNumber FROM `customers` JOIN orders JOIN orderdetails
-- ON customers.customerNumber = orders.customerNumber;


-- SELECT customers.customerNumber,customers.customerName,orders.orderNumber, orders.orderNumber,orderdetails.priceEach
--  FROM `customers` JOIN orders JOIN orderdetails
-- ON customers.customerNumber = orders.customerNumber
-- and orders.orderNumber = orderdetails.orderNumber;


-- SELECT customers.customerName,customers.contactFirstName,customers.contactLastName,orders.customerNumber as orderNumber,orderdetails.priceEach , SUM(priceEach)
-- FROM `customers` JOIN orders JOIN orderdetails
-- ON customers.customerNumber = orders.customerNumber
-- AND orders.orderNumber = orderdetails.orderNumber
-- GROUP BY priceEach;
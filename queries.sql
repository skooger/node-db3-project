-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM Product
INNER JOIN Category ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT id, ShipName
FROM [Order]
WHERE OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, quantity
FROM OrderDetail as O
JOIN Product as P ON O.ProductID = P.Id
WHERE O.OrderID = '10251'
ORDER BY P.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT O.Id as 'Order ID', C.CompanyName as 'Order By', E.LastName as 'Employee'
FROM [Order] as O
JOIN Employee as E ON O.EmployeeId = E.Id
JOIN Customer as C ON O.CustomerId = C.Id
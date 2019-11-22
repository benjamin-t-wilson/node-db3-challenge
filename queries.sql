-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT productname AS product,
       categoryname AS category
  FROM product
       JOIN
       category ON categoryid = category.id
 GROUP BY productname
 ORDER BY productname;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT id,
       companyname
  FROM [order]
       JOIN
       shipper ON shipvia = shipper.id
 WHERE [order].orderdate < "2012-08-09"
 ORDER BY [order].id;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT product.productname,
       orderdetail.quantity
  FROM product
       JOIN
       orderdetail ON product.id = productid
 WHERE orderdetail.orderid = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].id AS [Order ID],
       shipname AS [Customer Name],
       employee.lastname AS [Ordered By]
  FROM [order]
       JOIN
       employee ON [order].EmployeeId = employee.id;
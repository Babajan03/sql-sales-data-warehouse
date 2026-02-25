INSERT INTO DimCustomer (CustomerID, CustomerName, City)
SELECT CustomerID, CustomerName, City
FROM Customers;

INSERT INTO DimProduct (ProductID, ProductName, Category)
SELECT ProductID, ProductName, Category
FROM Products;

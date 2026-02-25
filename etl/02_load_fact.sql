INSERT INTO FactSales (CustomerKey, ProductKey, Quantity, TotalAmount, OrderDate)
SELECT 
    dc.CustomerKey,
    dp.ProductKey,
    o.Quantity,
    o.Quantity * p.Price,
    o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
JOIN DimCustomer dc ON c.CustomerID = dc.CustomerID
JOIN DimProduct dp ON p.ProductID = dp.ProductID;

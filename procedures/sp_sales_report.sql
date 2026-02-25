CREATE PROCEDURE sp_GetSalesByCity
AS
BEGIN
    SELECT 
        d.City,
        SUM(f.TotalAmount) AS TotalRevenue
    FROM FactSales f
    JOIN DimCustomer d ON f.CustomerKey = d.CustomerKey
    GROUP BY d.City
    ORDER BY TotalRevenue DESC;
END;

-- Sales by Region
SELECT r.RegionName, SUM(f.SalesAmount) AS TotalSales
FROM DWDAYSALESFACT f
JOIN DWREGION r ON f.RegionKey = r.RegionKey
GROUP BY r.RegionName;

-- Product Performance
SELECT p.ProductName, SUM(f.QuantitySold) AS TotalSold
FROM DWDAYSALESFACT f
JOIN DWPRODUCT p ON f.ProductKey = p.ProductKey
GROUP BY p.ProductName;
-- Customers
INSERT INTO DWCUSTOMER VALUES (1, 'John Doe', 'Lakeland', 'FL');
INSERT INTO DWCUSTOMER VALUES (2, 'Jane Smith', 'Orlando', 'FL');

-- Products
INSERT INTO DWPRODUCT VALUES (1, 'Laptop', 'Electronics');
INSERT INTO DWPRODUCT VALUES (2, 'Phone', 'Electronics');

-- Region
INSERT INTO DWREGION VALUES (1, 'Central', 'FL', 'South');

-- Time
INSERT INTO DWTIME (TimeKey, FullDate, Year, Month, MonthName)
VALUES (1, '2026-01-01', 2026, 1, 'January');

-- Vendor
INSERT INTO DWVENDOR VALUES (1, 'TechSupplier', 'USA', 'FL');

-- Fact table
INSERT INTO DWDAYSALESFACT VALUES (1, 1, 1, 1, 1, 1, 1200.00, 1, 300.00);
INSERT INTO DWDAYSALESFACT VALUES (2, 2, 2, 1, 1, 1, 800.00, 2, 200.00);

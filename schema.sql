CREATE TABLE DWDAYSALESFACT (
    SalesKey INT PRIMARY KEY,
    CustomerKey INT,
    ProductKey INT,
    VendorKey INT,
    RegionKey INT,
    TimeKey INT,
    SalesAmount DECIMAL(10,2),
    QuantitySold INT,
    Profit DECIMAL(10,2)
);

CREATE TABLE DWCUSTOMER (
    CustomerKey INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50)
);

CREATE TABLE DWPRODUCT (
    ProductKey INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);
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

CREATE TABLE DWREGION (
    RegionKey INT PRIMARY KEY,
    RegionName VARCHAR(100),
    State VARCHAR(50),
    Territory VARCHAR(50)
);

CREATE TABLE DWTIME (
    TimeKey INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    MonthName VARCHAR(20)
);

CREATE TABLE DWVENDOR (
    VendorKey INT PRIMARY KEY,
    VendorName VARCHAR(100),
    Country VARCHAR(50),
    State VARCHAR(50)
);

CREATE TABLE DWDAYSALESFACT (
    SalesKey INT PRIMARY KEY,
    CustomerKey INT,
    ProductKey INT,
    VendorKey INT,
    RegionKey INT,
    TimeKey INT,
    SalesAmount DECIMAL(10,2),
    QuantitySold INT,
    Profit DECIMAL(10,2),
    FOREIGN KEY (CustomerKey) REFERENCES DWCUSTOMER(CustomerKey),
    FOREIGN KEY (ProductKey) REFERENCES DWPRODUCT(ProductKey),
    FOREIGN KEY (VendorKey) REFERENCES DWVENDOR(VendorKey),
    FOREIGN KEY (RegionKey) REFERENCES DWREGION(RegionKey),
    FOREIGN KEY (TimeKey) REFERENCES DWTIME(TimeKey)
);

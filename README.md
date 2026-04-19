# Sales Data Warehouse and Business Intelligence System

## Overview
This project demonstrates the design and implementation of a Sales Data Warehouse using a star schema to support business intelligence and decision-making.

## System Architecture
The system consists of:
- Data Sources (sales, customer, product, vendor, region)
- ETL Process (Extract, Transform, Load)
- Data Warehouse (Star Schema)
- Query and Reporting Layer

## Database Structure
The warehouse includes:

### Fact Table
- DWDAYSALESFACT

### Dimension Tables
- DWCUSTOMER
- DWPRODUCT
- DWVENDOR
- DWREGION
- DWTIME

## Implementation
The system is implemented using SQL scripts and follows a star schema design with enforced relationships between fact and dimension tables
- Create tables
- Load data
- Perform analytical queries
- Enforces referential integrity using foreign key constraints

## Sample Query
```sql
SELECT r.RegionName, SUM(f.SalesAmount) AS TotalSales
FROM DWDAYSALESFACT f
JOIN DWREGION r ON f.RegionKey = r.RegionKey
GROUP BY r.RegionName;
## System Diagrams

### Star Schema
![Star Schema](star-schema.png)

### Data Flow Diagram
![Data Flow](data-flow.png)

### System Architecture
![Architecture](architecture.png)

### Detailed Schema
![Detailed Schema](schema-detailed.png)

## Files Included
- [Schema](schema.sql) – Creates the data warehouse tables (fact and dimension tables)
- [Sample Data](sample_data.sql) – Inserts sample records into the tables
- [Queries](queries.sql) – Contains analytical queries for reporting and insights

### Diagrams
- Star Schema Diagram (`star-schema.png`)
- Data Flow Diagram (`data-flow.png`)
- System Architecture (`architecture.png`)
- Detailed Schema (`schema-detailed.png`)

### Documentation
- Project Design Document (`project desing doc.docx`)

## How to Run
1. Run schema.sql
2. Run sample_data.sql
3. Run queries.sql

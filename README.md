*# Analyze Data in a Model Car Database with MySQL Workbench*

## Overview
This project involves analyzing the inventory data of the fictional **Mint Classics Company** to support data-driven business decisions regarding warehouse storage and inventory management. As an entry-level data analyst, the objective is to assess how inventory can be reorganized or reduced to facilitate the closure of one storage facility while maintaining timely order fulfillment.

## Project Scenario
Mint Classics Company is a retailer specializing in classic model cars and vehicles. The company is considering shutting down one of its storage facilities and requires insights to:
- Reorganize inventory efficiently
- Reduce excess stock
- Ensure products can still be shipped within **24 hours** of order placement

The analysis involves writing **SQL queries** to extract meaningful insights from the relational database.

## Objectives
- Explore the current inventory across warehouses
- Identify key factors influencing inventory reorganization or reduction
- Provide **data-driven recommendations** for closing a warehouse

## Key Analytical Questions
1. **Which warehouse has the fewest orders, and can it be eliminated?**
2. **Are there overstocked products with low sales?**
3. **Which products have never been ordered?**
4. **Who are the most valuable customers, and what do they frequently purchase?**
5. **What are the payment trends, and are there any overdue payments?**

## SQL Queries & Analysis
The following SQL scripts were executed to answer the key analytical questions:

| File Name | Analysis |
|-----------|----------|
| `Fewest Orders Warehouse.sql` | Identifies the warehouse with the least number of orders (Warehouse South). |
| `Low-Inventory Warehouses.sql` | Examines warehouses with low inventory levels. |
| `Overdue Payments.sql` | Analyzes overdue customer payments to improve cash flow. |
| `Overstocked Low-Sales.sql` | Finds products with excessive stock but low sales, such as the **1985 Toyota Supra**. |
| `Payment Trends.sql` | Reviews payment trends for better financial planning. |
| `Top Customers and Frequent Products.sql` | Identifies the most valuable customers and their purchasing habits. |
| `Unordered Products.sql` | Finds products that have never been ordered, like the **1985 Toyota Supra**. |
| `Warehouse Inventory Percentage.sql` | Calculates inventory distribution across warehouses:
  - **North**: 23%
  - **East**: 39%
  - **West**: 22%
  - **South**: 14%

## Tools & Technologies Used
- **MySQL Workbench** for database queries
- **SQL** for data extraction and analysis
- **GitHub** for version control and documentation

## Recommendations
Based on the analysis, the following actions are recommended:
1. **Close Warehouse South**, as it has the lowest inventory and order volume.
2. **Reduce stock** for slow-moving products like the **1985 Toyota Supra**.
3. **Enhance customer targeting** based on frequent purchases of top customers.
4. **Improve payment collections** to reduce overdue amounts.

## How to Use This Repository
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/mint-classics-analysis.git
   ```
2. Import the `mintclassicsDB.sql` database into **MySQL Workbench**.
3. Execute the provided `.sql` scripts to generate insights.


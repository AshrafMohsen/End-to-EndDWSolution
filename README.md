# Multinational Manufacturing Data Warehouse Project

This repository contains the implementation of a data warehousing project for the Multinational Manufacturing company. 
The project involves building a comprehensive data warehouse from the AdventureWorks2022 source system, creating staging and dimensional tables, and Designing a Tabular model using a combination of SQL Server Integration Services (SSIS), SQL Server Analysis Services (SSAS), and Power BI, and creating a report with SQL Server Reporting Services (SSRS)

## Project Overview

The project follows these main steps:

1. **Staging Tables with SSIS**: In this step, the raw data is extracted from the AdventureWorks2022 source system and loaded into staging tables using SQL Server Integration Services (SSIS). 
The ETL (Extract, Transform, Load) processes are meticulously designed to ensure data quality, consistency, and integrity. 
SQL scripts are utilized within SSIS packages to create and populate staging tables, leveraging the power of SQL's data manipulation capabilities. 
This ensures that the data is clean, standardized, and ready for further processing.

2. **Dimensional Modeling**: The staged data is transformed and loaded into the dimensional model, following industry-standard dimensional modeling techniques. Dimension tables, including Conformed and Role Playing dimensions, are created using SQL scripts. 
Advanced SQL concepts are employed to implement Slowly Changing Dimensions (SCD), allowing historical data tracking and analysis. 
This step showcases your expertise in SQL as you design complex queries and logic to handle dimension updates, inserts, and historical changes. 
The result is a well-structured dimensional schema that forms the foundation for meaningful analysis.

3. **Tabular Model with SSAS**: A Tabular model is designed using SQL Server Analysis Services (SSAS). This model provides a semantic layer for data exploration and efficient querying. Leveraging the SQL skills acquired earlier, you define relationships, hierarchies, and calculated columns within the Tabular model. The SQL expertise translates seamlessly into DAX (Data Analysis Expressions), as you create measures that encapsulate business logic and calculations.

4. **DAX Measures**: Data Analysis Expressions (DAX) measures are created in the Tabular model to calculate and aggregate key metrics. Building on your SQL proficiency, you formulate DAX expressions to define measures such as Total Sales Quantity. These measures enhance the analytical capabilities of the Tabular model, making it a powerful tool for data-driven decision-making.

5. **Power BI Visualization**: Power BI is used to connect to the Tabular model and create interactive visualizations. With the foundation of SQL-driven data structures and DAX measures, you design insightful dashboards and reports. The seamless integration of Power BI with the Tabular model allows for dynamic exploration of data, further highlighting the impact of your SQL-driven backend.

6. **Report Development with SSRS**: SQL Server Reporting Services (SSRS) is used to create interactive and paginated reports based on the data in the data warehouse . This report serve as a key component of the project's reporting solution. 

## Screenshots

Here are some screenshots showcasing different aspects of the project:

- ![**SSIS_FactResellerSales**: Screen illustrating the ETL process for Fact Reseller Sales.}(https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_FactResellerSales.JPG)

- ![**SSIS_FactInternetSales**: Screen showcasing the ETL process for Fact Internet Sales.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_FactInternetSales.JPGg)

- ![**SSIS_ERP_increment**: Screenshot depicting the incremental loading process from the ERP system.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_ERP_increment.JPG)

- ![**SSIS_ERP_Address**: Screenshot demonstrating the ETL process for ERP addresses.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_ERP_Address.JPG)

- ![**SSIS_ERP**: Screen capturing the general ETL process from the ERP system.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_ERP.JPG)

- ![**SSIS_DimEmployee**: Screenshot displaying the ETL process for the Employee dimension.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSIS_DimEmployee.JPG)

- ![**DWH Schema**: Screenshot illustrating the Data Warehouse Schema with Slowly Changing Dimensions (SCD) and Conformed/Role-Playing Dimensions.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/DWH%20Schema.JPG)

- ![**Power BI**: Screenshot of the Power BI dashboard displaying visualizations.](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/Power%20BI.JPG)

- ![**SSRS Report**:A visual representation of the Internet Sales report created with SQL Server Reporting Services (SSRS).](https://github.com/AshrafMohsen/End-to-EndDWSolution/blob/master/Screenshots/SSRS%20Report.JPG)



## Repository Contents

- `StagingScripts/`: SQL scripts for creating and populating staging tables.
- `DWScripts/`: SQL scripts for creating the data warehouse dimension and fact tables.
- `SSISPackages/`: SSIS packages for ETL processes.
- `SSASModel/`: Files related to the Tabular model in SSAS.
- `PowerBIReports/`: Power BI reports for data visualization.
- `SSRS Report/`:  Contain SQL Server Reporting Services reports for generating detailed and formatted reports.
- `AdventureWorks/`: AdventureWorks2022 source data.
- `Screenshots/`: Screenshots of different project aspects.
- `README.md`: Project overview, and details.



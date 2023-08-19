# Multinational Manufacturing Data Warehouse Project

This repository contains the implementation of a data warehousing project for the Multinational Manufacturing company. 
The project involves building a comprehensive data warehouse from the AdventureWorks2022 source system, creating staging and dimensional tables, and Designing a Tabular model using a combination of SQL Server Integration Services (SSIS), SQL Server Analysis Services (SSAS), and Power BI.

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

## Data Source

The project uses data from the AdventureWorks2022 source system. You can find the source data file at the following link:
[AdventureWorks2022 Source Data](https://drive.google.com/file/d/1MzE_1whZyw7fr0GK1tGc4qvZqcqTQ6QK/view?usp=drive_link)

## Repository Contents

- `StagingScripts/`: SQL scripts for creating and populating staging tables.
- `DWScripts/`: SQL scripts for creating the data warehouse dimension and fact tables.
- `SSISPackages/`: SSIS packages for ETL processes.
- `SSASModel/`: Files related to the Tabular model in SSAS.
- `PowerBIReports/`: Power BI reports for data visualization.
- `README.md`: Project overview, and details.

## Getting Started

1. Clone this repository to your local machine.
2. Set up the staging and data warehouse tables using the provided SQL scripts, utilizing SQL's power to structure and manage data.
3. Use SSIS to load data from the source system into the staging tables, showcasing your SQL proficiency in data transformation.
4. Create the Tabular model in SSAS based on the dimensional schema, with SQL-driven constructs and DAX measures.
5. Deploy the SSAS model and connect to it using Power BI for visualization, showcasing the synergy between SQL and visualization.

# Customer Data Management DEPI


## Project Overview

![Project Overview](https://github.com/Welloz03/customer-data-management-depi/blob/cb4c5707bdad92716e78ac62c85fb88b4bc692d5/Images/Work%20Flow.png)

This project is part of the **Digital Egypt Pioneers Initiative (DEPI)** under the Microsoft Data Engineer track. The primary goal is to build a robust, end-to-end **customer data management** solution to facilitate better business insights, improve operational efficiency, and drive customer satisfaction. The project integrates data engineering best practices using tools such as **SQL, SSIS, Python, and Power BI** for managing and analyzing customer data.

This project implements various stages of data engineering, including **data modeling, ETL (Extract, Transform, Load) pipelines**, and **data visualization** through dashboards.

### Key Objectives:
- **Design and implement a database schema** for efficient storage and retrieval of customer data.
- **Develop ETL pipelines** using SSIS and Python to automate data extraction, transformation, and loading.
- **Create interactive Power BI dashboards** to visualize and analyze customer behaviour and performance metrics.


---

## Table of Contents
1. [Project Background](#project-background)
2. [Technical Stack](#technical-stack)
3. [Database Design](#database-design)
4. [Data Modeling](#data-modeling)
5. [ETL with SSIS](#etl-with-ssis)
6. [ETL with Python](#etl-with-python)
7. [Power BI Dashboard](#power-bi-dashboard)


---

## Project Background

> **Customer Data Management Project**  
> _Empowering businesses with data-driven decisions through cutting-edge engineering._

The **Customer Data Management Project** focuses on building a comprehensive **data pipeline** that seamlessly collects, processes, and transforms customer data from various sources into **valuable insights**. By **automating** data handling and visualization, businesses can make more informed decisions, leading to improved **customer satisfaction** and enhanced **operational performance**.

### 🌐 Why It Matters:
- 📊 **Data Automation**: Streamlines data processing to minimize manual tasks.
- 🔄 **Real-time Insights**: Allows for quick, data-driven business decisions.
- 🔧 **Optimization**: Ensures high **scalability**, **data integrity**, and optimal **performance** across business operations.

This project is aligned with **modern data engineering best practices**, ensuring flexibility, **scalability**, and **robust data management** for organizations looking to leverage customer data for better business outcomes.


---

## Technical Stack

The following tools and technologies are used in this project:

- ![SQL Server](https://img.icons8.com/color/48/000000/microsoft-sql-server.png) **SQL Server:** For database design, schema creation, and querying.
- ![SSIS](https://img.icons8.com/color/48/000000/microsoft.png) **SSIS (SQL Server Integration Services):** For building ETL workflows to automate data extraction, transformation, and loading.
- ![Python](https://img.icons8.com/color/48/000000/python.png) **Python:** Utilized for custom ETL operations, including data cleansing, transformation, and loading into the database using libraries like **Pandas** and **PySpark**.
- ![Power BI](https://img.icons8.com/color/48/000000/power-bi.png) **Power BI:** Used to create dashboards for data visualization and reporting.
- ![GitHub](https://img.icons8.com/ios-glyphs/48/000000/github.png) **GitHub:** For version control and project collaboration.


---

## Database Design

The database for this project is built on SQL Server, using a **snowflake schema** for optimal performance in querying large datasets.

### Key Components:
- **Schema Design:** Defines tables and relationships, ensuring normalized data storage to reduce redundancy.
- **Fact Tables:** Stores measurable events (e.g., customer purchases).
- **Dimension Tables:** Stores descriptive attributes related to facts (e.g., customer details, products).

#### Database Schema:

The schema includes several tables, each representing a different entity in customer data:

- `Customers`
- `Orders`
- `Sales`
- `Locations`
- `Interactions`
- `Payments`

## Database Schema

The database schema for this project is designed to efficiently store and manage customer data, providing clear relationships between the various tables.

### Schema Diagram
![Database Schema](https://github.com/Welloz03/customer-data-management-depi/blob/cb4c5707bdad92716e78ac62c85fb88b4bc692d5/Images/Database.jpg)
*A visual representation of the database schema, showing the relationships between tables such as `Customers`, `Orders`, `Products`, and more.*



---

## Data Modeling

**Dimensional modeling** is used to structure the data in a way that is easy to query and analyze, making it suitable for **OLAP** (Online Analytical Processing) environments.

- **Star Schema:** A design where a central fact table is surrounded by related dimension tables, simplifying data retrieval and improving query performance.
- **Customer Data Model:** Captures customer interactions with the business, such as sales transactions, customer profiles, and regional data.

![Star Schema Diagram](https://github.com/Welloz03/customer-data-management-depi/blob/cb4c5707bdad92716e78ac62c85fb88b4bc692d5/Images/DWH.jpg) 

### Data Exploration
The data exploration phase includes SQL queries to examine customer behavior and trends. Insights gained here will help shape the ETL processes and dashboards.

![Data Exploration Insights](https://github.com/Welloz03/customer-data-management-depi/blob/2d8b20c6e752f76946bdfd48c2e43671c33a5b57/Images/DE%201.png) 
![Data Exploration Insights](https://github.com/Welloz03/customer-data-management-depi/blob/2d8b20c6e752f76946bdfd48c2e43671c33a5b57/Images/DE%202.png) 
![Data Exploration Insights](https://github.com/Welloz03/customer-data-management-depi/blob/2d8b20c6e752f76946bdfd48c2e43671c33a5b57/Images/DE%203.png) 
![Data Exploration Insights](https://github.com/Welloz03/customer-data-management-depi/blob/2d8b20c6e752f76946bdfd48c2e43671c33a5b57/Images/DE%204.png) 
---

## ETL with SSIS

**SSIS (SQL Server Integration Services)** is used for automating the ETL process, handling tasks such as data extraction from source systems, transformation (data cleaning and mapping), and loading it into the SQL database.

### Key Tasks:
- **Data Flow:** From raw customer data (CSV files, SQL tables) to transformed data loaded into SQL Server.
- **Data Transformation:** Performed using SSIS components, applying data cleaning, validation, and business logic.

![SSIS Package Diagram](https://github.com/Welloz03/customer-data-management-depi/blob/72934af96e327c551907aa064f4513f5d0fe5d0c/Images/SSIS%20.png) 
![SSIS Package Diagram](https://github.com/Welloz03/customer-data-management-depi/blob/72934af96e327c551907aa064f4513f5d0fe5d0c/Images/SSIS%20Packages.png) 


---

## ETL with Python

Python is leveraged to develop an alternative ETL pipeline using powerful libraries such as **Pandas** and **PySpark**. Python is chosen for its versatility, scalability, and ease of use for custom transformations.

### Python ETL Process:
1. **Extract:** Pull customer data from external files (CSV, JSON, etc.).
2. **Transform:** Apply business rules, clean the data, and prepare it for analysis.
3. **Load:** Insert transformed data into the SQL database or a data warehouse.

![ETL With Python](https://github.com/Welloz03/customer-data-management-depi/blob/dcc197b8c009adc05635f1206de738e456566f08/Images/PY%201.png) <!-- Replace with the actual path to your Extract image -->
![ETL With Python](https://github.com/Welloz03/customer-data-management-depi/blob/dcc197b8c009adc05635f1206de738e456566f08/Images/PY%202.png) <!-- Replace with the actual path to your Extract image -->

---

## Power BI Dashboard

The **Power BI Dashboard** serves as the primary tool for visualizing customer data, providing business insights through interactive charts and graphs. It integrates data from the SQL Server and visualizes key metrics such as customer purchases, sales trends, and regional performance.

## Dashboard Visualizations

### Key Visualizations:
- **Overall Overview:** A comprehensive snapshot of key metrics and performance indicators for executives.
- **Sales by Region:** Geographical map displaying sales trends across different regions.
- **Customer Overview:** Dashboard summarizing customer profiles and purchasing behaviour.

We focused on enhancing the user experience by sketching the layout and implementing a slicer panel and navigation buttons, making it easier for users to interact with the dashboard.

![Executive Overview](https://github.com/Welloz03/customer-data-management-depi/blob/dcc197b8c009adc05635f1206de738e456566f08/Images/Exec%20Page.png) 
![Map Visualization](https://github.com/Welloz03/customer-data-management-depi/blob/dcc197b8c009adc05635f1206de738e456566f08/Images/Map.png)
![Customer Detail](https://github.com/Welloz03/customer-data-management-depi/blob/dcc197b8c009adc05635f1206de738e456566f08/Images/Customer%20Detail.png)

## Team Members

- [Mohamed Wael](https://github.com/Welloz03)
- [Kareem Nagah](https://github.com/kareemNagah) 
- [Ahmed Gabr](https://github.com/member3) 
- [Omar Abdelbadea](https://github.com/member3) 
- [Mahmoud Afandy](https://github.com/member3) 








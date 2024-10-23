# Cuatomer Data Management DEPI


## Project Overview

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

The **Customer Data Management Project** focuses on building a data pipeline that collects and processes customer data from various sources, transforming it into meaningful insights. By automating data processing and visualization, businesses can make more informed decisions, improving customer satisfaction and operational performance.

This project is aligned with modern data engineering practices, ensuring scalability, data integrity, and performance optimization.

---

## Technical Stack

The following tools and technologies are used in this project:

- **SQL Server:** For database design, schema creation, and querying.
- **SSIS (SQL Server Integration Services):** For building ETL workflows to automate data extraction, transformation, and loading.
- **Python:** Utilized for custom ETL operations, including data cleansing, transformation, and loading into the database using libraries like **Pandas** and **PySpark**.
- **Power BI:** Used to create dashboards for data visualization and reporting.
- **GitHub:** For version control and project collaboration.

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
- `Products`
- `Sales`
- `Locations`

**SQL Queries:**
- Schema creation: [`database/schema.sql`](database/schema.sql)
- Table creation: [`database/table_creation.sql`](database/table_creation.sql)
- Data exploration: [`database/data_exploration.sql`](database/data_exploration.sql)

---

## Data Modeling

**Dimensional modeling** is used to structure the data in a way that is easy to query and analyze, making it suitable for **OLAP** (Online Analytical Processing) environments.

- **Snowflake Schema:** Used to organize data into fact and dimension tables.
- **Customer Data Model:** Captures customer interactions with the business, such as sales transactions, customer profiles, and regional data.

### Data Exploration:
The data exploration phase includes SQL queries to examine customer behavior and trends. Insights gained here will help shape the ETL processes and dashboards.

---

## ETL with SSIS

**SSIS (SQL Server Integration Services)** is used for automating the ETL process, handling tasks such as data extraction from source systems, transformation (data cleaning and mapping), and loading it into the SQL database.

### Key Tasks:
- **Data Flow:** From raw customer data (CSV files, SQL tables) to transformed data loaded into SQL Server.
- **Data Transformation:** Performed using SSIS components, applying data cleaning, validation, and business logic.

The SSIS package used in this project can be found in:
- **SSIS Package:** [`etl_ssis/ssis_package.dtsx`](etl_ssis/ssis_package.dtsx)

---

## ETL with Python

Python is leveraged to develop an alternative ETL pipeline using powerful libraries such as **Pandas** and **PySpark**. Python is chosen for its versatility, scalability, and ease of use for custom transformations.

### Python ETL Process:
1. **Extract:** Pull customer data from external files (CSV, JSON, etc.).
2. **Transform:** Apply business rules, clean the data, and prepare it for analysis.
3. **Load:** Insert transformed data into the SQL database or a data warehouse.

Python scripts:
- **Extract:** [`etl_python/extract.py`](etl_python/extract.py)
- **Transform:** [`etl_python/transform.py`](etl_python/transform.py)
- **Load:** [`etl_python/load.py`](etl_python/load.py)

---

## Power BI Dashboard

The **Power BI Dashboard** serves as the primary tool for visualizing customer data, providing business insights through interactive charts and graphs. It integrates data from the SQL Server and visualizes key metrics such as customer purchases, sales trends, and regional performance.

### Key Visualizations:
- **Sales by Region:** Geographical map displaying sales trends across different regions.
- **Customer Overview:** Dashboard summarizing customer profiles, purchasing behavior, and loyalty.
- **Product Performance:** Bar charts showing product sales and performance metrics.

Power BI Files:
- **Dashboard File:** [`power_bi_dashboard/dashboard.pbix`](power_bi_dashboard/dashboard.pbix)
- **Dashboard Screenshots:** [`power_bi_dashboard/report_screenshots/`](power_bi_dashboard/report_screenshots/)

---


1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/Customer-Data-Management-Project.git
   cd Customer-Data-Management-Project

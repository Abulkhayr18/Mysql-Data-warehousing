# Mysql-Data-warehousing
# ETL Process in MySQL

## Overview
This project demonstrates an automated ETL process implemented using MySQL. It includes:
- Data loading from a CSV file.
- Data transformation using SQL.
- Storage in a dimensional schema with indexing.

## Features
- **Dimensional Modeling:** Star schema with fact and dimension tables.
- **Stored Procedure:** Encapsulated ETL logic for reuse.
- **Automation:** Event scheduling for periodic data loading.

## Technologies Used
- MySQL Workbench
- MySQL Events for automation
- CSV file as data source

## Steps
1. **Create Tables:**
   - Scripts for creating fact and dimension tables.
2. **Load Data:**
   - Data loaded into a staging table.
3. **Transform and Load:**
   - Data cleaned and transformed using SQL.
4. **Automation:**
   - Scheduled execution of ETL process using MySQL Events.

## Repository Structure
- **`sql_scripts/`**: Contains SQL files for table creation, ETL logic, and event scheduling.
- **`sample_data.csv`**: Sample dataset used for the project.
- **`images/`**: Visualizations such as the database schema.

## Getting Started
### Prerequisites
- MySQL Workbench installed.
- Access to a MySQL server.
- Sample dataset.

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ETL-Project.git
   cd ETL-Project

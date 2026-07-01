# COVID-19 Ontario (2020) Data Analysis Pipeline

## Overview

This project builds an end-to-end data analytics pipeline using confirmed COVID-19 case data reported in Ontario during 2020. The pipeline extracts data from a CSV file, performs basic cleaning using Python, loads the data into PostgreSQL, transforms the data using SQL, and visualize key insights in Power BI.

## Data Source

The COVID-19 case data for this project was obtained from Ontario Open Datasets

Source: https://data.ontario.ca/dataset/confirmed-positive-cases-of-covid-19-in-ontario

## Tech Stack

- ETL: Python (pandas, SQLAlchemy, psycopg2)
- Databases: SQL, PostgreSQL
- Visualization: Power BI

## Findings
The final dashboard includes:
- Total confirmed COVID-19 cases
- Cases by age group
- Cases by gender
- Case trends over time
- Distribution of cases by region
- Interactive filters and slicers for data exploration

![COVID-19 Ontario Dashboard PDF](images/covid-ontario-2020-dashboard.png)

Some key insights from the dashboard:
- Toronto reported the highest mumber of confirmed COVID-19 cases, followed by Missisauga
- Individuals in their 20s accounted for the largest number of reported cases
- Reporeted COVID-19 cases increased significantly between September and December 2020
- Male and female cases were distributed similarly, with no significant difference in the total number of reported cases.


## How to Run

### 1. Clone the repo
```
git clone https://github.com/ivng929/covid-ontario-analysis.git
cd covid-ontario-analysis
```

### 2. Install dependencies
```
pip install -r requirements.txt
```

### 3. Set up environment variables
```
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=covid_ontario_db
```
### 4. Run the ETL notebook
Open `notebooks/01_etl.ipynb`

Execute all cells to create database table and load CSV into PostgreSQL.

### 5. Build your dashboard
Connect Power BI to PostgreSQL and start building your Power BI dashboard.
# COVID-19 Ontario (2020) Data Analysis Pipeline

## 1. Overview

This project builds an end-to-end data analytics pipeline using confirmed COVID-19 case data reported in Ontario during 2020. The objective is to identify where cases were concentrated, which demographic groups were most affected, and how reported cases changed over time, which can help support public health monitoring, resource allocation, and decision-making.

## 2. Research Questions
The analysis addresses the following questions:
- Where were COVID-19 cases most concentrated across Ontario?
- Which age groups accounted for the highest number of reported cases?
- How did the number of reported cases change throughout 2020?
- How were reported cases distributed between male and female groups?
- What areas or groups may require greater attention based on the observed case distribution?

## 3. Dataset
The COVID-19 case data for this project was obtained from Ontario Open Datasets

Source: https://data.ontario.ca/dataset/confirmed-positive-cases-of-covid-19-in-ontario

The dataset contains information about confirmed COVID-19 cases reported in Ontario during 2020, including case reporting dates, age group, gender, outcome, and Public Health Unit (PHU) information.

## 4. Tech Stack

- <b>ETL:</b> Python (pandas, SQLAlchemy, psycopg2)
- <b>Databases:</b> SQL, PostgreSQL
- <b>Visualization:</b> Power BI

## 5. The Analytic Workflow
The pipeline extracts data from a CSV file, performs basic cleaning using Python, loads the data into PostgreSQL, and visualize key insights in Power BI.

![Workflow](images/data-workflow.png)

### 5.1 ETL Process
The ETL pipeline consists of 3 stages

#### Extract
- Loaded the raw dataset from a CSV file using pandas.
- Inpsected the dataset for missing values and duplicate records.

#### Transform
- Standardized column names
- Removed duplicate records
- Handled missing values
- Separated the dataset into normalized tables: `covid_cases` and `reporting_phu`

#### Load
- The cleaned data was loaded into PostgreSQL using SQLAlchemy.

### 5.2 Relational Database Design
The database was normalized to reduce data redundancy by separating repeated Public Health Unit (PHU) information into its own table. As a result, there are 2 tables:
- `covid_cases`: stores individual COVID-19 case records, including reporting dates, age group, gender, outcome, and `reporting_phu_id`
- `reporting_phu`: stores information about each Public Health Unit, including its name, address, city, postal code, website, and geographic coordinates

The tables have a one-to-many relationship. Each PHU can be associated with many COVID-19 cases, while each case is linked to a PHU through `reporting_phu_id` as a foreign key.

![Database Schema](images/database-schema.png)

### 5.3 Power BI visualization
The Power BI dashboard includes:
- Total confirmed COVID-19 cases, including fatal cases
- Fatality rate by age group
- Cases by gender
- Case trends over time
- Distribution of cases by region
- Interactive filters and slicers for data exploration

![COVID-19 Ontario Dashboard PDF](images/covid-ontario-2020-dashboard.png)

## 6. Key Findings
Some key insights were observed:
- 188K confirmed cases and approximately 5K fatal cases were reported in Ontario during 2020
- Case volumne changed throughout the year: reported cases increased from near zero in January to around 20K in April, declined through April to August, then rose sharply from August to December, reaching over 60K cases by December.
- Toronto reported the highest number of cases, with over 50K cases, followed by Mississauga
- Cases were distributed similarly by gender, with approximately 50.6% femlae, 49.1% male, and 0.3% unspecified
- Fatality rates increased with age. Rates were near 0% among those under 70, rising to approximately 10% for 70s group, 20% for 80s group, and 30% for those 90+
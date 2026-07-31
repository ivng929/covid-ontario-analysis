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
-- 1. Cases by age group and gender
CREATE VIEW view_cases_by_age_gender AS
SELECT
    age_group,
    COUNT(*) AS total_cases
FROM view_covid_cases
GROUP BY age_group, client_gender;

-- 2. Cases by PHU
CREATE VIEW view_cases_by_phu AS
SELECT
    reporting_phu, 
    reporting_phu_city,
    COUNT(*) AS total_cases
FROM view_covid_clean
GROUP BY reporting_phu, reporting_phu_city
ORDER BY total_cases DESC;

-- 3. Monthy trend
CREATE VIEW view_montly_trend AS
SELECT
    DATE_TRUNC('month', case_reported_date) AS month,
    COUNT(*) AS total_cases
FROM view_covid_cases
GROUP BY month
ORDER BY month;
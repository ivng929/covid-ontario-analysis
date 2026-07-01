CREATE TABLE IF NOT EXISTS reporting_phu (
    reporting_phu_id INT PRIMARY KEY,
    reporting_phu TEXT,
    reporting_phu_address TEXT,
    reporting_phu_city TEXT,
    reporting_phu_postal_code TEXT,
    reporting_phu_website TEXT,
    reporting_phu_latitude DOUBLE PRECISION,
    reporting_phu_longitude DOUBLE PRECISION
);

CREATE TABLE IF NOT EXISTS covid_cases (
    row_id BIGINT PRIMARY KEY,
    accurate_episode_date TEXT,
    case_reported_date TEXT,
    test_reported_date TEXT,
    specimen_date TEXT,
    age_group TEXT,
    client_gender TEXT,
    outcome1 TEXT,
    reporting_phu_id INT,
    CONSTRAINT fk_covid_cases_reporting_phu
        FOREIGN KEY (reporting_phu_id)
        REFERENCES reporting_phu(reporting_phu_id)
);

TRUNCATE TABLE covid_cases, reporting_phu CASCADE
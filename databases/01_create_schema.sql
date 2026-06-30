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
    reporting_phu TEXT,
    reporting_phu_address TEXT,
    reporting_phu_city TEXT,
    reporting_phu_postal_code TEXT,
    reporting_phu_website TEXT,
    reporting_phu_latitude DOUBLE PRECISION,
    reporting_phu_longtitude DOUBLE PRECISION
);
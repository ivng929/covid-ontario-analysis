CREATE OR REPLACE VIEW view_covid_cases AS
SELECT
    row_id,
    age_group,
    client_gender,
    outcome1,

    -- convert to proper types
    case_reported_date::DATE AS case_reported_date,
    accurate_episode_date::DATE AS accurate_episode_date,
    specimen_date::DATE AS specimen_date,
    test_reported_date::DATE AS test_reported_date,

    reporting_phu,
    reporting_phu_city,
    reporting_phu_id,
    reporting_phu_latitude,
    reporting_phu_longtitude
FROM covid_cases;
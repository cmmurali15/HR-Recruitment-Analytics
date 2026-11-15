-- HR Recruitment Analytics Project
-- SQL Analytics Portfolio
-- Database: hr_analytics

USE hr_analytics;

-- 1. Verify recruitment dataset
SELECT COUNT(*) AS total_candidates
FROM recruitment_data_pyspark;

-- 2. Candidate result distribution
SELECT
    result,
    COUNT(*) AS candidate_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM recruitment_data_pyspark), 2) AS percentage
FROM recruitment_data_pyspark
GROUP BY result
ORDER BY candidate_count DESC;

-- 3. Pass rate by job role
SELECT
    job_role,
    COUNT(*) AS total_candidates,
    SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) AS passed_candidates,
    ROUND(
        SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS pass_rate_percentage
FROM recruitment_data_pyspark
GROUP BY job_role
ORDER BY pass_rate_percentage DESC;

-- 4. Pass rate by location
SELECT
    location,
    COUNT(*) AS total_candidates,
    SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) AS passed_candidates,
    ROUND(
        SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS pass_rate_percentage
FROM recruitment_data_pyspark
GROUP BY location
ORDER BY pass_rate_percentage DESC;

-- 5. Pass rate by recruitment source
SELECT
    source,
    COUNT(*) AS total_candidates,
    SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) AS passed_candidates,
    ROUND(
        SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS pass_rate_percentage
FROM recruitment_data_pyspark
GROUP BY source
ORDER BY pass_rate_percentage DESC;

-- 6. Candidate outcome distribution
SELECT
    candidate_outcome,
    COUNT(*) AS candidate_count,
    ROUND(COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM recruitment_data_pyspark), 2
    ) AS percentage
FROM recruitment_data_pyspark
GROUP BY candidate_outcome
ORDER BY candidate_count DESC;

-- 7. Selection rate by experience level
SELECT
    experience_years,
    COUNT(*) AS total_candidates,
    SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) AS selected_candidates,
    ROUND(
        SUM(CASE WHEN result = 'Pass' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS selection_rate_percentage
FROM recruitment_data_pyspark
GROUP BY experience_years
ORDER BY experience_years;
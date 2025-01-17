WITH all_days AS (
    SELECT generate_series(
        '2022-01-01'::date, 
        '2022-01-10'::date, 
        '1 day'::interval
    ) AS missing_day
),
visits AS (
    SELECT 
        person_id, 
        visit_date::date AS visit_day
    FROM 
        person_visits
    WHERE 
        person_id =1 OR person_id =2
)
SELECT 
    ad.missing_day::date
FROM 
    all_days ad
LEFT JOIN 
    visits v1 ON ad.missing_day::date = v1.visit_day AND v1.person_id = 1
LEFT JOIN 
    visits v2 ON ad.missing_day::date = v2.visit_day AND v2.person_id = 2
WHERE 
    v1.visit_day IS NULL AND v2.visit_day IS NULL
ORDER BY 
    ad.missing_day::date;

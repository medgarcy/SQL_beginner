SELECT vd.generated_date AS missing_date
FROM v_generated_dates vd
LEFT JOIN person_visits pv ON vd.generated_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY missing_date
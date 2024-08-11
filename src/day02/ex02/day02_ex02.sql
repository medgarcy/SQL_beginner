SELECT
    COALESCE(p.name, '-') AS person_name,
    pv.visit_date AS visit_date,
    COALESCE(z.name, '-') AS pizzeria_name
FROM person p 
LEFT JOIN person_visits pv ON p.id = pv.person_id AND pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03' 
LEFT JOIN pizzeria z ON z.id = pv.pizzeria_id
ORDER BY 
    person_name, visit_date, pizzeria_name; 
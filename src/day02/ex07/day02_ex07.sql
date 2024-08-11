SELECT z.name 
FROM pizzeria z
JOIN menu m ON m.pizzeria_id = z.id
JOIN person_visits pv ON pv.pizzeria_id = z.id
JOIN person p ON pv.person_id = p.id
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800

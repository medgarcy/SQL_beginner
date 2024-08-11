SELECT name AS pizzeria_name, rating 
FROM pizzeria z
LEFT JOIN person_visits pv ON pv.pizzeria_id = z.id
WHERE pv.pizzeria_id IS NULL;
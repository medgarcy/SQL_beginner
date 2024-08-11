SELECT name AS pizzeria_name 
FROM pizzeria z 
WHERE NOT EXISTS (
    SELECT 1
    FROM person_visits v
    WHERE v.pizzeria_id = z.id
)

SELECT name AS pizzeria_name
FROM pizzeria z 
WHERE id NOT IN (
    SELECT pizzeria_id
    FROM person_visits
)
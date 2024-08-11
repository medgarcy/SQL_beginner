WITH dmitriy_visit AS (
    SELECT z.name 
    FROM pizzeria z
    JOIN menu m ON m.pizzeria_id = z.id
    JOIN person_visits pv ON pv.pizzeria_id = z.id
    JOIN person p ON pv.person_id = p.id
    WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800
)
INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
    (SELECT MAX(id) + 1 FROM person_visits),
    (SELECT id FROM person WHERE name ='Dmitriy'),
    (SELECT pizzeria_id FROM menu m JOIN pizzeria z on m.pizzeria_id = z.id 
     WHERE price < 800 AND z.name NOT IN (SELECT name FROM dmitriy_visit) 
     LIMIT 1),
    '2022-01-11');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
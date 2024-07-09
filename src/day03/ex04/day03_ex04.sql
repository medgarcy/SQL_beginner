WITH GenderOrders AS (
    SELECT m.pizzeria_id, p.gender
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    GROUP BY m.pizzeria_id, p.gender
),
MenOnly AS (
    SELECT pizzeria_id
    FROM GenderOrders
    WHERE gender = 'male'
    EXCEPT
    SELECT pizzeria_id
    FROM GenderOrders
    WHERE gender = 'female'
),
WomenOnly AS (
    SELECT pizzeria_id
    FROM GenderOrders
    WHERE gender = 'female'
    EXCEPT ALL
    SELECT pizzeria_id
    FROM GenderOrders
    WHERE gender = 'male'
)
SELECT name AS pizzeria_name
FROM pizzeria
WHERE id IN (SELECT pizzeria_id FROM MenOnly)
UNION
SELECT name AS pizzeria_name
FROM pizzeria
WHERE id IN (SELECT pizzeria_id FROM WomenOnly)
ORDER BY pizzeria_name;

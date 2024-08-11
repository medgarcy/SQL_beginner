SELECT person_id
FROM person_order
WHERE order_date = '2022-01-07'
UNION
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-07'
EXCEPT
SELECT person_id
FROM person_order
WHERE order_date = '2022-01-07'
INTERSECT
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-07';

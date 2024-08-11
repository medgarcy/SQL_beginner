SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT pizza_name, z.name AS pizzeria_name
FROM menu m
JOIN pizzeria z ON z.id = m.pizzeria_id
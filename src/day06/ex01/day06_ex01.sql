WITH temp_table AS (
SELECT person_id, pizzeria_id, COUNT(person_order.id)
FROM person_order
JOIN menu ON menu_id = menu.id
GROUP BY person_id, pizzeria_id
ORDER BY person_id, pizzeria_id, count
)
INSERT INTO person_discounts
SELECT
	ROW_NUMBER() OVER () id,
	temp_table.person_id,
	temp_table.pizzeria_id,
	CASE WHEN count = 1 THEN 10.5 WHEN count = 2 THEN 22 ELSE 30 END AS discount FROM temp_table;
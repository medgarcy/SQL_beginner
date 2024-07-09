SELECT m1.pizza_name, z1.name AS pizzeria_name_1, z2.name AS pizzeria_name_2, m1.price
FROM menu m1 
JOIN pizzeria z1 ON z1.id = m1.pizzeria_id
JOIN menu m2 ON m1.pizza_name = m2.pizza_name AND m1.price = m2.price AND m1.pizzeria_id < m2.pizzeria_id
JOIN pizzeria z2 ON z2.id = m2.pizzeria_id
WHERE z1.name != z2.name
ORDER BY m1.pizza_name;

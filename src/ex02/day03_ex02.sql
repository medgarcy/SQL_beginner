SELECT m.pizza_name, m.price, z.name AS pizzeria_name
FROM menu m
JOIN pizzeria z ON z.id = m.pizzeria_id
WHERE m.id NOT IN (
    SELECT menu_id
    FROM person_order
)
ORDER BY pizza_name, price, pizzeria_name;
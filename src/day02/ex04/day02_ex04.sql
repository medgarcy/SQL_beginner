SELECT m.pizza_name, z.name AS pizzeria_name, m.price 
FROM menu m
RIGHT JOIN pizzeria z ON z.id = m.pizzeria_id
WHERE m.pizza_name = 'mushroom pizza' OR m.pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;
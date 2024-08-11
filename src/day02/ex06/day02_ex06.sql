SELECT m.pizza_name, z.name AS pizzeria_name
FROM menu m 
JOIN pizzeria z ON z.id = m.pizzeria_id
JOIN person_order po ON m.id = po.menu_id
JOIN person p ON p.id = po.person_id
WHERE p.name = 'Denis' OR p.name = 'Anna'
ORDER BY pizza_name, pizzeria_name
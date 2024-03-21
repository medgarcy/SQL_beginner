SELECT m.pizza_name, m.price, z.name AS pizzeria_name, pv.visit_date 
FROM menu m 
JOIN pizzeria z ON z.id = m.pizzeria_id
JOIN person_visits pv ON pv.pizzeria_id = z.id
JOIN person p ON pv.person_id = p.id
WHERE p.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name, visit_date
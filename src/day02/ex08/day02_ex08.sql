SELECT name  
FROM person p 
JOIN person_order po ON po.person_id = p.id 
JOIN menu m ON m.id = po.menu_id
WHERE gender = 'male' AND (p.address = 'Moscow' OR p.address = 'Samara') AND (m.pizza_name = 'mushroom pizza' OR m.pizza_name = 'pepperoni pizza')
ORDER BY name DESC
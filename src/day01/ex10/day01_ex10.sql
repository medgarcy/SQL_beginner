SELECT pn.name AS person_name,
       m.pizza_name,
       z.name AS pizzeria_name
FROM person_order p 
JOIN person pn ON pn.id = p.person_id
JOIN menu m ON m.id = p.menu_id
JOIN pizzeria z ON z.id = m.pizzeria_id
ORDER BY person_name, pizza_name, pizzeria_name
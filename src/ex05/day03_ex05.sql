SELECT z.name 
FROM person_visits pv
JOIN pizzeria z ON pv.pizzeria_id = z.id
JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Andrey'
EXCEPT
SELECT z.name
FROM person_order po 
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria z ON z.id = m.pizzeria_id
JOIN person p ON p.id = po.person_id
WHERE p.name = 'Andrey'

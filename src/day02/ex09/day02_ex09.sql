SELECT p.name
FROM person p
JOIN person_order po ON po.person_id = p.id 
JOIN menu m ON m.id = po.menu_id
WHERE p.gender = 'female'
GROUP BY p.name
HAVING SUM(CASE WHEN m.pizza_name = 'pepperoni pizza' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN m.pizza_name = 'cheese pizza' THEN 1 ELSE 0 END) > 0
ORDER BY p.name;



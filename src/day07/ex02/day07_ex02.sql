SELECT 
z.name AS name, COUNT(pv.id) AS count, 'visit' AS action_type
FROM pizzeria z
JOIN person_visits pv ON pv.pizzeria_id = z.id
GROUP BY name
UNION ALL
SELECT 
z.name AS name, COUNT(po.id) AS count, 'order' AS action_type
FROM pizzeria z
JOIN person_visits pv ON pv.pizzeria_id = z.id
JOIN person p ON pv.person_id = p.id
JOIN person_order po ON po.person_id = p.id
GROUP BY name;

SELECT 
    z.name AS name, 
    COUNT(*) AS count, 
    'visit' AS action_type
FROM 
    person_visits pv
JOIN 
    pizzeria z ON pv.pizzeria_id = z.id
GROUP BY 
   pv.pizzeria_id
UNION ALL
SELECT 
    z.name AS name, 
    COUNT(po.id) AS count, 
    'order' AS action_type
FROM 
    pizzeria z
JOIN person_visits pv ON pv.pizzeria_id = z.id
JOIN person p ON pv.person_id = p.id
JOIN person_order po ON po.person_id = p.id
GROUP BY 
    z.name
ORDER BY 
    action_type ASC, 
    count DESC;

 




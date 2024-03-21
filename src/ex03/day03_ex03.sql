SELECT z.name AS pizzeria_name
FROM pizzeria z 
JOIN ( 
    SELECT pv.pizzeria_id, COUNT(*) AS num_visits
    FROM person_visits pv 
    JOIN person p ON p.id = pv.person_id
    WHERE p.gender = 'male'
    GROUP BY pizzeria_id
    ) AS mv ON mv.pizzeria_id = z.id
JOIN ( 
    SELECT pv.pizzeria_id, COUNT(*) AS num_visits 
    FROM person_visits pv 
    JOIN person p ON p.id = pv.person_id
    WHERE p.gender = 'female'
    GROUP BY pizzeria_id
    ) AS mf ON mf.pizzeria_id = z.id  
WHERE COALESCE(mv.num_visits, 0) > COALESCE(mf.num_visits, 0)
OR COALESCE(mf.num_visits, 0) > COALESCE(mv.num_visits, 0)
ORDER BY pizzeria_name

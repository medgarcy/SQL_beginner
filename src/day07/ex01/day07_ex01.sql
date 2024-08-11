SELECT 
    person.name AS name,
    COUNT(*) AS count_of_visits
FROM 
    person
JOIN person_visits pv ON person.id = pv.person_id
GROUP BY 
    person.name
ORDER BY 
    count_of_visits DESC, 
    name ASC
LIMIT 4;
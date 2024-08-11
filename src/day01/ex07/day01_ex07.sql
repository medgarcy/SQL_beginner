SELECT p.order_date,
    CONCAT (pn.name, ' (age:',pn.age,')') AS personal_information
FROM person_order p
JOIN person pn ON p.person_id = pn.id
ORDER BY p.order_date ASC, personal_information ASC
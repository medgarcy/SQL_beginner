SELECT p.order_date,
    CONCAT (pn.name, ' (age:',pn.age,')') AS personal_information
FROM person_order AS p(person_id, id)
NATURAL JOIN person pn
ORDER BY order_date, personal_information
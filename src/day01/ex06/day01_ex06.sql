SELECT DISTINCT p.order_date AS action_date, pn.name AS person_name
FROM person_order p
JOIN person pn ON p.person_id = pn.id
WHERE
     EXISTS (
        SELECT 1
        FROM person_visits v
        WHERE v.person_id = p.person_id AND v.visit_date = p.order_date
        )
ORDER BY action_date ASC, person_name DESC
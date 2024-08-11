SELECT DISTINCT p.order_date AS action_date, p.person_id
FROM person_order p
WHERE
     EXISTS (
        SELECT 1
        FROM person_visits v
        WHERE v.person_id = p.person_id AND v.visit_date = p.order_date
        )
ORDER BY action_date ASC, person_id DESC
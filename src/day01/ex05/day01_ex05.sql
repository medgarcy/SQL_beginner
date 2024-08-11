SELECT
    p.id AS person_id,
    p.name AS person_name,
    p.age,
    p.gender,
    p.address,
    z.id AS pizzeria_id,
    z.name AS pizzeria_name,
    z.rating
FROM
    person p
CROSS JOIN
    pizzeria z
ORDER BY
    p.id ASC,
    z.id ASC;
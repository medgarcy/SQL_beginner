SELECT
	p.name,
	pizza_name,
	price,
	CAST(price * (100 - discount) / 100 as real) AS discount_price,
	z.name as pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m on m.id = po.menu_id
JOIN pizzeria z ON m.pizzeria_id = z.id
JOIN person_discounts pd ON pd.person_id = p.id AND pd.pizzeria_id = m.pizzeria_id
ORDER BY name, pizza_name;
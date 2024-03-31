INSERT INTO menu (pizza_name, id, pizzeria_id, price)
VALUES ('Sicilian pizza', (SELECT MAX(id) FROM menu) + 1, (SELECT id FROM pizzeria WHERE name = 'Dominos'), 900)
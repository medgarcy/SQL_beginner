COMMENT ON TABLE person_discounts IS 'discounts for people';
COMMENT ON COLUMN person_discounts.id IS 'Primary Key';
COMMENT ON COLUMN person_discounts.person_id IS 'key on people';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'key on pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'personal discount';
CREATE TABLE person_discounts (
    id BIGINT PRIMARY KEY,
    person_id INT,
    pizzeria_id INT,
    discount NUMERIC(5, 2),
    CONSTRAINT fk_person_discounts_person_id FOREIGN KEY (person_id) REFERENCES person(id) ON DELETE CASCADE,
    CONSTRAINT fk_person_discounts_pizzeria_id FOREIGN KEY (pizzeria_id) REFERENCES pizzeria(id) ON DELETE CASCADE
)
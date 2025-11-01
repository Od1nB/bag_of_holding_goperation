CREATE DATABASE bagofholding;

CREATE TABLE products (
    id          SERIAL       PRIMARY KEY,
    name        VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    amount      INT          NOT NULL DEFAULT 0,
    price       NUMERIC      NOT NULL DEFAULT 0.00
);

INSERT INTO products
    (name, description, amount, price)
VALUES
    ('shortsword', 'pointy sword that deals piercing 1D6 damage on hit', 13, 10);

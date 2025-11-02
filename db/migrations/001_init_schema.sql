CREATE DATABASE bagofholding;

CREATE TABLE products (
    id          SERIAL       PRIMARY KEY,
    name        VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    amount      INT          NOT NULL DEFAULT 0,
    price       NUMERIC      NOT NULL DEFAULT 0.00
);


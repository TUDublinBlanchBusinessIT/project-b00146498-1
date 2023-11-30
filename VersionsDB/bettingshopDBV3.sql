DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id INTEGER AUTO_INCREMENT,
    firstname VARCHAR(30),
    surname VARCHAR(30),
    PRIMARY KEY (id)
);

INSERT INTO customer (firstname, surname) VALUES ('Ross', 'Smith');
SELECT * FROM customer
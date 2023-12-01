DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id INTEGER AUTO_INCREMENT,
    firstname VARCHAR(30),
    surname VARCHAR(30),
    PRIMARY KEY (id)
);

INSERT INTO customer (firstname, surname) VALUES ('Ross', 'Smith');
SELECT * FROM customer


DROP TABLE IF EXISTS horsebet;
CREATE TABLE horsebet (
    id INTEGER AUTO_INCREMENT,
    horsename VARCHAR(30),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake INT,
    customerid int,
    PRIMARY KEY (id),
    foreign key(customerid) references customer(id)
    
);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, customerid) VALUES ('Ross', 'Navan', '15:00:00', '2023-10-01', 6, 50);
SELECT * FROM horsebet
CREATE DATABASE IF NOT EXISTS bettingshop;
USE bettingshop;
DROP TABLE IF EXISTS dogbet;
CREATE TABLE dogbet (
    id INTEGER AUTO_INCREMENT,
    dogname VARCHAR(30),
    trapno VARCHAR(10),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake DECIMAL(10,2),
    PRIMARY KEY (id)
);


INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Hello', 'Trap 6', 'Swindon', '15:00:00', '2023-10-06', 6.75);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Felix', 'Trap 1', 'Monmore', '17:50:00', '2023-12-25', 50.20);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Simon', 'Trap 2', 'Kinsley', '12:30:00', '2023-02-15', 12.78);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Quipid', 'Trap 3', 'Romford', '11:22:00', '2023-10-01', 2.00);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Henry', 'Trap 1', 'Sheffield', '18:42:00', '2023-12-14', 98.30);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Lola', 'Trap 6', 'Oxford', '22:00:00', '2023-01-01', 27.36);


DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id INTEGER AUTO_INCREMENT,
    firstname VARCHAR(30),
    surname VARCHAR(30),
    PRIMARY KEY (id)
);

INSERT INTO customer (firstname, surname) VALUES ('Ross', 'Smith');
INSERT INTO customer (firstname, surname) VALUES ('Ross', 'Smith');
INSERT INTO customer (firstname, surname) VALUES ('Evan', 'Kane');
INSERT INTO customer (firstname, surname) VALUES ('Steven', 'Simon');
INSERT INTO customer (firstname, surname) VALUES ('Valerie', 'Smith');
INSERT INTO customer (firstname, surname) VALUES ('Caitlin', 'Murphy');

DROP TABLE IF EXISTS horsebet;
CREATE TABLE horsebet (
    id INTEGER AUTO_INCREMENT,
    horsename VARCHAR(30),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake DECIMAL(10,2),
    odds DECIMAL(10,2),
    customerid int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerid) REFERENCES customer(id),
    FOREIGN KEY (dogbet_id) REFERENCES dogbet(id)
);

INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds, customerid) VALUES ('King', 'Navan', '17:20:00', '2023-12-12', 27, 3.2, 3);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds, customerid) VALUES ('Bugs Bunny', 'Curragh', '12:30:00', '2023-01-01', 85.3, 10.3, 1);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds, customerid) VALUES ('Ross', 'Fairyhouse', '22:00:00', '2023-10-16', 0.20, 11.20, 5);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds, customerid) VALUES ('Winnie the Pooh', 'Naas', '15:15:00', '2023-01-20', 155.20, 6.3, 2);
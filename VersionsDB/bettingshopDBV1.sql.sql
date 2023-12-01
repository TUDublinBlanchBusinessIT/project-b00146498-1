CREATE DATABASE IF NOT EXISTS bettingshop;
USE bettingshop;
DROP TABLE IF EXISTS horsebet;
CREATE TABLE horsebet (
    id INTEGER AUTO_INCREMENT,
    horsename VARCHAR(30),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake INT,
    odds DECIMAL(10,2);
    PRIMARY KEY (id)
);

INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('Ross', 'Navan', '15:00:00', '2023-10-01', 6, 5.2);

SELECT * FROM horsebet;

ALTER TABLE horsebet
MODIFY COLUMN stake DECIMAL(10,2);

INSERT INTO horsebet (horsename, place, time, dateofrace, stake)
VALUES ('Sweetie', 'Navan', '15:00:00', '2023-10-01', 25.20);

SELECT * FROM horsebet

CREATE TABLE dogbet (
    id INTEGER AUTO_INCREMENT,
    dogname VARCHAR(30),
    trapno INT,
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake INT,
    PRIMARY KEY (id)
);
INSERT INTO dogbet (dogname, trapno, place, TIME, dateofrace, stake)
VALUES ('Hello', 6, 'Curragh', '15:00:00', '2023-10-01', 6);

SELECT * FROM dogbet;

ALTER TABLE dogbet
MODIFY COLUMN stake DECIMAL(10,2);

INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake)
VALUES ('Hello', 6, 'Curragh', '15:00:00', '2023-10-01', 6.75);

SELECT * FROM dogbet;



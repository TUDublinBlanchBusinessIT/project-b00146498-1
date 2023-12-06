CREATE DATABASE IF NOT EXISTS bettingshop;
USE bettingshop;

DROP TABLE IF EXISTS customer;


DROP TABLE IF EXISTS dogbet;
CREATE TABLE dogbet (
    id INTEGER AUTO_INCREMENT,
    dogname VARCHAR(30),
    trapno VARCHAR(10),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake DECIMAL(12,2),
    PRIMARY KEY (id)
);

INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Hello', 'Trap 6', 'Swindon', '15:00:00', '2023-10-06', 6.75);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Felix', 'Trap 1', 'Monmore', '17:50:00', '2023-12-25', 50.20);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Simon', 'Trap 2', 'Kinsley', '12:30:00', '2023-02-15', 12.78);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Quipid', 'Trap 3', 'Romford', '11:22:00', '2023-10-01', 2.00);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Henry', 'Trap 1', 'Sheffield', '18:42:00', '2023-12-14', 98.30);
INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) VALUES ('Lola', 'Trap 6', 'Oxford', '22:00:00', '2023-01-01', 27.36);


DROP TABLE IF EXISTS horsebet;

CREATE TABLE horsebet (
    id INTEGER AUTO_INCREMENT,
    horsename VARCHAR(30),
    place VARCHAR(30),
    time TIME,
    dateofrace DATE,
    stake DECIMAL(12,2),
    odds DECIMAL(10,2),
    PRIMARY KEY (id)
);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('King', 'Navan', '17:20:00', '2023-12-12', 27, 3.2);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('Bugs Bunny', 'Curragh', '12:30:00', '2023-01-01', 85.3, 10.3);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('Ross', 'Fairyhouse', '22:00:00', '2023-10-16', 0.20, 11.20);
INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('Winnie the Pooh', 'Naas', '15:15:00', '2023-01-20', 155.20, 6.3);


DROP TABLE IF EXISTS footballbet;

CREATE TABLE footballbet (
    id INTEGER AUTO_INCREMENT,
    footballteam VARCHAR(30),
    score INT,
    date DATE,
    stake DECIMAL(12,2),
    PRIMARY KEY (id)
);

INSERT INTO footballbet (footballteam, score, date, stake) VALUES ('Arsenal', '3', '2023-12-12', 16);

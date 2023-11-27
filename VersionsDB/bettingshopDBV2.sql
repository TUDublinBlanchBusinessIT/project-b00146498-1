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

ALTER TABLE dogbet
MODIFY COLUMN stake DECIMAL(10,2);

INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake)
VALUES ('Hello', 6, 'Curragh', '15:00:00', '2023-10-01', 6.75);

SELECT * FROM dogbet;

ALTER TABLE dogbet
MODIFY COLUMN trapno VARCHAR(10);

ALTER TABLE horsebet
ADD COLUMN odds DECIMAL(10,2);
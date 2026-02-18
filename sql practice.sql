CREATE DATABASE college1;
USE college;

CREATE TABLE student1(
rollno INT,
name VARCHAR(30),
age INT);


INSERT INTO student1
VALUES 
(101,"ADAM",12),
(102,"ABHI",14);


SELECT * FROM student1;

CREATE DATABASE IF NOT EXISTs instagram1;

USE instagram1;

CREATE TABLE users3 (
	id INT UNIQUE,
    age INT,
    names VARCHAR(15) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13),
    PRIMARY KEY(id)
);

CREATE TABLE post1(
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users3(id)
);

INSERT INTO users3
(id,age,names,email,followers,following)
VALUES 
(1,14,"adam","adam@gmail.com",300,200),
(2,24,"Elven","eleven@gmail.com",30,33),
(3,18,"ashi","ashi@gmail.com",500,93),
(4,34,"aman","addam@gmail.com",78,73);

SELECT id,names,age FROM users3;

SELECT * FROM users3;


select distinct age from users3;

select * 
from users3
where followers >= 300;

select names,age
from users3
where followers >= 300;


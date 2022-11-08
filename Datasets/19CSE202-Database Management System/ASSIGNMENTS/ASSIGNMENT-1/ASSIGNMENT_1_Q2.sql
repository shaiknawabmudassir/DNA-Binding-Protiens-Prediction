USE ASSIGNMENT_1;

CREATE TABLE COURSES(
STUDENT VARCHAR(20) PRIMARY KEY,
CLASS VARCHAR(10) NOT NULL
);

INSERT INTO COURSES()
VALUES('A','Math'),
      ('B','English'),
      ('C','Math'),
      ('D','Biology'),
      ('E','Math'),
      ('F','Computer'),
      ('G','Math'),
      ('H','Math'),
      ('I','Math');
	
SELECT CLASS FROM COURSES GROUP BY CLASS HAVING COUNT(DISTINCT STUDENT) >= 5;
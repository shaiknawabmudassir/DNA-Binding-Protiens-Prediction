USE ASSIGNMENT_1;
CREATE TABLE Person(
id INTEGER PRIMARY KEY,
email VARCHAR(40) NOT NULL
);

INSERT INTO Person()
VALUES(1, 'a@b.com'),
	  (2, 'c@d.com'),
      (3, 'a@b.com');
      
select Email, count(Email) as num
from Person 
group by Email limit 1;
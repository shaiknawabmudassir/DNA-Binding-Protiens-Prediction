USE ASSIGNMENT_1;
CREATE TABLE SalesPerson (
  sales_id INTEGER PRIMARY KEY, 
  name Varchar(255) NOT NULL, 
  salary INTEGER NOT NULL, 
  commission_rate INTEGER NOT NULL, 
  hire_date DATE 
);

CREATE TABLE Company (
  com_id INTEGER PRIMARY KEY, 
  name Varchar(255) NOT NULL, 
  city Varchar(255) NOT NULL
);

CREATE TABLE Orders(
  order_id INTEGER PRIMARY KEY, 
  order_date DATE, 
  com_id INTEGER NOT NULL, 
  sales_id INTEGER NOT NULL,
  amount INTEGER NOT NULL 
);

INSERT INTO SalesPerson VALUES (1, 'John', 100000, 6, '2006-01-04'); 
INSERT INTO SalesPerson VALUES (2, 'Amy', 12000, 5, '2010-01-05'); 
INSERT INTO SalesPerson VALUES (3, 'Mark', 65000, 12, '2008-12-25'); 
INSERT INTO SalesPerson VALUES (4, 'Pam', 25000, 25, '2005-01-01'); 
INSERT INTO SalesPerson VALUES (5, 'Alex', 5000, 10, '2007-03-02');

INSERT INTO Company VALUES (1, 'RED', 'Boston'); 
INSERT INTO Company VALUES (2, 'ORANGE', 'New York'); 
INSERT INTO Company VALUES (3, 'YELLOW', 'Boston'); 
INSERT INTO Company VALUES (4, 'GREEN', 'Austin');

INSERT INTO Orders VALUES (1, '2014-01-01', 3, 4, 10000);
INSERT INTO Orders VALUES (2, '2014-01-02', 4, 5, 5000);
INSERT INTO Orders VALUES (3, '2014-01-03', 1, 1, 50000);
INSERT INTO Orders VALUES (3, '2014-01-03', 1, 1, 50000);
INSERT INTO Orders VALUES (4, '2014-01-04', 1, 4, 25000);

SELECT name FROM SalesPerson WHERE sales_id NOT IN (SELECT distinct 
sales_id FROM Orders WHERE com_id = (SELECT com_id FROM Company WHERE 
name = 'RED'));
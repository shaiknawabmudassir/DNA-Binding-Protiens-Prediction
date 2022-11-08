USE ASSIGNMENT_1;
CREATE TABLE Cinemas(
id INTEGER PRIMARY KEY,
movie VARCHAR(40) NOT NULL,
description VARCHAR(100) NOT NULL,
rating float
);

INSERT INTO Cinemas()
VALUES(1,'War','great 3D',8.9),
      (2,'Science','fiction',8.5),
      (3,'irish','boring',6.2),
      (4,'Ice song','Fantacy',8.6),
      (5,'House card','Interesting',9.1);

select *
from Cinemas
where mod(id, 2) = 1 and description != 'boring' order by rating desc;
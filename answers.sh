# myDatabase
# 1
 SELECT  
name FROM students 

# 2
SELECT *
FROM students 
WHERE Age>30

# 3
SELECT 
name
 FROM students
 WHERE Gender= 'F'   AND Age>30

#  4
SELECT 
 Points
 FROM students
 WHERE name like'alex'

#  5
INSERT INTO students (ID, name, Age, Gender, Points)
VALUES
( 7, 'qamar', 21, 'F', NULL) 

# 6
UPDATE students SET  Points=300+3
WHERE name like 'basma'

# 7
UPDATE students SET  Points=200-1
WHERE name like 'alex'

# creating a table 
CREATE TABLE graduate (
ID INTEGER  PRIMARY KEY  AUTOINCREMENT NOT NULL  ,
name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);

# 10
INSERT INTO graduate (id, name, Age, Gender, Points)
SELECT *
FROM students
WHERE name = 'Layal'


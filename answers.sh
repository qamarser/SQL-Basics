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

# 11
UPDATE graduate
 SET Graduation='08/09/2018'
 WHERE name like 'layal'

#  12
DELETE FROM students 
WHERE name like 'layal'


# 14
CREATE VIEW combined as #reusable query that reflects real-time data; 
# Temporary Tables: When you need to store data temporarily for processing or when you don’t need the table to persist after your session.
SELECT e.name, 
e.Company, 
c.date
FROM employees e 
JOIN companies c 
ON c.id=e.id;

# 15
SELECT name FROM combined 
WHERE date<2000

# 16
SELECT Company 
FROM employees
WHERE Role like 'graphic designer'

# 18
SELECT max(Points)
FROM students;

# 19
SELECT avg(Points)
FROM students;

# 20
SELECT name
FROM students
WHERE Points=500

# 21
SELECT name
FROM students
WHERE name like '%s%'

# 22
SELECT * FROM students
ORDER by Points DESC
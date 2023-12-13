use exam1; 
CREATE TABLE teaches (id int, course_id varchar(255), 
sec_id int, semester varchar(255) , year int);
INSERT INTO teaches VALUES (10101 , 'CS-101' , 1 , 'Fall' , 2009),
(10101 , 'CS-315' , 1 , 'Spring' , 2010) ; 
SELECT * FROM teaches ; 
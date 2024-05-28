create database STUDENT_DETAIES
CREATE TABLE STUDENTS(STUDENT_ID INT PRIMARY KEY,
student_name VARCHAR(100),
 date_of_birth DATE,
 email VARCHAR(30),
 major varchar(30))
insert into STUDENTS values( 1,'naveen','1999-3-12','naveen@gmail.com','computer_science')
select * from students STUDENT_DETAIES
insert into students values (2,'kavita','1998-4-21','kavita@gmal.com','social_science'),
(3,'surya','1999-6-15','surya@gmal.com','matametics'),(4,'lalu','1998-8-1','lalu1@gmal.com','computer_science'),
(5,'ravi','1998-12-21','ravi@gmal.com','physics')

create table courses(course_id int Primary Key, course_name varchar(30), credit_hours int , instructor varchar(100))
insert into courses values(101,'physics',3,'travesh'),(102,'chemisty',2,'roji'),(103,'computer_science',4,'henrry'),
(104,'social_science',3,'jona'),(105,'matametices',2,'kevin')
select * from courses

# Retrieve the list of students who are majoring in a specific major (e.g., Computer Science)
select * from students where major ='computer_science'

#Retrieve the list of students who were born before a specific date.
select * from students where date_of_birth < '1999-03-12'

# Retrieve the list of courses taught by a specific instructor.
select * from courses where instructor = 'kevin'

# Retrieve the total number of students enrolled in each major.
select major,count(*) as total_number from students group by major

#Retrieve the course with the highest number of credit hours
select max(credit_hours) as highest_credit_hours from courses

# Retrieve the oldest and youngest students in the database.
select * from students order by date_of_birth asc limit 1 
select * from students order by date_of_birth desc limit 1

# Add a new course to the Courses table.
insert into courses values (106,'enviroment',4,'roji')
select * from courses

# Enroll a new student in the Students table.
select * from students
insert into students values (6,'sangu','1997-06-15','sangu@gmail.com','computer_science')

# Update the email address of a student based on their student_id.
update students set email= 'ravikumar@gmail.com' where student_id= 5

create table enrollmentss(enrollments_id int primary key, enrollments_detaies varchar(30), student_id int,course_id int) 
select *from enrollmentss

# Retrieve the list of students who are enrolled in a specific course.
SELECT * FROM Students WHERE student_id IN (SELECT student_id FROM Enrollmentss WHERE course_id = 101)

# Retrieve the list of courses with enrollments greater than a certain number.
SELECT * FROM Courses WHERE course_id IN (SELECT course_id FROM Enrollmentss GROUP BY course_id HAVING COUNT(*));





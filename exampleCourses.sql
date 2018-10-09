# in the beginning from home button, when you try to create connection
# make sure you have mysql on your machine and see connection success
# after that create your database
create database if not exists courses;
use courses;
# use means declare default database courses database which you created
# secondly we need our tables
create table if not exists student_table(
					student_id int not null auto_increment primary key,
                    student_name varchar(20),
                    student_lastname varchar(20),
                    birthday_year int,
                    birthday_city varchar(20));
# primary key means student id suppose to be unique like fingerprint,
# everyone has different id, different student id
# int means integer value type, varchar means Variable character,
# varchar(20) means that variable can be least 20 character
# if not exists means check to table already exists if its not create it
create table if not exists courses(
					course_id int not null auto_increment primary key,
                    course_name varchar(20),
                    student_id int,
                    course_credit int,
                    course_teacher varchar(20),
                    foreign key (student_id) references student_table(student_id));
show tables; #means show tables which you created
# insert values inside to tables
# las_insert_id means check id before you pushed id and took it from that table for foreign key
insert into student_table values(
				null,"kaan","ozbudak",1997,"ankara");
insert into courses values(
				null,"databases",last_insert_id(),5,"pervaneh");
insert into student_table values(
				null,"eray","surmeli",1997,"aydin");
insert into courses values(
				null,"databases",last_insert_id(),5,"pervaneh");
insert into student_table values(
				null,"eto","acar",1996,"istanbul");
insert into courses values(
				null,"advenced",last_insert_id(),5,"adem");
insert into student_table values(
				null,"eto","acar",1996,"istanbul");
insert into courses values(
				null,"databases",last_insert_id(),5,"pervaneh");
insert into student_table values(
				null,"efe","uslu",1997,"trabzon");
insert into courses values(
				null,"databases",last_insert_id(),5,"pervaneh");

select * from student_table;
select * from courses;
# check are tables filled or not
# if you success lets check something else for example
select * from student_table where birthday_city = "aydin";
select * from courses where course_teacher = "pervaneh";

select student_name from student_table;

select * from student_table where birthday_year = 1997 and birthday_city = "istanbul";

select * from courses where course_name = "databases" or course_credit = 5;

select * from student_table order by student_id;
 
update student_table set student_name = "ertugrul" where student_name = "eto";

delete from courses where course_id = 3;

select min(student_id) from student_table;

select max(course_id) from courses;

select count(student_id) from student_table;

select avg(birthday_year) from student_table;

select sum(course_credit) from courses;

select * from student_table where student_name like "ka%";

select * from student_table inner join courses on student_table.student_id = courses.student_id;

select * from student_table left join courses on student_table.student_id = courses.student_id;

select * from student_table right join courses on student_table.student_id = courses.student_id;

select (2018-birthday_year) from student_table where (birthday_year) >= 20;

select * from student_table order by (2018-birthday_year);

# you can find every query every query type from w3schools. you can google it.  I'm not sure, may be i had mistake on it, forgive me. 
# run every select query single request and keep continue.
# if you have question, if you have an advise please send e mail to me, kaanozbudak@hotmail.com , thanks for hard working
# sources: https://www.w3schools.com/sql/default.asp
# created by kaanozbudak, computer engineer 3. year student.
# please give star my github projects. 
# https://github.com/kaanozbudak
# https://www.linkedin.com/in/kaanozbudak/ 
		






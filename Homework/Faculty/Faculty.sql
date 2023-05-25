-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Faculty\Faculty.sql

drop database if exists Faculty;
create database Faculty;
use Faculty;

create table student(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	id_number char(11)
);

create table course(
	id int not null primary key auto_increment,
	name varchar(100),
	description varchar (200)
);

create table term(
	id int not null primary key auto_increment,
	date datetime,
	course int
);

create table student_term(
	id int not null primary key auto_increment,
	student int not null,
	term int not null
);

alter table student_term add foreign key (student) references student (id);
alter table student_term add foreign key (term) references term (id);
alter table term add foreign key (course) references course (id);

insert into student (id,firstname,lastname,id_number)
	values
			(null,'Zlatko','Panjić','21378764202'),
			(null,'Emil','Hadžić','71346581854'),
			(null,'Duje','Ivanović','50484497824'),
			(null,'Ivana','Bogdan','94359048825'),
			(null,'Manuela','Mitrović','53835662727');

insert into course (id,name,description)
	values	
			(null,'Osnove ekonomije 1','Prvi kolegij iz ekonomije;osnove ekonomske misli, temeljna ekonomska načela'),
			(null,'Računovodstvo 1','Drugi kolegij iz ekonomije; teorijsko i praktično znanje iz područja računovodstva');

insert into term (id,date,course)
	values 
			(null,'2023-03-15 09:00:00','1'),
			(null,'2023-03-28 12:00:00','1'),
			(null,'2023-04-07 09:00:00','2'),
			(null,'2023-04-21 09:00:00','2');

insert into student_term (id,student,term)
	values
			(null,'1','1'),
			(null,'1','2'),
			(null,'2','1'),
			(null,'2','2'),
			(null,'3','1'),
			(null,'3','2'),
			(null,'4','1'),
			(null,'4','2'),
			(null,'5','1'),
			(null,'5','2');

update student set firstname='Ivona' where id=4;

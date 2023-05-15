drop database if exists isvu;

create database isvu;

use isvu;

create table student(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	jmbag char(10)
);

create table course(
	id int not null primary key auto_increment,
	name varchar(50),
	ects int,
	description varchar(200)
);

create table academic_year(
	id int not null primary key auto_increment,
	name varchar(50),
	startdate datetime,
	enddate datetime
);

create table student_course(
	id int not null primary key auto_increment,
	student int,
	course int,
	dateofenrollment datetime,
	academic_year int
);

alter table student_course add foreign key (student) references student (id);
alter table student_course add foreign key (academic_year) references academic_year (id);
alter table student_course add foreign key (course) references course (id);




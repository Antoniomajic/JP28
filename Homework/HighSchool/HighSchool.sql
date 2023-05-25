-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\HighSchool\HighSchool.sql

drop database if exists HighSchool;
create database HighSchool;
use HighSchool;

create table student(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	sex char(1),
	class int
);

create table professor(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	id_number char(11)
);

create table class(
	id int not null primary key auto_increment,
	name varchar(3),
	maxstudents varchar(2)
);

create table class_professor(
	id int not null primary key auto_increment,
	class int not null,
	professor int not null
);

alter table student add foreign key (class) references class (id);
alter table class_professor add foreign key (class) references class (id);
alter table class_professor add foreign key (professor) references professor (id);

select * from professor;

insert into class (id,name,maxstudents)
	values
			(null,'1.A','20'),
			(null,'1.B','22'),
			(null,'1.C','21');

insert into student (id,firstname,lastname,sex,class)
	values
			(null,'Matej','Kokot','M','1'),
			(null,'Dinko','Frijang','M','1'),
			(null,'Zdravko','Krajinović','M','2'),
			(null,'Marija','Džaja','Ž','3');

insert into professor (id,firstname,lastname,id_number)
	values
			(null,'Matija','Braut','91064433687'),
			(null,'Ante','Župan','14082055968'),
			(null,'Edita','Panjić','79628991552'),
			(null,'Manuela','Rak','56002245214');

insert into class_professor (id,class,professor)
	values
			(null,'1','1'),
			(null,'1','2'),
			(null,'2','2'),
			(null,'3','3');

update professor set firstname='Boris' where id=1;
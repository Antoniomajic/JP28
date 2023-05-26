-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\ChildrensPlayroom\ChildrensPlayroom.sql

drop database if exists ChildrensPlayroom;
create database ChildrensPlayroom;
use ChildrensPlayroom;

create table child(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table teacher(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table `group`(
	id int not null primary key auto_increment,
	name varchar(20),
	maxChildren varchar(5),
	teacher int
);

create table child_group(
	id int not null primary key auto_increment,
	child int,
	`group` int
);

alter table `group` add foreign key (teacher) references teacher (id);
alter table child_group add foreign key (child) references child (id);
alter table child_group add foreign key (`group`) references `group` (id);

insert into child (id,firstname,lastname)
	values
			(null,'Bobby','Ellis'),
			(null,'Harrison','Morris'),
			(null,'Amelie','Williamson'),
			(null,'Lia','Scott');

insert into teacher (id,firstname,lastname)
	values
			(null,'Carol','Black'),
			(null,'Tiana','Burton');

insert into `group` (id,name,maxChildren,teacher)
	values 
			(null,'A','10','1'),
			(null,'B','15','2');

update teacher set lastname='Lloyd' where id=1;
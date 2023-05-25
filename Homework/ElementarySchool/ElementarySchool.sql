# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\ElementarySchool\ElementarySchool.sql

drop database if exists ElementarySchool;
create database ElementarySchool;
use ElementarySchool;

create table child (
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	age char(2)
);

create table workshop(
	id int not null primary key auto_increment,
	name varchar(50),
	maxChildren varchar(2),
	teacher int
);

create table teacher(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table child_workshop(
	id int not null primary key auto_increment,
	child int,
	workshop int
);


alter table workshop add foreign key (teacher) references teacher (id);
alter table child_workshop add foreign key (child) references child(id);
alter table child_workshop add foreign key (workshop) references workshop(id);


insert into child (id,firstname,lastname,age)
	values
			(id,'Leon','Porter','8'),
			(id,'Edwin','Kelly','9'),
			(id,'Cayden','Poole','7'),
			(id,'Patrick','Morris','8'),
			(id,'Patricia','Rogers','8'),
			(id,'Agnes','Watson','9');

insert into teacher (id,firstname,lastname)
	values 
			(id,'Gabrielle','Spencer'),
			(id,'Lia','Simpson'),
			(id,'Mark','Walsh');

insert into workshop (id,name,maxChildren,teacher)
	values 
			(id,'Profession','5',1),
			(id,'Basic Math','3',2),
			(id,'Animals','3',3);

insert into child_workshop (id,child,workshop)
	values
			(id,1,1),
			(id,1,3),
			(id,2,2),
			(id,3,1),
			(id,4,2),
			(id,5,3);

update child set firstname='Cameron' where id=3;
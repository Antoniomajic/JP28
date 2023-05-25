-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Kindergarten.sql

drop database if exists Kindergarten;
create database Kindergarten;
use Kindergarten;

create table child(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table qualification(
	id int not null primary key auto_increment,
	name varchar(200)
);

create table teacher(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	qualification int 
);

create table `group`(
	id int not null primary key auto_increment,
	max_children int,
	date_of_start datetime,
	teacher int
);


create table child_group(
	id int not null primary key auto_increment,
	child int not null,
	`group` int not null
);

alter table teacher add foreign key (qualification) references qualification (id);
alter table child_group add foreign key (child) references child (id);
alter table child_group add foreign key (`group`) references `group` (id);
alter table `group` add foreign key (teacher) references teacher (id);

insert into qualification (id,name)
	values 
			(null,'Kindergarten Teacher'),
			(null,'Pedagogue');


insert into teacher (id,firstname,lastname,qualification) 
	values
			(null,'Elizabeta','Majcen','1'),
			(null,'Blaženka','Stojković','1'),
			(null,'Željka','Fišter','2');

insert into child (id,firstname,lastname)
	values
			(null,'Šime','Josipović'),
			(null,'David','Matijašević'),
			(null,'Ilija','Kramer'),
			(null,'Josipa','Jaković'),
			(null,'Žarko','Volarev'),
			(null,'Viktorija','Ženić'),
			(null,'Draženka','Kozul'),
			(null,'Nikola','Katavić'),
			(null,'Branko','Ilić'),
			(null,'Lucija','Krizmanić'),
			(null,'Aleksandar','Bubić'),
			(null,'Oliver','Lovrenčić'),
			(null,'Ivana','Repar');

insert into `group` (id,max_children,date_of_start,teacher)
	values
			(null,10,'2023-01-05 07:00:00',1),
			(null,10,'2023-01-05 07:00:00',2),
			(null,10,'2023-01-05 07:00:00',3);

insert into child_group (id,child,`group`)
	values	
			(null,1,1),
			(null,2,1),
			(null,3,1),
			(null,4,1),
			(null,5,1),
			(null,6,2),
			(null,7,2),
			(null,8,2),
			(null,9,2),
			(null,10,3),
			(null,11,3),
			(null,12,3),
			(null,13,3);

update qualification set name='Assistant Kindergarten Teacher' where id=2;



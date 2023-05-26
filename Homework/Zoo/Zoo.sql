--  c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Zoo\Zoo.sql

drop database if exists Zoo;
create database Zoo;
use Zoo;

create table employee(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	IBAN varchar(50)	
);

create table `date`(
	id int not null primary key auto_increment,
	dateOfBirth datetime,
	dateOfArrival datetime,
	dateOfDeath datetime
);

create table cage(
	id int not null primary key auto_increment,
	dimensions varchar(30),
	max_number int,
	location varchar(30)
);

create table animal(
	id int not null primary key auto_increment,
	species varchar(50),
	name varchar(50),
	employee int,
	cage int,
	`date` int
);

alter table animal add foreign key (employee) references employee (id);
alter table animal add foreign key (`date`) references `date` (id);
alter table animal add foreign key (cage) references cage (id);

insert into employee (id,firstname,lastname,IBAN)
	values 
			(null,'Mark','Anthony','31548568'),
			(null,'John','Walsh','748555488'),
			(null,'Mary','Smith','315741852'),
			(null,'Mary','Smith','311144444');

insert into `date` (id,dateOfBirth,dateOfArrival,dateOfDeath)
	values
			(null,'2015-04-12','2015-06-28','2022-04-11'),
			(null,'2005-08-21','2018-12-05','2023-12-14'),
			(null,'1995-01-01','1996-02-11','2003-08-30');

insert into cage (id,dimensions,max_number,location)
	values
			(null,'40x50','20','Zone B'),
			(null,'100*150','2','Zone A'),
			(null,'30*45','11','Zone C');

insert into animal (id,species,name,employee,cage,`date`)
	values 
			(null,'Fish','Salmon',1,3,2),
			(null,'Wild Cat','Lion',2,1,3),
			(null,'Bugs','Huge Fly',3,2,1);			

update animal set name='Piranha' where id=1;
update employee set IBAN='3698555124' where id=3;
update cage set dimensions='500*1200' where id=2;

delete from employee where id=4;
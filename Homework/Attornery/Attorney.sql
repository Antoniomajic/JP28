-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Attornery\Attorney.sql

drop database if exists Attorney;
create database Attorney;
use Attorney;

create table client(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table `case`(
	id int not null primary key auto_increment,
	codename varchar(50) not null,
	description varchar(100),
	client int not null
);

create table assistant(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table assistant_case(
	id int not null primary key auto_increment,
	assistant int,
	`case` int
);

alter table `case` add foreign key (client) references client (id);
alter table assistant_case add foreign key (assistant) references assistant (id);
alter table assistant_case add foreign key (`case`) references `case` (id);

insert into client (id,firstname,lastname)
	values 
			(null,'Louis','Riley'),
			(null,'Samouel','Ma'),
			(null,'Isabel','Lawson');

insert into `case` (id,codename,description,client)
	values
			(null,'KSL-5891/478','Breach of contract','1'),
			(null,'IUK-879/4111','Violation of privacy','3'),
			(null,'KKII/4787/44','Damaged goods','2');

insert into assistant (id,firstname,lastname)
	values
			(null,'Darcy','Hughes'),
			(null,'Eric','Riley');
-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\CulturalSociety\CulturalSociety.sql

drop database if exists CulturalSociety;
create database CulturalSociety;
use CulturalSociety;

create table member(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	id_number char(11)
);

create table performance(
	id int not null primary key auto_increment,
	name varchar(100)
);

create table city(
	id int not null primary key auto_increment,
	cityName varchar(50),
	country varchar(50)
);

create table member_performance(
	id int not null primary key auto_increment,
	member int,
	performance int
);

create table performance_city(
	id int not null primary key auto_increment,
	performance int,
	city int
);

alter table member_performance add foreign key (member) references member (id);
alter table member_performance add foreign key (performance) references performance (id);
alter table performance_city add foreign key (performance) references performance (id);
alter table performance_city add foreign key (city) references city (id);

insert into member (id,firstname,lastname,id_number)
	values 
			(null,'Zvonimir','BoŽić','29154674946'),
			(null,'Branimir','Stojanović','50849782101'),
			(null,'Petra','Zorić','32980992260');

insert into performance (id,name)
	values 
			(null,'Nastup KUD-a');

insert into city (id,cityName,country)
	values
			(null,'Osijek','Hrvatska'),
			(null,'Pečuh','Mađarska');

update city set country='Mađarska' where id=2;


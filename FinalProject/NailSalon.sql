-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\FinalProject\NailSalon.sql

drop database if exists NailSalon;
create database NailSalon;
use NailSalon;

create table customer(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	contact varchar(50)
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50),
	description varchar(100),
	duration int,
	price decimal(18,2)
);

create table appointment(
	id int not null primary key auto_increment,
	dateAndTime datetime,
	customer int
);

create table appointment_service(
	id int not null primary key auto_increment,
	appointment int,
	service int
);


alter table appointment_service add foreign key (appointment) references appointment (id);
alter table appointment_service add foreign key (service) references service (id);
alter table appointment add foreign key (customer) references customer (id);
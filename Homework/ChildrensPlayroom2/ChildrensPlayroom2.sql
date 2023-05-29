-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\ChildrensPlayroom2\ChildrensPlayroom2.sql

drop database if exists ChildrensPlayroom2;
create database ChildrensPlayroom2;
use ChildrensPlayroom2;

create table child(
    id int not null primary key auto_increment,
    name varchar(50),
    parentname varchar(50),
    surname varchar(50),
    parent_phonenumber varchar(20)
);

create table employee(
	id int not null primary key auto_increment,
	name varchar(50),
	id_number varchar(20),
	surname varchar(50),
	workplace varchar(50)
);

create table visit(
	id int not null primary key auto_increment,
	dateOfArrival datetime,
	dateOfLeaving datetime,
	mark varchar(50),
	employee int
);

create table child_visit(
    id int not null primary key auto_increment,
    child int,
    visit int
);


create table service(
	id int not null primary key auto_increment,
	price decimal(18,2),
	unitOfMeasure varchar(50),
	amount int,
	name varchar(50)
);

create table service_visit(
	id int not null primary key auto_increment,
	service int,
	visit int
);

create table operator(
    id int not null primary key auto_increment,
    email varchar(50),
    name varchar(50),
    password varchar(20),
    id_number varchar(13),
    surname varchar(50)

);

alter table child_visit add foreign key (child) references child(id);
alter table child_visit add foreign key (visit) references visit(id);
alter table visit add foreign key (employee) references employee(id);
alter table service_visit add foreign key (visit) references visit(id);
alter table service_visit add foreign key (service) references service(id);



-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\ShoppingMall\ShoppingMall.sql

drop database if exists ShoppingMall;
create database ShoppingMall;
use ShoppingMall;

create table store(
	id int not null primary key auto_increment,
	name varchar(50) not null,
	opens time,
	closes time
);

create table employee(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null
);

create table store_employee(
	id int not null primary key auto_increment,
	store int,
	employee int 
);

create table boss(
	id int not null primary key auto_increment,
	employee int,
	store int
);

alter table store_employee add foreign key (store) references store (id);
alter table store_employee add foreign key (employee) references employee(id);
alter table boss add foreign key (employee) references employee(id);
alter table boss add foreign key (store) references store (id);

insert into employee (id,firstname,lastname)
	values
			(null,'Mark','Collins'),
			(null,'Jason','Palmer'),
			(null,'Ewan','Watson'),
			(null,'Anna','Brooks');

insert into store (id,name,opens,closes)
	values
			(null,'Adidas','09:00:00','21:00:00'),
			(null,'Deichman','08:00:00','20:00:00'),
			(null,'H&M','07:00:00','22:00:00');
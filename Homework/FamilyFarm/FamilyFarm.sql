-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\FamilyFarm\FamilyFarm.sql

drop database if exists FamilyFarm;
create database FamilyFarm;
use FamilyFarm;

create table material(
	id int not null primary key auto_increment,
	name varchar(50),
	valuePerUnit decimal (18,2)
);

create table product(
	id int not null primary key auto_increment,
	name varchar(50),
	price decimal(18,2)
);

create table product_material(
	id int not null primary key auto_increment,
	product int,
	material int
);

create table employee(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50)
);

create table employee_product(
	id int not null primary key auto_increment,
	employee int,
	product int
);

alter table product_material add foreign key (product) references product(id);
alter table product_material add foreign key (material) references material(id);
alter table employee_product add foreign key (employee) references employee(id);
alter table employee_product add foreign key (product) references product(id);

insert into material (id,name,valuePerUnit)
	values
			(null,'Milk','1.05'),
			(null,'Whey','0.6'),
			(null,'Yeast','0.15');

insert into product (id,name,price)
	values
			(null,'Cheese',5),
			(null,'Milkshake','2');

insert into employee (id,firstname,lastname)
	values
			(null,'Mark','Anthony'),
			(null,'Julius','Ceaser');
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\HairSalon.sql

drop database if exists HairSalon;
create database HairSalon;
use HairSalon;

create table employee(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	id_number char(11)
);

create table customer(
	id int not null primary key auto_increment,
	hairlenght int not null,
	sex varchar(10) not null
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50),
	price decimal(18,2)
);

create table appointment(
	id int not null primary key auto_increment,
	date datetime not null,
	service int not null,
	customer int not null,
	employee int not null
);

alter table appointment add foreign key (service) references service(id);
alter table appointment add foreign key (employee) references employee (id);
alter table appointment add foreign key (customer) references customer (id);

insert into employee (id,firstname,lastname,id_number)
	values 
		(null,'Ivona','Silvestrić',null),
		(null,'Mario','Marić',null),
		(null,'Ivona','Ivanić',null);


insert into customer (id,hairlenght,sex)
	values
		(null,'15','Muško'),
		(null,'45','Ženkso'),
		(null,'85','Žensko'),
		(null,'5','Muško'),
		(null,'20','Žensko');

insert into service (id,name,price)
	values
		(null,'Muško šišanje','7'),
		(null,'Žensko šišanje','10'),
		(null,'Pranje kose','5');

insert into appointment (id,date,service,customer,employee)
	values 
		(null,'2023-05-10 09:00:00',1,1,3),
		(null,'2023-05-10 09:00:00',2,2,2),
		(null,'2023-05-10 09:00:00',2,3,1),
		(null,'2023-05-10 10:00:00',1,4,3),
		(null,'2023-05-10 10:00:00',3,5,2);


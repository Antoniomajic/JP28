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

insert into child(id,name,parentname,surname,parent_phonenumber)
	values
			(null,'Marijan','Eduard','Bekavac','0975177844'),
			(null,'Petra','Ivo','Šertić','0915554478'),
			(null,'Lucijan','Vedran','Šušak','0984457185');

insert into employee (id,name,id_number,surname,workplace)
	values
			(null,'Milica','44587412580','Pavlić','Arena'),
			(null,'Josipa','32105021014','Ratković','Mala igraonica'),
			(null,'Janko','66978520203','Drašković','Velika igraonica');		

insert into visit (id,dateOfArrival,dateOfLeaving,mark,employee)
	values
			(null,'2023-05-25 09:00:00','2023-05-25 13:00:00','Early Play',1),
			(null,'2023-05-25 14:00:00','2023-05-25 18:00:00','Birthday',2),
			(null,'2023-05-26 18:00:00','2023-05-26 20:00:00','Bed time play',3);		

insert into service (id,price,unitOfMeasure,amount,name)
	values
			(null,'20','hour',2,'A'),
			(null,'40','hour',4,'B'),
			(null,'20','hour',2,'C');

insert into operator (id,email,name,password,id_number,surname)
	values
			(null,'ivana.ivosevic@gmail.com','Ivana','ivanicamala213','547852010025','Ivošević');

update child set name='Mario' where id=1;
update employee set workplace='Svaštara' where id=1;			
update visit set dateOfLeaving='2023-05-26 19:00:00' where id=3;

delete from child where id=1;

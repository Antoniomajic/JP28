-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\AnimalShelter\AnimalShelter.sql

drop database if exists AnimalShelter;
create database AnimalShelter;
use AnimalShelter;

create table Person(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	ID_number char(11)
);

create table Cage(
	id int not null primary key auto_increment,
	number char(3),
	dimension int
);

create table Animal(
	id int not null primary key auto_increment,
	animal_kind varchar(50) not null,
	sex varchar(10) not null,
	Cage int not null,
	Person int not null
);


alter table Animal add foreign key (Person) references Person (id);
alter table Animal add foreign key (Cage) references Cage (id);

insert into Person (id,firstname,lastname,ID_number)
values
(null,'Zvonko','Samardžija',null),
(null,'Šime','Orsolić',null),
(null,'Patricija','Buzov',null);

insert into Cage (id,number,dimension)
values 
(null,'101',6),
(null,'102',3),
(null,'103',4),
(null,'104',5);

insert into animal (id,animal_kind,sex,Cage,Person)
values
(null,'pas','muško',1,1),
(null,'pas','žensko',2,2),
(null,'mačka','muško',3,3),
(null,'mačka','žensko',4,3);



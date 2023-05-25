-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Doctor'sOffice.sql

drop database if exists DoctorsOffice;
create database DoctorsOffice;
use DoctorsOffice;

create table person(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	id_number char(11)
);

create table patient(
	id int not null primary key auto_increment,
	person int not null 
);

create table therapy(
	id int not null primary key auto_increment,
	name varchar(100),
	description varchar(300)
);

create table nurse(
	id int not null primary key auto_increment,
	person int not null
);

create table patient_therapy(
	id int not null primary key auto_increment,
	patient int not null,
	therapy int,
	nurse int
);

alter table patient_therapy add foreign key (nurse) references nurse (id);
alter table patient_therapy add foreign key (patient) references patient (id);
alter table patient_therapy add foreign key (therapy) references therapy (id);
alter table nurse add foreign key (person) references person(id); 
alter table patient add foreign key (person) references person(id);

insert into person (id,firstname,lastname,id_number)
	values
			(null,'Harvey','May','45718547859'),
			(null,'Callum','Jackson','45781459687'),
			(null,'Natasha','Brooks','32568741589'),
			(null,'Grace','Hunt','12476985325');

insert into patient (id,person)
	values
			(null,3),
			(null,4);

insert into nurse (id,person)
	values 
			(null,1),
			(null,2);

insert into therapy (id,name,description)
	values 
			(null,'GHE','General Health Exam'),
			(null,'GPT','High pressure treatment');

insert into patient_therapy (id,patient,therapy,nurse)
	values 
			(null,1,2,1),
			(null,2,1,2);

update person set lastname='Hunter' where id=4;
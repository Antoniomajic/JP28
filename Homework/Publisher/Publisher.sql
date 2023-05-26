-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Publisher\Publisher.sql

drop database if exists Publisher;
create database Publisher;
use Publisher;

create table publisher(
	id int not null primary key auto_increment,
	name varchar(50) not null
);

create table book(
	id int not null primary key auto_increment,
	title varchar(100) not null,
	dateOfPublishment date,
	author varchar(200) not null
);

create table city(
	id int not null primary key auto_increment,
	name varchar(50) not null,
	ZIPcode varchar(15) not null
);

create table publisher_book(
	id int not null primary key auto_increment,
	publisher int,
	book int
);

create table publisher_city(
	id int not null primary key auto_increment,
	publisher int,
	city int
);

alter table publisher_book add foreign key (publisher) references publisher (id);
alter table publisher_book add foreign key (book) references book (id);
alter table publisher_city add foreign key (publisher) references publisher (id);
alter table publisher_city add foreign key (city) references city (id);

insert into publisher (id,name)
	values
			(null,'Donovan Books'),
			(null,'School Book'),
			(null,'Novarum');

insert into book (id,title,dateOfPublishment,author)
	values
			(null,'Smaller','1997-08-28','Heather Christie'),
			(null,'A Million To One','2001-01-12','Tony Faggioli'),
			(null,'Pieces of Light','2012-12-01','Charles Ferny');

insert into city (id,name,ZIPcode)
	values
			(null,'Colorado Springs','80911'),
			(null,'Topeka','66614'),
			(null,'Rochester','14617');

update book set title='Smaller to Smaller' where id=1;
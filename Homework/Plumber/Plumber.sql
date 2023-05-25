-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Plumber\Plumber.sql

drop database if exists Plumber;
create database Plumber;
use Plumber;

create table failure(
	id int not null primary key auto_increment,
	name varchar(50),
	description varchar(50)
);

create table repair(
	id int not null primary key auto_increment,
	description varchar(50),
	price decimal(18,2)
);

create table apprentice(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50)
);

create table appointment(
	id int not null primary key auto_increment,
	date datetime, 
	repair int,
	failure int,
	apprentice int
);

alter table appointment add foreign key (repair) references repair (id);
alter table appointment add foreign key (failure) references failure (id);
alter table appointment add foreign key (apprentice) references apprentice (id);

insert into repair (id,description,price)
	values 
			(null,'Leakage','50');

insert into failure (id,name,description)
	values
			(null,'Rusty pipe','Rust deteriorated pipe quality');

insert into apprentice (id,firstname,lastname)
	values
			(null,'John','Sterling');
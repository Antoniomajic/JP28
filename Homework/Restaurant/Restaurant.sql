-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Restaurant\Restaurant.sql

drop database if exists Restaurant;
create database Restaurant;
use Restaurant;

create table category(
	id int not null primary key auto_increment,
	name varchar(50) not null
);

create table meal(
	id int not null primary key auto_increment,
	name varchar(100),
	description varchar(100),
	category int
);
 create table drink(
	id int not null primary key auto_increment,
	name varchar(100),
	decription varchar(100)
 );

 create table drink_meal(
	id int not null primary key auto_increment,
	drink int,
	meal int
);

alter table meal add foreign key (category) references category(id);
alter table drink_meal add foreign key (drink) references drink(id);
alter table drink_meal add foreign key (meal) references meal(id);

insert into category (id,name)
	values
			(null,'Fish meals'),
			(null,'Meat meals'),
			(null,'Veggie meals');

insert into meal (id,name,description,category)
	values 
			(null,'Baracuda mix','Baracuda,salmon and rice','1'),
			(null,'Full plate','Mix of different meats','2'),
			(null,'Garden on table','Salad','3');

insert into drink (id,name,decription)	
	values 
			(null,'Chardonnay','White wine'),
			(null,'Merlot','Red wine'),
			(null,'Coca-cola','Soda');

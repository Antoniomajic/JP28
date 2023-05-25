-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Monastery\Monastery.sql

drop database if exists Monastery;
create database Monastery;
use Monastery;

create table monk(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	supervizor int
);

create table work(
	id int not null primary key auto_increment,
	name varchar(50),
	description varchar(100),
	duration int
);

create table monk_work(
	id int not null primary key auto_increment,
	monk int,
	work int
);

alter table monk add foreign key (supervizor) references monk(id);
alter table monk_work add foreign key (monk) references monk (id);
alter table monk_work add foreign key (work) references work (id);

insert into monk (id,firstname,lastname,supervizor)
	values 
			(null,'John','Malkovich','1'),
			(null,'Micheal','Stolcki','1'),
			(null,'Anthony','May','1'),
			(null,'Matt','Damon','2'),
			(null,'Winston','Ebbet','2');

insert into work (id,name,description,duration)
	values
			(null,'Povrtlarstvo','Doing miscellaneous jobs around the garden','60'),
			(null,'Pivarstvo','Producing beer','60'),
			(null,'Vinarstvo','Producing beer','60');

insert into monk_work (id,monk,work)
	values
			(null,'1','1'),
			(null,'1','2'),
			(null,'2','3'),
			(null,'3','3'),
			(null,'3','2'),
			(null,'4','1'),
			(null,'4','3'),
			(null,'5','2'),
			(null,'5','1');

update work set name='Gardening' where id=1;
update work set name='Brewering' where id=2;
update work set name='Wine making' where id=3;


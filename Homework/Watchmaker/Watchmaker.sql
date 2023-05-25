-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Watchmaker\Watchmaker.sql

drop database if exists Watchmaker;
create database Watchmaker;
use Watchmaker;

drop database if exists Watchmaker;
create database Watchmaker;
go
use Watchmaker;

create table customer(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	phone_number varchar(20)
);

create table watch(
	id int not null primary key auto_increment,
	brand varchar(50),
	customer int
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50),
	duration int,
	price decimal(18,2),
	description varchar(100)
);

create table service_watch(
	id int not null primary key auto_increment,
	watch int,
	apprentice int,
	service int
);

create table apprentice(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50)
);

alter table watch add foreign key (customer) references customer (id);
alter table service_watch add foreign key (apprentice) references apprentice (id);
alter table service_watch add foreign key (watch) references watch (id);
alter table service_watch add foreign key (service) references service (id);

insert into customer (id,firstname,lastname,phone_number)
	values	
			(null,'Mary','Collington','0956874578'),
			(null,'Elizabeth','Garter','0915284571'),
			(null,'John','Smith','0975861457');

insert into watch (id,brand,customer)
	values
			(null,'Saiko',1),
			(null,'Rolex',2),
			(null,'Omega',3);

insert into service (id,name,duration,price,description)
	values
			(null,'Minor repair',30,20,'Minor repair'),
			(null,'New battery',10,10,'Battery change'),
			(null,'Complex',60,50,'Complex repair');

insert into apprentice (id,firstname,lastname)
	values 
			(null,'Adam','Longevine');

insert into service_watch (id,watch,apprentice,service)
	values
			(null,1,1,2),
			(null,3,1,3),
			(null,2,1,1);


update watch set brand='Seiko' where id=1;
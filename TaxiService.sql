-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\TaxiService.sql

drop database if exists TaxiService;
create database TaxiService;
use TaxiService;

create table vehicle(
	id int not null primary key auto_increment,
	brand varchar(50) not null,
	registration varchar (50),
	max_passengers int
);

create table driver(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	id_number varchar(11),
	vehicle int not null
);

create table service(
	id int not null primary key auto_increment,
	driver int not null
);

create table passenger(
	id int not null primary key auto_increment,
	phonenumber varchar (50) not null
);

create table passenger_service(
	id int not null primary key auto_increment,
	passenger int not null,
	service int not null,
	duration int,
	price decimal (18,2)
);

alter table driver add foreign key (vehicle) references vehicle(id);
alter table passenger_service add foreign key (passenger) references passenger(id);
alter table passenger_service add foreign key (service) references service(id);
alter table service add foreign key (driver) references driver(id);

insert into vehicle (id,brand,registration,max_passengers)
	values 
			(null,'Audi A3','OS-457-SL','3'),
			(null,'Škoda Octavia','ZG-364-RT','4'),
			(null,'Renault Trafic','DJ-7888-PM','7');

insert into driver (id,firstname,lastname,id_number,vehicle)
	values 
			(null,'Ante','Dujmić','05761983764',1),
			(null,'Domagoj','Peršić','35789145728',2),
			(null,'Vanja','Časnić','65748957810',3);

insert into passenger (id,phonenumber) 
	values
			(null,'09758614785'),
			(null,'09863585585'),
			(null,'09148854122'),
			(null,'09147833256'),
			(null,'+3877849986'),
			(null,'09754877786');

insert into service (id,driver)
	values
			(null,'1'),
			(null,'2'),
			(null,'3');

insert into passenger_service (id,passenger,service,duration,price)
	values
			(null,'1','1','50','5');


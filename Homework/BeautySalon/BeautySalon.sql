# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\BeautySalon\BeautySalon.sql
drop database if exists BeautySalon;
create database BeautySalon;
use BeautySalon;

create table employee(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	id_number char(11)
);

create table customer(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	sex varchar(10) not null
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50) not null,
	price decimal(18,2),
	duration int 
);

create table appointment(
	id int not null primary key auto_increment,
	date datetime not null,
	service int not null,
	customer int not null,
	employee int not null
);



alter table appointment add foreign key (service) references service (id);
alter table appointment add foreign key (customer) references customer (id);
alter table appointment add foreign key (employee) references employee (id);

insert into employee (id,firstname,lastname,id_number)
	values 
			(null,'Marija','Juriša',null),
			(null,'Vanja','Radman',null),
			(null,'Mirjana','Obradović',null);

insert into customer (id,firstname,lastname,sex)
	values
			(null,'Julija','Gajić','Žensko'),
			(null,'Anita','Jakin','Žensko'),
			(null,'Izabela','Barišić','Žensko'),
			(null,'Petar','Križan','Muško'),
			(null,'Ivana','Terzić','Žensko');

insert into service (id,name,price,duration)
	values
			(null,'Pedikura',10,20),
			(null,'Maska za lice',10,30),
			(null,'Umjetni nokti',20,60);

insert into appointment (id,date,service,customer,employee)
	values
			(null,'2023-05-17 08:00:00',1,1,1),
			(null,'2023-05-17 08:00:00',2,2,2),
			(null,'2023-05-17 08:00:00',3,3,3),
			(null,'2023-05-17 09:00:00',1,4,1),
			(null,'2023-05-17 09:00:00',3,5,2);

update service set name='Pedicure' where id=1;
update service set name='Face mask' where id=2;
update service set name='Fake nails' where id=3;
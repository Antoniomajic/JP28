-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\FinalProject\NailSalon.sql

drop database if exists NailSalon;
create database NailSalon;
use NailSalon;

create table customer(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	contact varchar(50)
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50),
	description varchar(100),
	duration int,
	price decimal(18,2)
);

create table appointment(
	id int not null primary key auto_increment,
	dateAndTime datetime,
	customer int
);

create table appointment_service(
	id int not null primary key auto_increment,
	appointment int,
	service int
);


alter table appointment_service add foreign key (appointment) references appointment (id);
alter table appointment_service add foreign key (service) references service (id);
alter table appointment add foreign key (customer) references customer (id);

insert into customer (id,firstname,lastname,contact)
	values
			(null,'Louie','Brown','louis.brown123@hotmail.com'),
			(null,'Henry','Green','(411) 551-0693'),
			(null,'Ciara','Reynolds','(415) 555-0132');

insert into service (id,name,description,duration,price)
	values 
	(null,'Manicure','Beauty treatment of the hands. Nails are cut,filed, and shaped. Cuticles are pushed back and tidied. Final step is the painting of the nails(optional).',20,10),
	(null,'Pedicure','Nails are shaped/filed, cutiles are cleaned and trimed. Afterwards feet are scrubbed and buffed using a callous remover ointment to treat rough spots.',30,15),
	(null,'Fake nails Acrylic','Basic powder applied with liquid to create a hard overlay for stronger/longer nails.',60,30),
	(null,'Fake nails Gel','A finer powder used with liquid that results in a more clear natural finish look to nails',60,35);

insert into appointment (id,dateAndTime,customer)
	values
			(null,'2023-05-31 09:00:00',1),
			(null,'2023-05-31 10:00:00',2),
			(null,'2023-05-31 11:00:00',3);

 insert into appointment_service (id,appointment,service)
	values 
			(null,1,1),
			(null,1,2),
			(null,1,1),
			(null,2,1),
			(null,3,3);
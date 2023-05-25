-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Shoemaker\Shoemaker.sql
drop database if exists Shoemaker;
create database Shoemaker;
use Shoemaker;

create table customer(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	phone_number varchar(20)
);

create table shoe(
	id int not null primary key auto_increment,
	brand varchar(50),
	number char(2),
	customer int
);

create table service(
	id int not null primary key auto_increment,
	name varchar(50),
	duration int,
	price decimal(18,2),
	descripction varchar(100)
);

create table shoe_service(
	id int not null primary key auto_increment,
	shoe int,
	apprentice int not null,
	service int
);

create table apprentice(
	id int not null primary key auto_increment,
	firstandlastname varchar(50)
);

alter table shoe add foreign key (customer) references customer (id);
alter table shoe_service add foreign key (apprentice) references apprentice (id);
alter table shoe_service add foreign key (shoe) references shoe (id);
alter table shoe_service add foreign key (service) references service (id);

insert into customer (id,firstname,lastname,phone_number)
	values 
			(null,'Pavao','Krčelić','0978523654'),
			(null,'Damir','Drajačić','0956358875'),
			(null,'Danica','Vukasović','0974785123'),
			(null,'Željka','Pretić','0912587415');

insert into shoe (id,brand,number,customer)
	values 
			(null,'Nike','41',1),
			(null,'Adidas','44',2),
			(null,'Roberto','37',3),
			(null,'Borovo','37',3),
			(null,'Adidas','43',4);

insert into apprentice (id,firstandlastname)
	values
			(null,'Mario Marić');


insert into  service (id,name,duration,price,descripction)
	values 
			(null,'Jednostavni popravak',30,'10','Jednostavni popravak obuće'),
			(null,'Složeni popravak',60,'20','Složeni popravak obuće'),
			(null,'Komplicirani popravak',90,'35','Teži popravak obuće');

insert into shoe_service (id,shoe,apprentice,service)
	values 
			(null,1,1,2),
			(null,2,1,3),
			(null,3,1,2),
			(null,4,1,2);




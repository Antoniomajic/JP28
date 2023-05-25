# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\Museum\Museum.sql

drop database if exists Museum;
create database Museum;
use Museum;

create table curator(
	id int not null primary key auto_increment,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	phone_number varchar(100)
);

create table sponsor(
	id int not null primary key auto_increment,
	name varchar(50) not null
);

create table exhibit(
	id int not null primary key auto_increment,
	name varchar(50) not null,
	description varchar(100),
	exhibition int not null
);

create table exhibition(
	id int not null primary key auto_increment,
	name varchar(100),
	sponsor int not null,
	curator int not null,
	exhibit int not null
);

alter table exhibit add foreign key (exhibition) references exhibition (id); 
alter table exhibition add foreign key (sponsor) references sponsor (id);
alter table exhibition add foreign key (curator) references curator (id);

insert into curator (id,firstname,lastname,phone_number)
	values
			(null,'Nenad','Žižić','0917458254'),
			(null,'Marko','Šarić','0974573256'),
			(null,'Gabrijela','Vinković','0986474117');

insert into sponsor (id,name)
	values
			(null,'Konzum'),
			(null,'Ured Predsjednika RH'),
			(null,'Veleposlanstvo Kraljevine Španjolske u RH');

insert into exhibition (id,name,sponsor,curator)
	values
			(null,'Suvremena umjetnost',1,3),
			(null,'Sisak u 15.-tom stoljeću',2,1),
			(null,'Alternativna abstrakcija',3,2);

insert into exhibit (id,name,description,exhibition)
	values
			(null,'Vrtlog','Slika Andrije Palića iz 1997.g.',2),
			(null,'Kaciga','Srednjovjekovna vojna oprema',1),
			(null,'Uže slobode','Umjetnički eksponat nepoznate upotrebe',3);

update sponsor set name='British Embassy in Republic of Croatia' where id=3;
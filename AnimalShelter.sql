-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\AnimalShelter.sql

drop database if exists udrugazazastituzivotinja;
create database udrugazazastituzivotinja;
use udrugazazastituzivotinja;

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
);

create table prostor(
	sifra int not null primary key auto_increment,
	broj char(3),
	kvadratura int
);

create table sticenik(
	sifra int not null primary key auto_increment,
	vrsta varchar(50) not null,
	spol varchar(10) not null,
	prostor int not null,
	osoba int not null
);


alter table sticenik add foreign key (osoba) references osoba (sifra);
alter table sticenik add foreign key (prostor) references prostor (sifra);

insert into osoba (sifra,ime,prezime,oib)
values
(null,'Zvonko','Samardžija',null),
(null,'Šime','Orsolić',null),
(null,'Patricija','Buzov',null);

insert into prostor (sifra,broj,kvadratura)
values 
(null,'101',6),
(null,'102',3),
(null,'103',4),
(null,'104',5);

insert into sticenik (sifra,vrsta,spol,prostor,osoba)
values
(null,'pas','muško',1,1),
(null,'pas','žensko',2,2),
(null,'mačka','muško',3,3),
(null,'mačka','žensko',4,3);



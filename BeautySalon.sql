# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\salonzauljepsavanje.sql
drop database if exists salonzauljepsavanje;
create database salonzauljepsavanje;
use salonzauljepsavanje;

create table djelatnica(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
);

create table korisnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	spol varchar(10) not null
);

create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2),
	trajanje int 
);

create table termin(
	sifra int not null primary key auto_increment,
	datum datetime not null,
	usluga int not null,
	korisnik int not null,
	djelatnica int not null
);



alter table termin add foreign key (usluga) references usluga (sifra);
alter table termin add foreign key (korisnik) references korisnik (sifra);
alter table termin add foreign key (djelatnica) references djelatnica (sifra);

insert into djelatnica (sifra,ime,prezime,oib)
values 
(null,'Marija','Juriša',null),
(null,'Vanja','Radman',null),
(null,'Mirjana','Obradović',null);

insert into korisnik (sifra,ime,prezime,spol)
values
(null,'Julija','Gajić','Žensko'),
(null,'Anita','Jakin','Žensko'),
(null,'Izabela','Barišić','Žensko'),
(null,'Petar','Križan','Muško'),
(null,'Ivana','Terzić','Žensko');

insert into usluga (sifra,naziv,cijena,trajanje)
values
(null,'Pedikura',10,20),
(null,'Maska za lice',10,30),
(null,'Umjetni nokti',20,60);

insert into termin (sifra,datum,usluga,korisnik,djelatnica)
values
(null,'2023-05-17 08:00:00',1,1,1),
(null,'2023-05-17 08:00:00',2,2,2),
(null,'2023-05-17 08:00:00',3,3,3),
(null,'2023-05-17 09:00:00',1,4,1),
(null,'2023-05-17 09:00:00',3,5,2);
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\frizerskisalon.sql

drop database if exists frizerskisalon;
create database frizerskisalon;
use frizerskisalon;

create table djelatnica(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	oib char(11)
);

create table korisnik(
	sifra int not null primary key auto_increment,
	duzinakose int not null,
	spol varchar(10) not null
);

create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar(50),
	cijena decimal(18,2)
);

create table termin(
	sifra int not null primary key auto_increment,
	datum datetime not null,
	usluga int not null,
	korisnik int not null,
	djelatnica int not null
);

alter table termin add foreign key (usluga) references usluga(sifra);
alter table termin add foreign key (djelatnica) references djelatnica (sifra);
alter table termin add foreign key (korisnik) references korisnik (sifra);

insert into djelatnica (sifra,ime,prezime,oib)
values 
(null,'Ivona','Silvestrić',null),
(null,'Mario','Marić',null),
(null,'Ivona','Ivanić',null);


insert into korisnik (sifra,duzinakose,spol)
values
(null,'15','Muško'),
(null,'45','Ženkso'),
(null,'85','Žensko'),
(null,'5','Muško'),
(null,'20','Žensko');

insert into usluga (sifra,naziv,cijena)
values
(null,'Muško šišanje','7'),
(null,'Žensko šišanje','10'),
(null,'Pranje kose','5');

insert into termin (sifra,datum,usluga,korisnik,djelatnica)
values 
(null,'2023-05-10 09:00:00',1,1,3),
(null,'2023-05-10 09:00:00',2,2,2),
(null,'2023-05-10 09:00:00',2,3,1),
(null,'2023-05-10 10:00:00',1,4,3),
(null,'2023-05-10 10:00:00',3,5,2);

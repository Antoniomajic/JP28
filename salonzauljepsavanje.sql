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
	spol varchar(10) not null,
	usluga int not null
);

create table usluga(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2)
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


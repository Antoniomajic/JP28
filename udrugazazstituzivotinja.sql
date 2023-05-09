drop database if exists udrugazazastituzivotinja;

create database udrugazazastituzivotinja;

use udrugazazastituzivotinja;

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char
);

create table prostor(
	sifra int not null primary key auto_increment,
	kvadratura int not null
);

create table zivotinja(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	pas boolean not null,
	macka boolean not null
);

create table sticenik(
	sifra int not null primary key auto_increment,
	prostor int not null,
	osoba int,
	zivotinja int not null
);


alter table sticenik add foreign key (osoba) references osoba (sifra);
alter table sticenik add foreign key (zivotinja) references zivotinja (sifra);
alter table sticenik add foreign key (prostor) references prostor (sifra);


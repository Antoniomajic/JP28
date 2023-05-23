-- drop database if exists djecjivrtic;


create database djecjivrtic;

use djecjivrtic;

create table djete(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	dob int not null,
	spol boolean not null
);

create table odgajateljica(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	strucnasprema int not null,
	oib char(11)
);

create table strucnasprema(
	sifra int not null primary key auto_increment,
	naziv varchar(100)
);

create table skupina(
	sifra int not null primary key auto_increment,
	maxpolaznika int,
	naziv varchar(50),
	odgajateljica int,
	djete int
);


alter table odgajateljica add foreign key (strucnasprema) references strucnasprema (sifra);
alter table skupina add foreign key (odgajateljica) references odgajateljica (sifra);
alter table skupina add foreign key (djete) references djete (sifra);



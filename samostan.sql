create database samostan;
use samostan;

create table svecenik(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
	nadredeni int
);

create table posao(
	sifra int not null primary key auto_increment,
	naziv varchar(50),
	opis varchar(100),
	trajanje int
);

create table svecenik_posao(
	sifra int not null primary key auto_increment,
	svecenik int,
	posao int,
	naziv varchar(50),
	opis varchar(100)
);

alter table svecenik add foreign key (nadredeni) references svecenik(sifra);
alter table svecenik_posao add foreign key (svecenik) references svecenik (sifra);
alter table svecenik_posao add foreign key (posao) references posao (sifra);


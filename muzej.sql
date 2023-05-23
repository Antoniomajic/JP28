# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\BeautySalon.sql

drop database if exists Museum;
create database Museum;
use Museum;

create table kustos(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	email varchar(100)
);

create table sponzor(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null
);

create table djelo(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	opis varchar(100),
	izlozba int not null
);

create table izlozba(
	sifra int not null primary key auto_increment,
	naziv varchar(100),
	sponzor int not null,
	kustos int not null,
	djelo int not null
);

alter table djelo add foreign key (izlozba) references izlozba (sifra); 
alter table izlozba add foreign key (sponzor) references sponzor (sifra);
alter table izlozba add foreign key (kustos) references kustos (sifra);
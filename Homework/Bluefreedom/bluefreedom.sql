drop database if exists bluefreedom;
create database bluefreedom;
use bluefreedom;

create table operater(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	email varchar(100),
	lozinka varchar(30),
	uloga varchar(50)
);

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	datumrodenja datetime,
	email varchar(100),
	lozinka varchar(30),
	brojtel varchar(20),
	administrator varchar(100),
	stanje varchar(50),
	aktivan boolean,
	uniqueid int
);

create table svidamise(
	sifra int not null primary key auto_increment,
	vrijemesvidanja datetime not null,
	objava int,
	osoba int
);

create table objava(
	sifra int not null primary key auto_increment,
	naslov varchar(50),
	upis varchar(500),
	vrijemeizrade datetime,
	ipadresa varchar(100),
	osoba int
);

create table komentar(
	sifra int not null primary key auto_increment,
	vrijemekontaktiranja datetime,
	opis varchar(200),
	objava int,
	osoba int
);

create table svidamise_komentar(
	sifra int not null primary key auto_increment,
	osoba int,
	komentar int
);

alter table svidamise add foreign key (objava) references objava (sifra);
alter table svidamise add foreign key (osoba) references osoba (sifra);
alter table objava add foreign key (osoba) references osoba (sifra);
alter table komentar add foreign key (objava) references objava (sifra);
alter table komentar add foreign key (osoba) references osoba (sifra);
alter table svidamise_komentar add foreign key (osoba) references osoba (sifra);
alter table svidamise_komentar add foreign key (komentar) references komentar (sifra);


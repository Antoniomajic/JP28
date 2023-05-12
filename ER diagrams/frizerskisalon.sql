

create table djelatnica(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	oib char(11)
);

create table korisnik(
	sifra int not null primary key auto_increment,
	duzinakose int not null,
	usluga int not null,
	spol bit not null
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


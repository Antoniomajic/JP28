-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\ColloquiumPractice\Practice3\Practice3.sql

drop database if exists Practice3;
create database Practice3;
use Practice3;

create table girl(
	id int not null primary key auto_increment,
	sweatshirt varchar(49),
	mark decimal(13,7),
	secondTime datetime,
	TShirt varchar(49),
	coin decimal(15,8),
	necklace int not null
);

create table fatherInLaw(
	id int not null primary key auto_increment,
	coin decimal(16,8) not null,
	skirt varchar(48) not null,
	haircolor varchar(36),
	ring int,
	bracelet int not null,
	girl int not null
);

create table brother(
	id int not null primary key auto_increment,
	IDnumber char(11),
	necklace int not null,
	extroverted bit not null
);

create table friend(
	id int not null primary key auto_increment,
	kuna decimal(16,10),
	dress varchar(37),
	lipa decimal(13,10),
	sweatshirt varchar(31),
	indifferent bit not null
);

create table friend_brother(
	id int not null primary key auto_increment,
	friend int not null,
	brother int not null
);

create table leftBehind(
	id int not null primary key auto_increment,
	kuna decimal(17,5),
	lipa decimal(15,6),
	TShirt varchar(36),
	glassesModel varchar(31) not null,
	friend int
);

create table firstMotherInLaw(
	id int not null primary key auto_increment,
	introverted bit,
	kuna decimal(15,6) not null,
	euro decimal(12,9) not null,
	thirdTime datetime,
	leftBehind int not null
);

create table secondMotherInLaw(
	id int not null primary key auto_increment,
	asocial bit,
	shortTShirt varchar(44),
	kuna decimal(13,8) not null,
	cardigan varchar(32) not null,
	firstMotherInLaw int
);

-- RELATIONS

alter table fatherInLaw add foreign key (girl) references girl (id);
alter table friend_brother add foreign key (friend) references friend (id);
alter table friend_brother add foreign key (brother) references brother (id);
alter table leftBehind add foreign key (friend) references friend (id);
alter table firstMotherInLaw add foreign key (leftBehind) references leftBehind (id);
alter table secondMotherInLaw add foreign key (firstMotherInLaw) references firstMotherInLaw (id);

--INSERTS

insert into girl (id,sweatshirt,mark,secondTime,TShirt,coin,necklace)
	values	
			(null,'Adidas','97.31','2023-06-06','Nike','971.748','3');

insert into fatherInLaw (id,coin,skirt,haircolor,ring,bracelet,girl)
	values
			(null,'999.45','Short','Brown','3','2',1);

insert into brother (id,IDnumber,necklace,extroverted)
	values	
			(null,'85258269341','3','0');

insert into friend (id,kuna,dress,lipa,sweatshirt,indifferent)
	values
			(null,'51.71','Short Dress Bamboo','34.85','Nike','0');

insert into friend_brother (id,friend,brother)
	values
			(null,1,1);

insert into leftBehind (id,kuna,lipa,TShirt,glassesModel,friend)
	values
			(null,'85','15','Tally Walle','Roberto',1),
			(null,'15','30','Long Black','Ray Ban',1),
			(null,'5','42','Caffe Bar Ivanovec','Versace',1);

insert into firstMotherInLaw (id,introverted,kuna,euro,thirdTime,leftBehind)
	values
			(null,'0','187.63','63.43','2023-06-06',1),
			(null,'1','17.63','23.87','2005-01-15',2),
			(null,'0','7.63','113.13','2021-08-21',3);

insert into secondMotherInLaw (id,asocial,shortTShirt,kuna,cardigan,firstMotherInLaw)
	values
			(null,'1','Black T-Shirt','98.74','Long blue',1);

update fatherInLaw set skirt='Osijek';

delete from secondMotherInLaw where shortTShirt='AB';
select TShirt from leftBehind where lipa not in ('9','10','20','30','35');

select a.extroverted, f.cardigan, e.kuna
from brother a inner join friend_brother b		on b.brother=a.id
inner join friend c								on b.friend=c.id
inner join leftBehind d							on d.friend=c.id
inner join firstMotherInLaw	e					on e.leftBehind=d.id
inner join secondMotherInLaw f					on f.firstMotherInLaw=e.id
where d.lipa !=91 and c.dress like '%ba%'
order by e.kuna desc;

select c.dress, c.lipa
from friend c inner join friend_brother b  on b.friend=c.id
where c.id not in (b.id);
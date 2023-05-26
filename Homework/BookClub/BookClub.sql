-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\Homework\BookClub\BookClub.sql

drop database if exists BookCLub;
go
create database BookCLub;
go
use BookCLub;

create table member(
	id int not null primary key auto_increment,
	firstname varchar(50),
	lastname varchar(50),
	id_number char(11)
);

create table book_owner(
	id int not null primary key auto_increment,
	member int
);

create table book(
	id int not null primary key auto_increment,
	book_owner int,
	title varchar(50),
	author varchar(200)
);

create table member_book(
	id int not null primary key auto_increment,
	member int,
	book int
);

alter table book_owner add foreign key (member) references member (id);
alter table member_book add foreign key (member) references member (id);
alter table member_book add foreign key (book) references book (id);
alter table book add foreign key (book_owner) references book_owner (id);

insert into member (id,firstname,lastname,id_number)
	values
			(null,'Alfred','Richardson','48874800397'),
			(null,'Cooper','Cole','26986714984'),
			(null,'Martha','Carr','97977621965');

insert into book_owner (id,member)
	values
			(null,'1'),
			(null,'2'),
			(null,'3');

insert into book (id,book_owner,title,author)
	values
			(null,'1','The Girl','Hugh Michaels'),
			(null,'2','Mask','Marry Carrick'),
			(null,'2','Six Crows','Leigh Bardugo'),
			(null,'3','Blood','Eleanor Shearer');

update book set author='Matt Noble' where id=2;
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\ColloquiumPractice\Practice8\Practice8.sql


DROP DATABASE IF EXISTS Practice8;
CREATE DATABASE Practice8;
USE Practice8;

CREATE TABLE friend(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	cardigan VARCHAR(50),
	earing INT NOT NULL,
	introverted BIT NOT NULL
);

CREATE TABLE girl(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	earing INT NOT NULL,
	indifferent BIT,
	necklace INT NOT NULL,
	density DECIMAL(12,6),
	thirdTime DATETIME,
	cardigan VARCHAR(33),
	friend INT
);

CREATE TABLE boy(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	kuna DECIMAL(12,10),
	lipa DECIMAL(17,10),
	hairColor VARCHAR(44),
	thirdTime DATETIME NOT NULL,
	necklace INT NOT NULL,
	extroverted BIT NOT NULL
);

CREATE TABLE man(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	dress VARCHAR(47),
	secondTime DATETIME NOT NULL,
	thirdTime DATETIME
);

CREATE TABLE man_boy(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	man INT NOT NULL,
	boy INT NOT NULL
);

CREATE TABLE reveler(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	euro DECIMAL(15,10),
	thirdTime DATETIME,
	firstTime DATETIME,
	man INT NOT NULL
);

CREATE TABLE enemy(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	shortTSHirt VARCHAR(44),
	introverted BIT,
	indifferent BIT,
	necklace INT NOT NULL,
	reveler INT NOT NULL
);

CREATE TABLE brother(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	introverted BIT,
	coin DECIMAL(14,7) NOT NULL,
	thirdTime DATETIME,
	enemy INT
);

ALTER TABLE man_boy ADD FOREIGN KEY (man) REFERENCES man (id);
ALTER TABLE man_boy ADD FOREIGN KEY (boy) REFERENCES boy (id);
ALTER TABLE reveler ADD FOREIGN KEY (man) REFERENCES man (id);
ALTER TABLE enemy ADD FOREIGN KEY (reveler) REFERENCES reveler (id);
ALTER TABLE brother ADD FOREIGN KEY (enemy) REFERENCES enemy (id);
ALTER TABLE girl ADD FOREIGN KEY (friend) REFERENCES friend (id);

-- INSERTS
INSERT INTO friend (id,cardigan,earing,introverted)
	VALUES
			(NULL,'Baby blue cardigan',6,0);
			
INSERT INTO girl (id,earing,indifferent,necklace,density,thirdTime,cardigan,friend)			
	VALUES
			(NULL,6,0,35,'547.6661','2011-05-11','Black cardigan',1);

INSERT INTO boy (id,kuna,lipa,hairColor,thirdTime,necklace,extroverted)
	VALUES
			(NULL,'17.1','65.1','Brown','2005-08-12',13,0),
			(NULL,'17.5','5.1','Black','2007-08-12',53,1),
			(NULL,'67.4','4.7','Blonde','2009-08-12',3,1);

INSERT INTO man (id,dress,secondTime,thirdTime)
	VALUES
			(NULL,'Cocktail dress','1992-01-01','1995-05-16'),
			(NULL,'Cocktail dress','2002-01-01','2005-05-16'),
			(NULL,'Summer dress','2006-01-01','2017-05-16'),
			(NULL,'Cocktail dress','2012-01-01','2015-05-16');

INSERT INTO man_boy (id,man,boy)
	VALUES
			(NULL,1,2),
			(NULL,2,3),
			(NULL,3,1);

INSERT INTO reveler (id,euro,thirdTime,firstTime,man)
	VALUES
			(NULL,'457.52','2001-03-15','2005-06-08',1),
			(NULL,'57.52','2011-03-15','2015-06-08',3),
			(NULL,'957.52','2021-03-15','2025-06-08',2);

INSERT INTO enemy (id,shortTSHirt,introverted,indifferent,necklace,reveler)
	VALUES
			(NULL,'Adidas T-Shirt',1,1,35,3),
			(NULL,'Nike T-Shirt',0,0,5,1),
			(NULL,'Puma T-Shirt',1,0,6,2);

INSERT INTO brother (id,introverted,coin,thirdTime,enemy)
	VALUES
			(NULL,1,'48.78','2023-06-13',1);

UPDATE girl SET indifferent='0';

DELETE FROM brother WHERE coin!='12.75';

SELECT firstTime FROM reveler WHERE thirdTime IS NULL;

SELECT  a.hairColor, f.enemy, e.introverted
FROM boy a INNER JOIN man_boy b ON b.boy=a.id
INNER JOIN man c				ON b.man=c.id
INNER JOIN reveler d			ON d.man=c.id
INNER JOIN enemy e				ON e.reveler=d.id
INNER JOIN brother f			ON f.enemy=e.id
WHERE d.thirdTime IS NOT NULL AND c.secondTime IS NOT NULL
ORDER BY e.introverted DESC;

SELECT man.secondTime, man.thirdTime
FROM man
WHERE id NOT IN (SELECT id FROM man_boy);
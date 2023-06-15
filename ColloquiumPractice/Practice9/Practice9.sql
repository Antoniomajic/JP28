# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\ColloquiumPractice\Practice9\Practice9.sql

DROP DATABASE IF EXISTS Practice9;
CREATE DATABASE Practice9;
USE Practice9;

CREATE TABLE leftBehind(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	glassesModel VARCHAR(34) NOT NULL,
	skirt VARCHAR(32),
	euro DECIMAL(18,7) NOT NULL,
	lipa DECIMAL(15,7) NOT NULL,
	thirdTime DATETIME NOT NULL,
	secondTime DATETIME NOT NULL
);

CREATE TABLE goody(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ring INT,
	secondTIme DATETIME NOT NULL,
	dress VARCHAR(38) NOT NULL,
	leftBehind INT
);

CREATE TABLE friend(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	thirdTime DATETIME,
	coin DECIMAL(16,7),
	kuna DECIMAL(14,10) NOT NULL,
	secondTime DATETIME,
	dress VARCHAR(45),
	shortTShirt VARCHAR(45)
);

CREATE TABLE fatherInLaw(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bracelet INT NOT NULL,
	glassesModel VARCHAR(30),
	kuna DECIMAL(12,8),
	eyeColor VARCHAR(33),
	skirt VARCHAR(45)
);

CREATE TABLE fatherInLaw_friend(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fatherInLaw INT NOT NULL,
	friend INT NOT NULL
);

CREATE TABLE girl(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	cardigan VARCHAR(49) NOT NULL,
	extroverted BIT,
	sock VARCHAR(37),
	skirt VARCHAR(37) NOT NULL,
	fatherInLaw INT NOT NULL
);

CREATE TABLE brother(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	coin DECIMAL(18,9) NOT NULL,
	extroverted BIT NOT NULL,
	cardigan VARCHAR(32) NOT NULL,
	girl INT
);

CREATE TABLE fiance(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	density DECIMAL(17,6),
	dress VARCHAR(40),
	shortTShirt VARCHAR(48) NOT NULL,
	earing INT NOT NULL,
	brother INT NOT NULL
);

--RELATIONS
ALTER TABLE goody ADD FOREIGN KEY (leftBehind) REFERENCES leftBehind (id);
ALTER TABLE fiance ADD FOREIGN KEY (brother) REFERENCES brother (id);
ALTER TABLE brother ADD FOREIGN KEY (girl) REFERENCES girl (id);
ALTER TABLE girl ADD FOREIGN KEY (fatherInLaw) REFERENCES fatherInLaw (id);
ALTER TABLE fatherInLaw_friend ADD FOREIGN KEY (fatherInLaw) REFERENCES fatherInLaw (id);
ALTER TABLE fatherInLaw_friend ADD FOREIGN KEY (friend) REFERENCES friend (id);

--INSERTS

INSERT INTO leftBehind (id,glassesModel,skirt,euro,lipa,thirdTime,secondTime)
	VALUES
			(NULL,'Ray Ban','Versace baby blue skrit','457.52','35','2005-05-17','2001-12-12');

INSERT INTO goody (id,ring,secondTIme,dress,leftBehind)
	VALUES
			(NULL,16,'2026-11-25','Armani cocktail dress',1);

INSERT INTO friend (id,thirdTime,coin,kuna,secondTime,dress,shortTShirt)
	VALUES
			(NULL,'2001-01-05','54.884','14.6','2003-06-17','Black dress','Adidasler'),
			(NULL,'2002-01-05','47.4','47.612','2013-03-18','Yellow dress','Nike'),
			(NULL,'2003-01-05','57.8','17.76','2023-01-27','Brown dress','Puma');

INSERT INTO fatherInLaw (id,bracelet,glassesModel,kuna,eyeColor,skirt)
	VALUES
			(NULL,11,'Ducatello','115.11','Brown','Leather skirt'),
			(NULL,10091,'Romalero','7454.11','Blue','Panther skirt'),
			(NULL,1,'Balcanero','11','Gray','Denim skirt'),
			(NULL,33,'Balkanjeros','57.85','Brown','Denim skirt');

INSERT INTO fatherInLaw_friend (id,fatherInLaw,friend)
	VALUES
			(NULL,1,1),
			(NULL,2,2),
			(NULL,3,3);

INSERT INTO girl (id,cardigan,extroverted,sock,skirt,fatherInLaw)
	VALUES
			(NULL,'Blue cardigan',1,'Simpsons','Denim skirt',1),
			(NULL,'Yellow cardigan',0,'Smart socks','Black skirt',3),
			(NULL,'Baby blue cardigan',1,'Family guy','White skirt',2);

INSERT INTO brother (id,coin,extroverted,cardigan,girl)
	VALUES
			(NULL,'114.35',0,'Yellow cardigan',1),	
			(NULL,'2001',1,'Nice cardigan',2),	
			(NULL,'1.5',1,'Ugly cardigan',3);	

INSERT INTO fiance (id,density,dress,shortTShirt,earing,brother)
	VALUES
			(NULL,'114.2201','Ugly brown dress','Nike',2205,1);

UPDATE goody SET secondTIme = '2020-04-24';

DELETE FROM fiance WHERE dress = 'AB';

SELECT sock FROM girl WHERE extroverted IS NULL;

SELECT a.kuna, f.earing, e.extroverted
FROM friend a INNER JOIN fatherInLaw_friend b	ON b.friend=a.id
INNER JOIN fatherInLaw c						ON b.fatherInLaw=c.id
INNER JOIN girl d								ON d.fatherInLaw=c.id
INNER JOIN brother e							ON e.girl=d.id
INNER JOIN fiance f								ON f.brother=e.id
WHERE d.extroverted IS NOT NULL AND c.glassesModel = '%Ba%'
ORDER BY e.extroverted DESC;

SELECT c.glassesModel, c.kuna 
FROM fatherInLaw c
WHERE id NOT IN (SELECT id FROM fatherInLaw_friend);

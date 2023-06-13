# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\ColloquiumPractice\Practice7\Practice7.sql

DROP DATABASE IF EXISTS Practice7;
CREATE DATABASE Practice7;
USE Practice7;

CREATE TABLE girl(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	lipa DECIMAL(12,9) NOT NULL, 
	introverted BIT,
	glassesModel VARCHAR(40),
	bracelet INT,
	thirdTime DATETIME,
	kuna DECIMAL(14,9)
);

CREATE TABLE motherInLaw(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TShirt VARCHAR(40),
	euro DECIMAL(12,6) NOT NULL,
	ring INT,
	girl INT NOT NULL
);

CREATE TABLE fiance(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	cardigan VARCHAR(34),
	asocial BIT NOT NULL,
	glassesModel VARCHAR(43),
	bracelet INT NOT NULL,
	coin DECIMAL(15,5)
);


CREATE TABLE leftBehind(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	lipa DECIMAL(14,6),
	introverted BIT NOT NULL,
	shortTShirt VARCHAR(38) NOT NULL,
	ring INT NOT NULL,
	fiance INT
);

CREATE TABLE friend(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	dress VARCHAR(45),
	density DECIMAL(15,10) NOT NULL,
	necklace INT,
	coin DECIMAL(12,5),
	leftBehind INT 
);

CREATE TABLE sister(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	hairColor VARCHAR(34) NOT NULL,
	pants VARCHAR(36) NOT NULL,
	lipa DEciMAL(15,6),
	hairstyle VARCHAR(40) NOT NULL,
	mark DECIMAL(12,8) NOT NULL,
	friend INT
);

CREATE TABLE youngMan(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ring INT,
	lipa DECIMAL(14,5) NOT NULL,
	bracelet INT NOT NULL,
	secondTime DATETIME NOT NULL
);

CREATE TABLE fiance_youngMan(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fiance INT NOT NULL,
	youngMan INT NOT NULL
);


ALTER TABLE motherInLaw ADD FOREIGN KEY (girl) REFERENCES girl (id);
ALTER TABLE fiance_youngMan ADD FOREIGN KEY (fiance) REFERENCES fiance (id);
ALTER TABLE fiance_youngMan ADD FOREIGN KEY (youngMan) REFERENCES youngMan (id);
ALTER TABLE leftBehind ADD FOREIGN KEY (fiance) REFERENCES fiance (id);
ALTER TABLE friend ADD FOREIGN KEY (leftBehind) REFERENCES leftBehind (id);
ALTER TABLE sister ADD FOREIGN KEY (friend) REFERENCES friend (id);

--INSERTS

INSERT INTO girl (id,lipa,introverted,glassesModel,bracelet,thirdTime,kuna)
	VALUES 
			(NULL,'44','0','Ray Ban',8,'1999-01-01','368');

INSERT INTO motherInLaw (id,TShirt,euro,ring,girl)
	VALUES
			(NULL,'Smiley','654.521',3,1);

INSERT INTO youngMan (id,ring,lipa,bracelet,secondTime)
	VALUES
			(NULL,153,'87',1,'2022-05-08'),
			(NULL,13,'3',15,'2022-01-08'),
			(NULL,NULL,'13',354,'2022-03-08');

INSERT INTO fiance (id,cardigan,asocial,glassesModel,bracelet,coin)
	VALUES
			(NULL,'Baby blue cardigan',1,'Roberto',6,'51.487'),
			(NULL,'Red cardigan',0,'Ray Ban',16,'1347.8445'),
			(NULL,'Brown cardigan',1,'Ali',60,'1.487057');


INSERT INTO fiance_youngMan (id,fiance,youngMan)
	VALUES
			(NULL,1,1),
			(NULL,2,3),
			(NULL,3,2);

INSERT INTO leftBehind (id,lipa,introverted,shortTShirt,ring,fiance)
	VALUES
			(NULL,'54',0,'Yellow T-Shirt',1547,1),
			(NULL,'879.211',1,'Black T-Shirt',13,2),
			(NULL,'5.4',0,'Baby blue T-Shirt',7,3);

INSERT INTO friend (id,dress,density,necklace,coin,leftBehind)
	VALUES
			(NULL,'Versace red gown','25.678',25,'4117',1),
			(NULL,'Armani black dress','5.6',1,'25.88',2),
			(NULL,'Summer dress','117.55',113,'3.4478',3);

INSERT INTO sister (id,hairColor,pants,lipa,hairstyle,mark,friend)
	VALUES
			(NULL,'Blonde','Leather pants','445','Long wavy','457.5223',1);

UPDATE motherInLaw SET euro='15.77';

DELETE FROM sister WHERE pants < 'AB';

SELECT shortTShirt FROM leftBehind WHERE introverted IS NULL;

SELECT a.bracelet, f.hairstyle, e.density
FROM youngMan a INNER JOIN fiance_youngMan b	ON b.youngMan=a.id
INNER JOIN  fiance c							ON b.fiance=c.id
INNER JOIN leftBehind d							ON d.fiance=c.id
INNER JOIN friend e								ON e.leftBehind=d.id
INNER JOIN sister f								ON f.friend=e.id
WHERE d.introverted IS NOT NULL AND c.asocial IS NOT NULL
ORDER BY e.density DESC;

SELECT fiance.asocial, fiance.glassesModel 
FROM fiance
WHERE id NOT IN (SELECT id FROM fiance_youngMan);
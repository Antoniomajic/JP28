# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\javaprogrameri\dz1\ColloquiumPractice\Practice1\Practice1.sql

DROP database IF EXISTS   Practice1;
CREATE database Practice1;
use Practice1;

-- 1. CREATE TABLES AND RELATIONS BETWEEN THEM

CREATE TABLE  girl(
	id int NOT NULL PRIMARY KEY auto_increment,
	coin decimal(16,5) NOT NULL,
	density decimal(18,6) NOT NULL,
	lipa decimal(13,10),
	necklace int NOT NULL,
	hairColor varchar(38),
	skirt varchar(36),
	fatherInLaw int 
);

CREATE TABLE fatherInLaw(
	id int NOT NULL PRIMARY KEY auto_increment,
	necklace int,
	density decimal(14,9),
	pants varchar(41) NOT NULL
);

CREATE TABLE youngMan(
	id int NOT NULL PRIMARY KEY auto_increment,
	skirt varchar(50) NOT NULL,
	kuna decimal(16,8) NOT NULL,
	nextTime datetime,
	asocial bit,
	extroverted bit NOT NULL,
	sweatshirt varchar(48) NOT NULL,
	man int
);

CREATE TABLE man(
	id int NOT NULL PRIMARY KEY auto_increment,
	colorOfEyes varchar(50) NOT NULL,
	pants varchar(30),
	glassesModel varchar(43),
	marks decimal(14,5) NOT NULL,
	woman int NOT NULL
);

CREATE TABLE woman(
	id int NOT NULL PRIMARY KEY auto_increment,
	thirdTime datetime,
	pants varchar(46),
	TShirt varchar(31) NOT NULL,
	idNumber char(11) NOT NULL,
	colorOfEyes varchar(39) NOT NULL,
	dress varchar(44),
	sister int NOT NULL
);

CREATE TABLE sister(
	id int NOT NULL PRIMARY KEY auto_increment,
	introverted bit,
	dress varchar(31) NOT NULL,
	marks decimal(16,6),
	pants varchar(46) NOT NULL,
	bracelet int NOT NULL
);

CREATE TABLE secondFatherInLaw(
	id int NOT NULL PRIMARY KEY auto_increment,
	colorOfEyes varchar(40) NOT NULL,
	ring int,
	sweatshirt varchar(41),
	lipa decimal(13,8),
	euro decimal(12,7),
	shirt varchar(35)
);


CREATE TABLE sister_secondFatherInLaw(
	id int NOT NULL PRIMARY KEY key auto_increment,
	sister int NOT NULL,
	secondFatherInLaw int NOT NULL
);

--RELATIONS

ALTER TABLE girl ADD FOREIGN KEY (fatherInLaw) REFERENCES fatherInLaw (id);
ALTER TABLE youngMan ADD FOREIGN KEY (man) REFERENCES man (id);
ALTER TABLE man ADD FOREIGN KEY (woman) REFERENCES woman (id);
ALTER TABLE woman ADD FOREIGN KEY (sister) REFERENCES sister (id);
ALTER TABLE sister_secondFatherInLaw ADD FOREIGN KEY (sister) REFERENCES sister (id);
ALTER TABLE sister_secondFatherInLaw ADD FOREIGN KEY (secondFatherInLaw) REFERENCES secondFatherInLaw (id);

--1. INSERTS

INSERT INTO fatherInLaw (id,necklace,density,pants)
	VALUES
			(NULL,'1','9.5','Amadeus pants');

INSERT INTO girl (id,coin,density,lipa,necklace,hairColor,skirt,fatherInLaw)
	VALUES 
			(NULL,'45.78','38.61','97.41','2','Black','Short skirt',1);

INSERT INTO secondFatherInLaw (id,colorOfEyes,ring,sweatshirt,lipa,euro,shirt)
	VALUES
			(NULL,'Brown','5','Puma','1005.36','558.741','Yellow shirt'),
			(NULL,'Grey','1','Adidas','5.87','9997.41059','Yellow shirt'),
			(NULL,'Blue','2','Nike','378.41','41.870','Yellow shirt');

INSERT INTO sister (id,introverted,dress,marks,pants,bracelet)
	VALUES 
			(NULL,'1','Blue summer dress','87.11','Denim','3'),
			(NULL,'0','Cocktail dress','7.1','Brown','0'),
			(NULL,'1','Long baby blue dress','182.16','Slim fit black','3');

INSERT INTO sister_secondFatherInLaw (id,sister,secondFatherInLaw)
	VALUES
			(NULL,1,1),
			(NULL,2,3),
			(NULL,3,2);
		
INSERT INTO woman (id,thirdTime,pants,TShirt,idNumber,colorOfEyes,dress,sister)
	VALUES
			(NULL,NULL,'Armani','Blue','78451263958','Light Blue','Short','2'),
			(NULL,'2021-08-14 00:00:00','Smart','Brown','54781245914','Brown','Long dress','1'),
			(NULL,NULL,'Blue','Brown','00369528715','Brown','Yellow summer dress','3');

INSERT INTO man (id,colorOfEyes,pants,glassesModel,marks,woman)
	VALUES 
			(NULL,'Brown','Black Pants','Ray Ban','587.52','3'),
			(NULL,'Brown','Grey Pants','Ricardo','115.741','2'),
			(NULL,'Brown','Light Brown Pants','Ray Sun','107854.967','1');

INSERT INTO youngMan (id,skirt,kuna,nextTime,asocial,extroverted,sweatshirt,man)
	VALUES
			(NULL,'Short Grey Skirt','584.74',NULL,'0','0','Adidas Blue','2');


-- 2. CHANGE ALL RECORDS IN COLUMN DENSITY IN "GIRL" TABLE TO 15.77

UPDATE girl set density=15.77;

-- 3. DELETE RECORDS FROM youngMan TABLE WHERE VALUE OF kuna COLUMN > 15.78
DELETE FROM youngMan WHERE kuna>15.78;

-- 4. SELECT TShirt FROM TABLE woman WHERE VALUE OF COLUMN pants CONTAINS LETTERS ana
SELECT * FROM woman WHERE TShirt like '&ana&';

-- 5. SELECT sweatshirt FROM TABLE secondFatherInLaw, asocial FROM TABLE youngMan & pants FROM TABLE man WHERE VALUES OF COLUMN pants FROM TABLE woman START WITH LETTER A AND THAT VALUES OF COLUMN dress FROM VALUE sister
-- CONTAINS ROW OF LETTER BA. ORDER DATA BY pants FROM TABLE man DOWNWARDS.

SELECT DISTINCT a.sweatshirt, f.asocial, e.pants
FROM secondFatherInLaw a 
INNER JOIN sister_secondFatherInLaw b			ON b.secondFatherInLaw=a.id
INNER JOIN  sister c							ON c.id=b.sister
INNER JOIN  woman d								ON d.sister=c.id
INNER JOIN  man e								ON e.woman=d.id
INNER JOIN  youngMan f							ON f.man=e.id
WHERE d.pants like 'A%' and c.dress like '%ba%'
ORDER BY e.pants;

-- 6. SELECT COLUMN dress & marks FROM TABLE sister WHOSE PRIMARY KEY IS NOT IN TABLE sister_secondFatherInLaw
SELECT sister.dress, sister.marks
FROM sister
WHERE id NOT IN 
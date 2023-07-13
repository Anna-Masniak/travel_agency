 CREATE TABLE continents (
 	continent_id INT (11) UNSIGNED NOT NULL,
 	continent_name VARCHAR(25),
 	PRIMARY KEY (continent_id)
 	);

 CREATE TABLE countries (
 	country_id CHAR(2) NOT NULL,
 	country_name VARCHAR(40),
 	continent_id INT (11) UNSIGNED NOT NULL,
 	PRIMARY KEY (country_id)
 );

 CREATE TABLE address (
 address_id  INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 street_address VARCHAR(40),
 postal_code VARCHAR(12),
 city VARCHAR(30) NOT NULL,
 country_id CHAR(2) NOT NULL,
 PRIMARY KEY (address_id)
 );

 CREATE TABLE airport (
 airport_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 airport_name VARCHAR(40),
 PRIMARY KEY (airport_id)
 );

 CREATE TABLE catering (
  catering_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 catering_type VARCHAR(40),
 PRIMARY KEY (catering_id)
 );
 CREATE TABLE hotel (
 hotel_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 name TEXT NOT NULL,
 hotel_standard INTEGER NOT NULL
 );
 CREATE TABLE offer_category (
  category_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 name VARCHAR(255) DEFAULT NULL
 );
 CREATE TABLE IF NOT EXISTS offer (
 offer_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 name VARCHAR(255) DEFAULT NULL,
 description VARCHAR(255) DEFAULT NULL,
 unit_price DECIMAL(13,2) DEFAULT NULL,
 image_url VARCHAR(255) DEFAULT NULL,
 is_active BIT DEFAULT 1,
 units_in_stock INT(11) DEFAULT NULL,
 date_created DATETIME(6) DEFAULT NULL,
 start_date DATETIME(6) DEFAULT NULL,
 end_date DATETIME(6) DEFAULT NULL,
 last_updated DATETIME(6) DEFAULT NULL,
 category_id BIGINT(20) NOT NULL,
  KEY fk_category (category_id),
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES offer_category (id)
 );
 CREATE TABLE offer_category (
  category_id INT(100) UNSIGNED NOT NULL  AUTO_INCREMENT,
 name VARCHAR(255) DEFAULT NULL
 );
























 Table `full-stack-ecommerce`.`product_category`
 -----------------------------------------------------
 CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`offer_category` (
   `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
   `category_name` VARCHAR(255) NULL DEFAULT NULL,
   PRIMARY KEY (`id`))
 ENGINE=InnoDBoffer_category
 AUTO_INCREMENT = 1;
 -----------------------------------------------------
 Table `full-stack-ecommerce`.`product`
 -----------------------------------------------------
 CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`offer` (
   `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
   `country` VARCHAR(255) DEFAULT NULL,
   `continent` VARCHAR(255) DEFAULT NULL,
   `city` VARCHAR(255) DEFAULT NULL,
   `name` VARCHAR(255) DEFAULT NULL,
   `description` VARCHAR(255) DEFAULT NULL,
   `price` DECIMAL(13,2) DEFAULT NULL,
   `image_url` VARCHAR(255) DEFAULT NULL,
   `active` BIT DEFAULT 1,
   `promoted` BIT DEFAULT 1,
   `last_minute` BIT DEFAULT 1,
   `vacancy` INT(11) DEFAULT NULL,
    `date_created` DATETIME(6) DEFAULT NULL,
   `last_updated` DATETIME(6) DEFAULT NULL,
   `category_id` BIGINT(20) NOT NULL,
   PRIMARY KEY (`id`),
   KEY `fk_category` (`category_id`),
   CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `offer_category` (`id`)
 )

 CREATE TABLE photos (
   id BIGINT(20) NOT NULL AUTO_INCREMENT,
   title VARCHAR(255),
   url VARCHAR(255),
   PRIMARY KEY (id)
 );
 INSERT INTO photos (title, url) VALUES
   ('Przygoda z szejkiem','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQA2WvjjewusDVrc5p4j0GqNDhsvQJ0ZczpSY0-edT7VUQaKLR9'),
   ('Afrykańskie safari','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTxaGaoDsCn4i23NASRpH6EMdMA3tIaxMFpP13IHyL2Shh44jfd'),
   ('Maltańskie trojaczki','https://img.wprost.pl/img/malta/67/8c/bdbb3f57a670110c0567c1f80ced.jpeg');

 ENGINE=InnoDB
 AUTO_INCREMENT = 1;
 INSERT INTO offer_category(category_name) VALUES ('PACKAGE TOUR');
 UPDATE offer
 SET description = 'Tarangine słynie z często występujących tu słoni, które całymi rodzinami przechadzają się nawet kilka metrów od samochodów – na pewno napatrzycie się na nie do woli. Bez trudu traficie też na zebry, żyrafy, gazele i hipopotamy chłodzące się w jeziorkach.'
 WHERE id = 123;
 ALTER TABLE offer
 add last_minute BIT DEFAULT 1;
 UPDATE offer
 SET category_id=2
 WHERE id = 1;
 DELETE FROM offer_category
 WHERE category_name = 'excursion';



 -----------------------------------------------------
 Add sample data
 -----------------------------------------------------
 INSERT INTO OFFER (country, continent,city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Malediwy', 'Azja', 'Male', 'Hotel Diamonds Athuruga Island Resort', 'Jeden z największych hoteli na Malediwach położony w niewielkiej odległości od lotniska. Zlokalizowany na zapierającej dech w piersiach tropikalnej wyspie z bujną roślinnością, niesamowitymi plażami oraz pokojami o dobrym standardzie. ',
 '8699', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/last.png',
  0, 1, 0, 20, NOW(), NOW(), 1);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Tanzania', 'Afryka','Tarangire', 'Afrykańskie Safari', 'Park w Tarangirze słynie z często występujących tu słoni, które całymi rodzinami przechadzają się nawet kilka metrów od samochodów. Traficie też na zebry, żyrafy, gazele, a także hipopotamy chłodzące się w jeziorkach.',
 '10379', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/SAFARI.png',
  0, 0, 1, 12, NOW(), NOW(), 1);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Honduras', 'Ameryka Północna', 'Roatan', 'Ahoj przygodo!', 'Rejs Ameryka Środkowa - Norwegian Prima',
 '9889', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/cruise.jpg',
  0, 1, 1, 30, NOW(), NOW(), 4);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Indie', 'Azja', 'Delhi', 'India Express','Pachnąca przyprawami i przyprawiająca o zawrót głowy bogactwem kolorów. Skłaniająca do zadumy historia, fascynująca religia, mozaika etniczna i wspaniałe zabytki wpisane na listę UNESCO.',
 '6388', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/indie.jpg',
  0, 1, 1, 24, NOW(), NOW(), 6);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Kongo', 'Afryka', 'Kinszasa', 'Na szlaku Bonobo','Kongo to  jedno z najciekawszych państw Afryki. Pierwotne lasy, dżungla, góry, wodospady i sawanny. Podczas naszej wyprawy zobaczymy: Pięć Parków Narodowych, słonie, goryle, szympansy, liczne pantery, mandryle, koczkodany, hipopotamy i wiele innych',
 '24000', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/congo.jpg',
  0, 1, 1, 6, NOW(), NOW(), 1);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Austria', 'Europa', 'Wiedeń', 'City break w Wiedniu','Przyciąga wielkim bogactwem wielowiekowej historii, kultury i tradycji. Podczas wycieczki zobaczymy m.in. gotycką Katedrę Św. Szczepana, Ratusz, Operę Wiedeńską, Parlament, Uniwersytet, Hofburg oraz dawną siedzibę Habsburgów - Pałac Schönbrunn. ',
 '500', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/austria.jpg',
  0, 0, 1, 6, NOW(), NOW(), 3);
 INSERT INTO OFFER (country, continent, city, name, description, price, image_url,
 active, promoted, last_minute, vacancy, date_created, last_updated, category_id)
 VALUES ('Malta', 'Europa', 'Malta', 'Malta - wyspiarskie państwo-miasto','Spaceruj po urokliwej Valletcie, wybierz się w rejs na bajeczną wyspę Gozo, poznaj Comino – kryjówkę piratów i spróbuj tradycyjnych maltańskich przysmaków podczas nocy maltańskiej.',
 '3280', 'D:/Kurs_Orange/projekt/wonderlunatics/src/assets/image/malta.jpg',
  0, 0, 1, 26, NOW(), NOW(), 6);









---- -----------------------------------------------------
---- Schema full-stack-ecommerce
---- -----------------------------------------------------
--DROP SCHEMA IF EXISTS `full-stack-ecommerce`;
--CREATE SCHEMA `full-stack-ecommerce`;
--USE `full-stack-ecommerce` ;
--alter table offer
--add promoted BIT DEFAULT 1;
---- -----------------------------------------------------
---- Table `full-stack-ecommerce`.`product_category`
---- -----------------------------------------------------
--CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`offer_category` (
--  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
--  `category_name` VARCHAR(255) NULL DEFAULT NULL,
--  PRIMARY KEY (`id`))
--ENGINE=InnoDB
--AUTO_INCREMENT = 1;
---- -----------------------------------------------------
---- Table `full-stack-ecommerce`.`product`
---- -----------------------------------------------------
--CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`offer` (
--  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
--  `sku` VARCHAR(255) DEFAULT NULL,
--  `name` VARCHAR(255) DEFAULT NULL,
--  `description` VARCHAR(255) DEFAULT NULL,
--  `unit_price` DECIMAL(13,2) DEFAULT NULL,
--  `image_url` VARCHAR(255) DEFAULT NULL,
--  `active` BIT DEFAULT 1,
--  `units_in_stock` INT(11) DEFAULT NULL,
--   `date_created` DATETIME(6) DEFAULT NULL,
--   `start_date` DATETIME(6) DEFAULT NULL,
--   `end_date` DATETIME(6) DEFAULT NULL,
--  `last_updated` DATETIME(6) DEFAULT NULL,
--  `category_id` BIGINT(20) NOT NULL,
--  PRIMARY KEY (`id`),
--  KEY `fk_category` (`category_id`),
--  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `offer_category` (`id`)
--)
--ENGINE=InnoDB
--AUTO_INCREMENT = 1;
--SELECT * FROM offer_category;
--SELECT * FROM offer;
--ALTER TABLE offer
--add last_minute BIT DEFAULT 1;
--UPDATE table_name
--SET column1 = new_value1, column2 = new_value2, ...
--WHERE condition;
--DELETE FROM offer_category
--WHERE category_name = 'excursion';
--
--

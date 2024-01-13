USE sakila;

-- Delete data
ALTER TABLE staff DROP FOREIGN KEY fk_staff_store , DROP FOREIGN KEY fk_staff_address;
DELETE FROM payment ;
DELETE FROM rental ;
DELETE FROM customer ;
DELETE FROM film_category ;
DELETE FROM film_text ;
DELETE FROM film_actor ;
DELETE FROM inventory ;
DELETE FROM film ;
DELETE FROM category ;
ALTER TABLE store CHANGE COLUMN manager_staff_id manager_staff_id INT UNSIGNED NULL;
update store set manager_staff_id=null;
DELETE FROM staff ;
DELETE FROM store ;
DELETE FROM actor ;
DELETE FROM address ;
DELETE FROM city ;
DELETE FROM country ;
DELETE FROM language ;
ALTER TABLE store CHANGE COLUMN manager_staff_id manager_staff_id INT UNSIGNED NOT NULL;
-- Automatically generated by Advanced ETl Processor
-- http://www.etl-tools.com/
-- table language
-- Start of script
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('1','English','2006-02-15 05:02:19.000')
;
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('2','Italian','2006-02-15 05:02:19.000')
;
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('3','Japanese','2006-02-15 05:02:19.000')
;
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('4','Mandarin','2006-02-15 05:02:19.000')
;
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('5','French','2006-02-15 05:02:19.000')
;
Insert into language
(`language_id`,`name`,`last_update`)
Values
    ('6','German','2006-02-15 05:02:19.000');

Insert into country
(`country_id`,`country`,`last_update`)
Values
    ('44','India','2006-02-15 04:44:00.000')
;



Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('1','PENELOPE','GUINESS','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('2','NICK','WAHLBERG','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('3','ED','CHASE','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('4','JENNIFER','DAVIS','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('5','JOHNNY','LOLLOBRIGIDA','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('6','BETTE','NICHOLSON','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('7','GRACE','MOSTEL','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('8','MATTHEW','JOHANSSON','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('9','JOE','SWANK','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('10','CHRISTIAN','GABLE','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('11','ZERO','CAGE','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('12','KARL','BERRY','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('13','UMA','WOOD','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('14','VIVIEN','BERGEN','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('15','CUBA','OLIVIER','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('16','FRED','COSTNER','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('17','HELEN','VOIGHT','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('18','DAN','TORN','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('19','BOB','FAWCETT','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('20','LUCILLE','TRACY','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('21','KIRSTEN','PALTROW','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('22','ELVIS','MARX','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('23','SANDRA','KILMER','2006-02-15 04:34:33.000')
;
Insert into actor
(`actor_id`,`first_name`,`last_name`,`last_update`)
Values
    ('24','CAMERON','STREEP','2006-02-15 04:34:33.000')
;


-- End of Script


--
--
-- Automatically generated by Advanced ETl Processor
-- http://www.etl-tools.com/
-- table category
-- Start of script
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('1','Action','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('2','Animation','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('3','Children','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('4','Classics','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('5','Comedy','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('6','Documentary','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('7','Drama','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('8','Family','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('9','Foreign','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('10','Games','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('11','Horror','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('12','Music','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('13','New','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('14','Sci-Fi','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('15','Sports','2006-02-15 04:46:27.000')
;
Insert into category
(`category_id`,`name`,`last_update`)
Values
    ('16','Travel','2006-02-15 04:46:27.000')
;
-- End of Script
--
--
-- Automatically generated by Advanced ETl Processor
-- http://www.etl-tools.com/
-- table film
-- Start of script
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('1','ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies','2006','1',NULL,'6','0.99','86','20.99','PG','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('2','ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China','2006','1',NULL,'3','4.99','48','12.99','G','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('3','ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory','2006','1',NULL,'7','2.99','50','18.99','NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('4','AFFAIR PREJUDICE','A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank','2006','1',NULL,'5','2.99','117','26.99','G','Commentaries,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('5','AFRICAN EGG','A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico','2006','1',NULL,'6','2.99','130','22.99','G','Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('6','AGENT TRUMAN','A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China','2006','1',NULL,'3','2.99','169','17.99','PG','Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('7','AIRPLANE SIERRA','A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat','2006','1',NULL,'6','4.99','62','28.99','PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('8','AIRPORT POLLOCK','A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India','2006','1',NULL,'6','4.99','54','15.99','R','Trailers','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('9','ALABAMA DEVIL','A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat','2006','1',NULL,'3','2.99','114','21.99','PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('10','ALADDIN CALENDAR','A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China','2006','1',NULL,'6','4.99','63','24.99','NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('11','ALAMO VIDEOTAPE','A Boring Epistle of a Butler And a Cat who must Fight a Pastry Chef in A MySQL Convention','2006','1',NULL,'6','0.99','126','16.99','G','Commentaries,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('12','ALASKA PHANTOM','A Fanciful Saga of a Hunter And a Pastry Chef who must Vanquish a Boy in Australia','2006','1',NULL,'6','0.99','136','22.99','PG','Commentaries,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('13','ALI FOREVER','A Action-Packed Drama of a Dentist And a Crocodile who must Battle a Feminist in The Canadian Rockies','2006','1',NULL,'4','4.99','150','21.99','PG','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('14','ALICE FANTASIA','A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet Georgia','2006','1',NULL,'6','0.99','94','23.99','NC-17','Trailers,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('15','ALIEN CENTER','A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention','2006','1',NULL,'5','2.99','46','10.99','NC-17','Trailers,Commentaries,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('16','ALLEY EVOLUTION','A Fast-Paced Drama of a Robot And a Composer who must Battle a Astronaut in New Orleans','2006','1',NULL,'6','2.99','180','23.99','NC-17','Trailers,Commentaries','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('17','ALONE TRIP','A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun House','2006','1',NULL,'3','0.99','82','14.99','R','Trailers,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('18','ALTER VICTORY','A Thoughtful Drama of a Composer And a Feminist who must Meet a Secret Agent in The Canadian Rockies','2006','1',NULL,'6','0.99','57','27.99','PG-13','Trailers,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('19','AMADEUS HOLY','A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon','2006','1',NULL,'6','0.99','113','20.99','PG','Commentaries,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('20','AMELIE HELLFIGHTERS','A Boring Drama of a Woman And a Squirrel who must Conquer a Student in A Baloon','2006','1',NULL,'4','4.99','79','23.99','R','Commentaries,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('21','AMERICAN CIRCUS','A Insightful Drama of a Girl And a Astronaut who must Face a Database Administrator in A Shark Tank','2006','1',NULL,'3','4.99','129','17.99','R','Commentaries,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('22','AMISTAD MIDSUMMER','A Emotional Character Study of a Dentist And a Crocodile who must Meet a Sumo Wrestler in California','2006','1',NULL,'6','2.99','85','10.99','G','Commentaries,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('23','ANACONDA CONFESSIONS','A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia','2006','1',NULL,'3','0.99','92','9.99','R','Trailers,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('24','ANALYZE HOOSIERS','A Thoughtful Display of a Explorer And a Pastry Chef who must Overcome a Feminist in The Sahara Desert','2006','1',NULL,'6','2.99','181','19.99','R','Trailers,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('25','ANGELS LIFE','A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin','2006','1',NULL,'3','2.99','74','15.99','G','Trailers','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('26','ANNIE IDENTITY','A Amazing Panorama of a Pastry Chef And a Boat who must Escape a Woman in An Abandoned Amusement Park','2006','1',NULL,'3','0.99','86','15.99','G','Commentaries,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('27','ANONYMOUS HUMAN','A Amazing Reflection of a Database Administrator And a Astronaut who must Outrace a Database Administrator in A Shark Tank','2006','1',NULL,'7','0.99','179','12.99','NC-17','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('28','ANTHEM LUKE','A Touching Panorama of a Waitress And a Woman who must Outrace a Dog in An Abandoned Amusement Park','2006','1',NULL,'5','4.99','91','16.99','PG-13','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('29','ANTITRUST TOMATOES','A Fateful Yarn of a Womanizer And a Feminist who must Succumb a Database Administrator in Ancient India','2006','1',NULL,'5','2.99','168','11.99','NC-17','Trailers,Commentaries,Deleted Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('30','ANYTHING SAVANNAH','A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House','2006','1',NULL,'4','2.99','82','27.99','R','Trailers,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('31','APACHE DIVINE','A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-Boat','2006','1',NULL,'5','4.99','92','16.99','NC-17','Commentaries,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('32','APOCALYPSE FLAMINGOS','A Astounding Story of a Dog And a Squirrel who must Defeat a Woman in An Abandoned Amusement Park','2006','1',NULL,'6','4.99','119','11.99','R','Trailers,Commentaries','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('33','APOLLO TEEN','A Action-Packed Reflection of a Crocodile And a Explorer who must Find a Sumo Wrestler in An Abandoned Mine Shaft','2006','1',NULL,'5','2.99','153','15.99','PG-13','Trailers,Commentaries,Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000')
;
Insert into film
(`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`)
Values
    ('34','ARABIA DOGMA','A Touching Epistle of a Madman And a Mad Cow who must Defeat a Student in Nigeria','2006','1',NULL,'6','0.99','62','29.99','NC-17','Commentaries,Deleted Scenes','2006-02-15 05:03:42.000')
;



-- End of Script
--
--
-- ALTER TABLE staff ADD CONSTRAINT `fk_staff_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE;
-- ALTER TABLE staff ADD CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE;

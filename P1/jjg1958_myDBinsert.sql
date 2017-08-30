/*
Class: 			CSE 3330
Semester: 		Fall 2016
Student Name: 	Green, John, jjg1958
Student ID: 	1001011958
Assignment: 	project #1 
*/

/* insert into Airport */

INSERT INTO airport Values(1,'dallas','texas');
INSERT INTO airport Values(2,'fort worth','texas');
INSERT INTO airport Values(3,'arlington','texas');
INSERT INTO airport Values(4,'amirillo','texas');
INSERT INTO airport Values(5,'el paso','texas');
INSERT INTO airport Values(6,'san antonio','texas');
INSERT INTO airport Values(7,'austin','texas');
INSERT INTO airport Values(8,'corpis cristi','texas');
INSERT INTO airport Values(9,'lerado','texas');
INSERT INTO airport Values(10,'midland','texas');
INSERT INTO airport Values(11,'port isabel','texas');
INSERT INTO airport Values(12,'brownsville','texas');

/* insert into flight */

INSERT INTO flight Values(1,'y','n');
INSERT INTO flight Values(2,'y','n');
INSERT INTO flight Values(3,'n','n');
INSERT INTO flight Values(4,'y','n');
INSERT INTO flight Values(5,'n','n');
INSERT INTO flight Values(6,'y','n');
INSERT INTO flight Values(7,'n','y');
INSERT INTO flight Values(8,'y','n');
INSERT INTO flight Values(9,'n','n');
INSERT INTO flight Values(10,'y','y');
INSERT INTO flight Values(11,'n','n');
INSERT INTO flight Values(12,'y','n');

/* insert into planeType */

INSERT INTO planeType Values('slk','ywe',500,10);
INSERT INTO planeType Values('mlk','rwe',600,20);
INSERT INTO planeType Values('tlk','uwe',700,10);
INSERT INTO planeType Values('slk','ree',400,10);
INSERT INTO planeType Values('slk','qyt',900,10);
INSERT INTO planeType Values('slk','qwe',300,10);

/* insert into pilot */

INSERT INTO pilot Values(1,'slk','2013-09-30 19:05:00');
INSERT INTO pilot Values(12,'fewq','2013-08-30 19:05:00');
INSERT INTO pilot Values(13,'fdsh','2013-07-30 19:05:00');
INSERT INTO pilot Values(14,'slk','2013-06-30 19:05:00');
INSERT INTO pilot Values(15,'slkuyk','2013-05-30 19:05:00');
INSERT INTO pilot Values(16,'sdfg','2013-04-30 19:05:00');
INSERT INTO pilot Values(17,'sltrewk','2013-01-30 19:05:00');

/* insert into passenger */

INSERT INTO passenger Values(1,'slk','1234567890');
INSERT INTO passenger Values(12,'grea','2234567890');
INSERT INTO passenger Values(13,'shgfdslk','3234567890');
INSERT INTO passenger Values(14,'sltyrwk','4234567890');
INSERT INTO passenger Values(15,'wqeteq','5234567890');

/* insert into planeSeats */

INSERT INTO planeSeats Values('slk','ywe','sml',111);
INSERT INTO planeSeats Values('mlk','rwe','sml',156);
INSERT INTO planeSeats Values('tlk','uwe','sml',190);
INSERT INTO planeSeats Values('slk','qwe','sml',100);

/* insert into plane */

INSERT INTO plane Values(1,'slk','ywe','2013-09-30 19:05:00',1);
INSERT INTO plane Values(2,'mlk','rwe','2013-09-30 19:05:00',2);
INSERT INTO plane Values(3,'tlk','uwe','2013-09-30 19:05:00',3);
INSERT INTO plane Values(6,'slk','qwe','2013-09-30 19:05:00',3);

/* insert into flightLeg */

INSERT INTO flightLeg Values(1,1,1,2,'2013-09-30 19:05:00','2013-09-30 22:05:00',1);
INSERT INTO flightLeg Values(2,1,1,2,'2013-09-30 19:05:00','2013-09-30 22:05:00',2);
INSERT INTO flightLeg Values(3,1,1,2,'2013-09-30 19:05:00','2013-09-30 22:05:00',3);

/* insert into flightInstance */

INSERT INTO flightInstance Values(1,'2013-09-30 19:05:00');
INSERT INTO flightInstance Values(2,'2013-09-30 19:05:00');
INSERT INTO flightInstance Values(3,'2013-09-30 19:05:00');
INSERT INTO flightInstance Values(4,'2013-09-30 19:05:00');
INSERT INTO flightInstance Values(5,'2013-09-30 19:05:00');

/* insert into flightLegInstance */

INSERT INTO flightLegInstance Values(1,1,'2013-09-30 19:05:00','2013-09-30 19:05:00','2013-09-30 20:05:00',1);
INSERT INTO flightLegInstance Values(2,1,'2013-09-30 19:05:00','2013-09-30 19:05:00','2013-09-30 20:05:00',12);
INSERT INTO flightLegInstance Values(3,1,'2013-09-30 19:05:00','2013-09-30 19:05:00','2013-09-30 20:05:00',13);

/* insert into reservation */

INSERT INTO reservation Values(1,1,'2013-09-30 19:05:00',1,2,'f','2013-09-30 19:05:00',NULL);
INSERT INTO reservation Values(12,1,'2013-09-30 19:05:00',1,2,'t','2013-09-30 19:05:00',NULL);
INSERT INTO reservation Values(13,1,'2013-09-30 19:05:00',1,2,'t','2013-09-30 19:05:00',NULL);

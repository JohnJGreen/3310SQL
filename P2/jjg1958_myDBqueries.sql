/*
Class: 			CSE 3330
Semester: 		Fall 2016
Student Name: 	Green, John, jjg1958
Student ID: 	1001011958
Assignment: 	project #2 
*/

-- Retrieve all flight IDs with meals

SELECT 	`FLNO`
FROM 	`Flight`
WHERE 	`Meal`=1;

-- +------+
-- | FLNO |
-- +------+
-- | 100  |
-- | 200  |
-- | 500  |
-- | 600  |
-- | 700  |
-- +------+
-- 5 rows in set (0.00 sec)

-- Retrieve the Model and Flying Speed of every Plane Type made by Boeing

SELECT 	`Model`,`FlyingSpeed`
FROM 	`PlaneType`
WHERE	`Maker`='Boeing';

-- +-------+-------------+
-- | Model | FlyingSpeed |
-- +-------+-------------+
-- | 747   |         600 |
-- | 777   |         600 |
-- | 787   |         600 |
-- +-------+-------------+
-- 3 rows in set (0.00 sec)


-- Retrieve the ID, Make and Model of each plane that has a flying speed or GroundSpeed greater than 100

SELECT 	`ID`,P.Maker,P.Model
FROM 	`Plane` AS P,`PlaneType` AS T
WHERE	P.Maker=T.Maker AND P.Model=T.Model 
		AND (T.FlyingSpeed>100 OR T.GroundSpeed>100);
		
-- +----+--------+-------+
-- | ID | Maker  | Model |
-- +----+--------+-------+
-- |  7 | Airbus | 340   |
-- |  8 | Airbus | 340   |
-- |  5 | Airbus | 380   |
-- |  6 | Airbus | 380   |
-- |  1 | Boeing | 747   |
-- |  2 | Boeing | 777   |
-- |  3 | Boeing | 777   |
-- |  4 | Boeing | 787   |
-- +----+--------+-------+
-- 8 rows in set (0.00 sec)

-- Retrieve the name of every Pilot who had flown an Airbus 380

SELECT 	DISTINCT Pt.Name
FROM 	`Pilot` AS Pt,`Plane` AS Pa,`FlightLegInstance` AS FLI, `FlightLeg` AS FL
WHERE	Pt.ID=FLI.Pilot 
		AND Pa.ID=FL.Plane 
		AND Pa.Maker='Airbus' AND Pa.Model='380'
		AND FLI.FLNO=FL.FLNO AND FLI.Seq=FL.Seq;
		
-- +--------+
-- | Name   |
-- +--------+
-- | Allan  |
-- | Jones  |
-- | Daniel |
-- +--------+
-- 3 rows in set (0.00 sec)

-- Retrieve the total number of seats available on all planes

SELECT 	SUM(NoOfSeats)
FROM 	`Plane` AS P,`PlaneSeats` AS PS
WHERE	P.Maker=PS.Maker AND P.Model=PS.Model;

-- +-------------------+
-- | SUM(PS.NoOfSeats) |
-- +-------------------+
-- |              2255 |
-- +-------------------+
-- 1 row in set (0.00 sec)

-- Retrieve total number of ‘F’ class seats booked and NOT cancelled after ‘2015-09-13’

SELECT 	COUNT(*)
FROM 	`Reservation`
WHERE	SeatClass='F' AND DateBooked>'2015-09-13' AND DateCancelled IS NULL;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+
-- 1 row in set (0.00 sec)
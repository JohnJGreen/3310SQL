/*
Class: 			CSE 3330
Semester: 		Fall 2016
Student Name: 	Green, John, jjg1958
Student ID: 	1001011958
Assignment: 	project #3 
*/

-- all flight thatdepart from a particular airport with the times of departure

SELECT * FROM Airport_Flights;

-- +--------------+----------------+-------+---------------+----------------+
-- | Airport_Code | City           | State | Flight_Number | Departure_Time |
-- +--------------+----------------+-------+---------------+----------------+
-- | DFW          | Dallas         | TX    | 300           | 14:30:00       |
-- | DFW          | Dallas         | TX    | 600           | 16:00:00       |
-- | FLL          | Ft. Lauderdale | FL    | 500           | 11:00:00       |
-- | IAH          | Houston        | TX    | 400           | 13:00:00       |
-- | LAX          | Los Angeles    | CA    | 400           | 08:30:00       |
-- | LGA          | New York       | NY    | 700           | 10:00:00       |
-- | ORD          | Chicago        | IL    | 100           | 11:30:00       |
-- | ORD          | Chicago        | IL    | 200           | 11:30:00       |
-- | ORD          | Chicago        | IL    | 500           | 15:00:00       |
-- | SFO          | San Francisco  | CA    | 200           | 07:30:00       |
-- +--------------+----------------+-------+---------------+----------------+

-- flight number and departure time for all flights out of dfw

SELECT  Flight_Number, Departure_Time 
FROM Airport_Flights 
WHERE Airport_Code='dfw';

-- +---------------+----------------+
-- | Flight_Number | Departure_Time |
-- +---------------+----------------+
-- | 300           | 14:30:00       |
-- | 600           | 16:00:00       |
-- +---------------+----------------+

-- flight number and departure time for all flights out of Los Angeles

SELECT  Flight_Number, Departure_Time 
FROM Airport_Flights 
WHERE City='Los Angeles';

-- +---------------+----------------+
-- | Flight_Number | Departure_Time |
-- +---------------+----------------+
-- | 400           | 08:30:00       |
-- +---------------+----------------+

--  the number of daily arrivals for any particular airport by plane type.

SELECT * FROM Airport_Plane_Arrivals;

-- +--------------+----------------+-------+-------------+-------------+--------------------------+
-- | Airport_Code | City           | State | Plane_Maker | Plane_Model | Number_Of_Daily_Arrivals |
-- +--------------+----------------+-------+-------------+-------------+--------------------------+
-- | BWI          | Baltimore      | MD    | Airbus      | 340         |                        1 |
-- | DFW          | Dallas         | TX    | Airbus      | 340         |                        2 |
-- | FLL          | Ft. Lauderdale | FL    | Boeing      | 747         |                        1 |
-- | IAH          | Houston        | TX    | Boeing      | 747         |                        1 |
-- | JFK          | New York       | NY    | Boeing      | 777         |                        1 |
-- | LAX          | Los Angeles    | CA    | Airbus      | 380         |                        1 |
-- | LGA          | New York       | NY    | Boeing      | 777         |                        1 |
-- | ORD          | Chicago        | IL    | Airbus      | 380         |                        1 |
-- | ORD          | Chicago        | IL    | Boeing      | 777         |                        1 |
-- +--------------+----------------+-------+-------------+-------------+--------------------------+

-- count and types of planes landing at dfw

SELECT Plane_Maker, Plane_Model, Number_Of_Daily_Arrivals
FROM Airport_Plane_Arrivals
WHERE Airport_Code='dfw';

-- +-------------+-------------+--------------------------+
-- | Plane_Maker | Plane_Model | Number_Of_Daily_Arrivals |
-- +-------------+-------------+--------------------------+
-- | Airbus      | 340         |                        2 |
-- +-------------+-------------+--------------------------+

-- airport and count of Boeing 777 arrivals

SELECT Airport_Code, Number_Of_Daily_Arrivals 
FROM Airport_Plane_Arrivals
WHERE Plane_Maker='Boeing' AND Plane_Model='777';

-- +--------------+--------------------------+
-- | Airport_Code | Number_Of_Daily_Arrivals |
-- +--------------+--------------------------+
-- | JFK          |                        1 |
-- | LGA          |                        1 |
-- | ORD          |                        1 |
-- +--------------+--------------------------+

-- the total number of seats available on any day between any two airports

SELECT * FROM Airport_To_Airport_Capacity;

-- +--------------+------------+-----------+----------------+
-- | From_Airport | To_airport | SeatClass | AvailableSeats |
-- +--------------+------------+-----------+----------------+
-- | DFW          | BWI        | E         |            220 |
-- | DFW          | BWI        | F         |             20 |
-- | DFW          | JFK        | E         |            200 |
-- | DFW          | JFK        | F         |             20 |
-- | FLL          | ORD        | E         |            300 |
-- | FLL          | ORD        | F         |             60 |
-- | IAH          | FLL        | E         |            300 |
-- | IAH          | FLL        | F         |             40 |
-- | LAX          | IAH        | E         |            300 |
-- | LAX          | IAH        | F         |             40 |
-- | LGA          | DFW        | E         |            220 |
-- | LGA          | DFW        | F         |             20 |
-- | ORD          | DFW        | E         |            220 |
-- | ORD          | DFW        | F         |             20 |
-- | ORD          | LAX        | E         |            300 |
-- | ORD          | LAX        | F         |             60 |
-- | ORD          | LGA        | E         |            200 |
-- | ORD          | LGA        | F         |             20 |
-- | SFO          | ORD        | E         |            200 |
-- | SFO          | ORD        | F         |             20 |
-- +--------------+------------+-----------+----------------+

-- the total number of economy seats available on any day between any two airports

SELECT From_Airport, To_airport, AvailableSeats 
FROM Airport_To_Airport_Capacity
WHERE SeatClass='e';

-- +--------------+------------+----------------+
-- | From_Airport | To_airport | AvailableSeats |
-- +--------------+------------+----------------+
-- | DFW          | BWI        |            220 |
-- | DFW          | JFK        |            200 |
-- | FLL          | ORD        |            300 |
-- | IAH          | FLL        |            300 |
-- | LAX          | IAH        |            300 |
-- | LGA          | DFW        |            220 |
-- | ORD          | DFW        |            220 |
-- | ORD          | LAX        |            300 |
-- | ORD          | LGA        |            200 |
-- | SFO          | ORD        |            200 |
-- +--------------+------------+----------------+

-- the total number of seats available from dfw to jfk

SELECT SeatClass, AvailableSeats 
FROM Airport_To_Airport_Capacity
WHERE From_Airport='dfw' AND To_airport='jfk';

-- +-----------+----------------+
-- | SeatClass | AvailableSeats |
-- +-----------+----------------+
-- | E         |            200 |
-- | F         |             20 |
-- +-----------+----------------+
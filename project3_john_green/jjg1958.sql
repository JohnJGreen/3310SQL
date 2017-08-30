/*
Class: 			CSE 3330
Semester: 		Fall 2016
Student Name: 	Green, John, jjg1958
Student ID: 	1001011958
Assignment: 	project #3 
*/

-- Airport_Flights (Airport_Code, City, State, Flight_Number, Departure_Time). List all flight that
-- depart from a particular airport with the times of departure.

CREATE OR REPLACE VIEW Airport_Flights AS
SELECT Code AS Airport_Code, City, State, FLNO AS Flight_Number, DeptTime AS Departure_Time
FROM Airport, FlightLeg
WHERE Airport.Code = FlightLeg.FromA
ORDER BY Code;

-- Airport_Plane_Arrivals(Airport_Code, City, State, Plane_Maker, Plane_Model,
-- Number_Of_Daily_Arrivals). This view counts the number of daily arrivals for any particular
-- airport by plane type.

CREATE OR REPLACE VIEW Airport_Plane_Arrivals AS
SELECT Code AS Airport_Code, City, State, Maker AS Plane_Maker, Model AS Plane_Model, 
	COUNT(FlightLeg.FLNO) AS Number_Of_Daily_Arrivals
FROM Airport, Plane, FlightLeg
WHERE Airport.Code = FlightLeg.ToA AND FlightLeg.Plane = Plane.ID
GROUP BY Code, Maker, Model;

-- Airport_To_Airport_Capacity (From_Airport, To_airport, SeatClass, AvailableSeats). This view
-- aggregates the total number of seats available on any day between any two airports.

CREATE OR REPLACE VIEW Airport_To_Airport_Capacity AS
SELECT FromA AS From_Airport, ToA AS To_airport, SeatType AS SeatClass, sum(NoOfSeats) AS AvailableSeats
FROM FlightLeg, Plane, PlaneSeats
WHERE  FlightLeg.Plane = Plane.ID AND Plane.Model = PlaneSeats.Model AND Plane.Maker = PlaneSeats.Maker
GROUP BY FromA, ToA, SeatType;
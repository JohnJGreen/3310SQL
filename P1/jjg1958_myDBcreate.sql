/*
Class: 			CSE 3330
Semester: 		Fall 2016
Student Name: 	Green, John, jjg1958
Student ID: 	1001011958
Assignment: 	project #1 
*/

CREATE TABLE airport(
	code int unsigned NOT NULL,
	city varchar(15),
	state varchar(15),
	PRIMARY KEY (code)
) ENGINE=InnoDB;

CREATE TABLE flight(
	FLNO int unsigned NOT NULL,
	meal char(1),
	smokeing char(1),
	PRIMARY KEY (FLNO)
) ENGINE=InnoDB;

CREATE TABLE planeType(
	maker varchar(15) NOT NULL,
	model varchar(15) NOT NULL,
	flightSpeed int,
	groundSpeed int,
	PRIMARY KEY (maker, model)
) ENGINE=InnoDB;

CREATE TABLE pilot(
	ID int NOT NULL,
	name varchar(32),
	dateHired datetime,
	PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE passenger(
	ID int NOT NULL,
	name varchar(32),
	phone varchar(10),
	PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE planeSeats(
	maker varchar(15) NOT NULL,
	model varchar(15) NOT NULL,
	seatType varchar(15) NOT NULL,
	noOfSeats int,
	FOREIGN KEY (maker, model) 
		REFERENCES planeType(maker, model),
	PRIMARY KEY (maker, model, seatType)
) ENGINE=InnoDB;

CREATE TABLE plane(
	ID int NOT NULL,
	maker varchar(15) NOT NULL,
	model varchar(15) NOT NULL,
	lastMaint datetime,
	lastMaintA int NOT NULL,
	FOREIGN KEY (maker, model) 
		REFERENCES planeType(maker, model),
	FOREIGN KEY (lastMaintA) 
		REFERENCES airport(code),
	PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE flightLeg(
	FLNO int NOT NULL,
	seq int NOT NULL,
	fromA int NOT NULL,
	toA int NOT NULL,
	deptTime datetime,
	arrTime datetime,
	plane int NOT NULL,
	FOREIGN KEY (FLNO) 
		REFERENCES flight(FLNO),
	FOREIGN KEY (fromA) 
		REFERENCES airport(code),
	FOREIGN KEY (toA) 
		REFERENCES airport(code),
	FOREIGN KEY (plane) 
		REFERENCES plane(ID),
	PRIMARY KEY (FLNO, seq)
) ENGINE=InnoDB;

CREATE TABLE flightInstance(
	FLNO int NOT NULL,
	fDate datetime NOT NULL,
	FOREIGN KEY (FLNO) 
		REFERENCES flight(FLNO),
	PRIMARY KEY (FLNO, fDate)
) ENGINE=InnoDB;

CREATE TABLE flightLegInstance(
	seq int NOT NULL,
	FLNO int NOT NULL,
	fDate datetime NOT NULL,
	actDept datetime,
	actArr datetime,
	pilot int NOT NULL,
	FOREIGN KEY (FLNO, seq) 
		REFERENCES flightLeg(FLNO, seq),
	FOREIGN KEY (FLNO, fDate) 
		REFERENCES flightInstance(FLNO, fDate),
	FOREIGN KEY (pilot) 
		REFERENCES pilot(ID),
	PRIMARY KEY (seq, FLNO, fDate)
) ENGINE=InnoDB;

CREATE TABLE reservation(
	passID int NOT NULL,
	FLNO int NOT NULL,
	fDate datetime,
	fromA int NOT NULL,
	toA int NOT NULL,
	seatClass char(1),
	dateBooked datetime,
	dateCanceled datetime,
	FOREIGN KEY (FLNO, fDate) 
		REFERENCES flightInstance(FLNO, fDate),
	FOREIGN KEY (passID) 
		REFERENCES passenger(ID),
	FOREIGN KEY (fromA, toA) 
		REFERENCES airport(code),
	PRIMARY KEY (passID, FLNO, fDate)
) ENGINE=InnoDB;




























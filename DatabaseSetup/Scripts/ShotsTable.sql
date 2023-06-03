create table Shots (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots.csv' INTO TABLE `Shots`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

---------------------------------------------------------------------------------

create table Shots_2016_17 (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots_2016-17.csv' INTO TABLE `Shots_2016_17`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-------------------------------------------------------------------------------------------

create table Shots_2017_18 (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots_2017-18.csv' INTO TABLE `Shots_2017_18`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Shots_2018_19 (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots_2018-19.csv' INTO TABLE `Shots_2018_19`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Shots_2019_20 (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots_2019-20.csv' INTO TABLE `Shots_2019_20`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Shots_2020_21 (ShotID int primary key,
			 GameID int,
			 ShotType varchar(100),
             Shooter varchar(100),
			 Assister varchar(100),
			 Blocker varchar(50),
             ShotOutcome varchar(20),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Shots\\Shots_2020-21.csv' INTO TABLE `Shots_2020_21`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

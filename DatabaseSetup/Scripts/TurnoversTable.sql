create table Turnovers (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers.csv' INTO TABLE `Turnovers`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

---------------------------------------------------------------------------------

create table Turnovers_2016_17 (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers_2016-17.csv' INTO TABLE `Turnovers_2016_17`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-------------------------------------------------------------------------------------------

create table Turnovers_2017_18 (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers_2017-18.csv' INTO TABLE `Turnovers_2017_18`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Turnovers_2018_19 (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers_2018-19.csv' INTO TABLE `Turnovers_2018_19`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Turnovers_2019_20 (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers_2019-20.csv' INTO TABLE `Turnovers_2019_20`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Turnovers_2020_21 (TurnoverID int primary key,
			 GameID int,
			 TurnoverType varchar(100),
             TurnoverCause varchar(100),
             TurnoverPlayer varchar(100),
             TurnoverCauser varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Turnover\\Turnovers_2020-21.csv' INTO TABLE `Turnovers_2020_21`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

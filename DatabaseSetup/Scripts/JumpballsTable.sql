create table Jumpballs (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls.csv' INTO TABLE `Jumpballs`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

---------------------------------------------------------------------------------

create table Jumpballs_2016_17 (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls_2016-17.csv' INTO TABLE `Jumpballs_2016_17`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-------------------------------------------------------------------------------------------

create table Jumpballs_2017_18 (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls_2017-18.csv' INTO TABLE `Jumpballs_2017_18`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Jumpballs_2018_19 (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
			 foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls_2018-19.csv' INTO TABLE `Jumpballs_2018_19`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Jumpballs_2019_20 (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls_2019-20.csv' INTO TABLE `Jumpballs_2019_20`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Jumpballs_2020_21 (JumpBallID int primary key,
			 GameID int,
			 JumpballAwayPlayer varchar(100),
             JumpballHomePlayer varchar(100),
             JumpballPoss varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\JumpBalls\\JumpBalls_2020-21.csv' INTO TABLE `Jumpballs_2020_21`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

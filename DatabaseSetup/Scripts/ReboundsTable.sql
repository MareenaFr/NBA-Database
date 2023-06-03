create table Rebounds (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds.csv' INTO TABLE `Rebounds`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

---------------------------------------------------------------------------------

create table Rebounds_2016_17 (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds_2016-17.csv' INTO TABLE `Rebounds_2016_17`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-------------------------------------------------------------------------------------------

create table Rebounds_2017_18 (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds_2017-18.csv' INTO TABLE `Rebounds_2017_18`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Rebounds_2018_19 (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds_2018-19.csv' INTO TABLE `Rebounds_2018_19`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Rebounds_2019_20 (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds_2019-20.csv' INTO TABLE `Rebounds_2019_20`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Rebounds_2020_21 (ReboundID int primary key,
			 GameID int,
			 ReboundType varchar(100),
             Rebounder varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Rebounds\\Rebounds_2020-21.csv' INTO TABLE `Rebounds_2020_21`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

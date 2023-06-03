create table Fouls (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls.csv' INTO TABLE `Fouls`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

---------------------------------------------------------------------------------

create table Fouls_2016_17 (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls_2016-17.csv' INTO TABLE `Fouls_2016_17`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-------------------------------------------------------------------------------------------

create table Fouls_2017_18 (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls_2017-18.csv' INTO TABLE `Fouls_2017_18`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Fouls_2018_19 (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls_2018-19.csv' INTO TABLE `Fouls_2018_19`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Fouls_2019_20 (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls_2019-20.csv' INTO TABLE `Fouls_2019_20`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

create table Fouls_2020_21 (FoulID int primary key,
			 GameID int,
			 FoulType varchar(100),
             Fouler varchar(100),
             Fouled varchar(100),
             foreign key(GameID) references Game(GameID)
             );
             
LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Fouls\\Fouls_2020-21.csv' INTO TABLE `Fouls_2020_21`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

------------------------------------------------------------------------------------------------------

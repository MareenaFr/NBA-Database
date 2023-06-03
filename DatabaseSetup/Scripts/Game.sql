create table Game (GameID int primary key,
			 GameType varchar(15),
             HomeTeam varchar(50),
			 AwayTeam varchar(50),
             Date varchar(20)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Game.csv' INTO TABLE `Game`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
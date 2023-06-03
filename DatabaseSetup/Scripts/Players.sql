create table Players (PlayerID int primary key,
			 FName varchar(100),
             LName varchar(100),
			 DisplayName varchar(100),
			 Country varchar(50),
             Position varchar(20),
             TeamID int,
             foreign key(TeamID) references Teams(TeamID)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV_Files_and_Scripts\\Players\\Players.csv' INTO TABLE `Players`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
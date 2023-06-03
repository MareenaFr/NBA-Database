create table Coaches (CoachID int,
			 CoachName varchar(100),
             SeasonStartYear int,
			 CoachType varchar(50)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Coaches.csv' INTO TABLE `Coaches`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
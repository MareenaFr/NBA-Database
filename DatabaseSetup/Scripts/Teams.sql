create table Teams (TeamID int primary key,
			 TeamName varchar(100),
             Abbreviation varchar(3),
			 City varchar(50),
			 State varchar(50)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV_Files_and_Scripts\\Teams\\Teams.csv' INTO TABLE `Teams`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
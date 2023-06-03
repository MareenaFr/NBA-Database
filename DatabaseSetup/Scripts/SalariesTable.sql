create table Salaries (SalaryID int,
			 PlayerName varchar(100),
             SeasonStartYear int,
             Salary varchar(100),
             InflationAdjSalary varchar(100)
             );

LOAD DATA LOCAL INFILE
'D:\\Learn\\Winter 2023\\ECE 656\\Project\\CSV Files\\Salaries.csv' INTO TABLE `Salaries`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
CREATE TABLE People(
  PID int not null,
  First_Name text not null,
  Last_Name text not null,
  dob DATE not null,
  Hair_color text not null,
  Eye_color text not null,
  Birthplace text not null,
  primary key(PID)
);
CREATE TABLE Players(
  PID int not null references People(PID),
  Handedness text not null,
  Contract_Salary int,
  Contract_Type text,
  Contract_Length text,
  Jersey_Number int not null,
  Favorite_Stick text not null,
  Season_Games_Played int,
  Season_Goals_Scored int,
  Season_Assists int,
  Season_Penalty_Minutes int,
  Season_Powerplay_Points int,
  Career_Games_Played int,
  Career_Goals_Scored int,
  Career_Assists int,
  Career_Penalty_Minutes int,
  Career_Powerplay_Points int,
  primary key(PID)
);
CREATE TABLE Referees(
 PID int not null references People(PID),
  Total_Games_Refereed int not null,
  Years_Experience int not null,
  Salary int not null,
  primary key(PID)
);
CREATE TABLE Positions_onIce(
  PositionID int not null,
  Name text not null,
  Number_Per_Team int not null,
  primary key(PositionID)
);
CREATE TABLE Teams(
  TID int not null,
  Name text not null,
  Primary_Color text not null,
  Secondary_Color text not null,
  Mascot text not null,
  Arena text not null,
  Location text not null,
  primary key(TID)
);
CREATE TABLE Roster(
  PID int not null references People(PID),
  TID int not null references Teams(TID),
  PositionID int not null references Positions_onIce(PositionID),
  Start_Date DATE not null,
  End_Date DATE,
  primary key(PID, TID, PositionID)
);
CREATE TABLE Games(
  GID int not null, 
  PID int not null references People(PID),
  Date_Played DATE not null,
  Location_Played text not null,
  primary key(GID)
);
CREATE TABLE Player_Stats(
  PID int not null references
People(PID),
  GID int not null references
Games(GID),
  Goals_Scored int not null, 
  Assists_Earned int not null,
  Powerplay_Pts int not null,
  Penalty_Minutes int not null,
  Did_Play boolean not null,
  primary key(PID, GID)
);
CREATE TABLE Game_Stats(
  GID int not null references Games(GID),
  TID int not null references Teams(TID),
  Goals_For int not null,
  Goals_Against int not null,
  Regulation_Overtime_Win boolean not null,
  Overtime_Loss boolean not null,
  primary key(GID, TID)
);
CREATE TABLE Staff(
  PID int not null references People(PID),
  Job_Type text not null,
  Salary int not null,
  CollegeDegree text,
  GradutationDate DATE,
  primary key(PID)
);
CREATE TABLE Team_Staff(
  PID int not null references People(PID),
  TID int not null references Teams(TID),
  Primary key(PID, TID)
);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ('Connor', 'McDavid', '1997-01-13', 'Richmond Hill Ontario Canada', 185, 87);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ('Leon', 'Draisaitl', '1995-10-27', 'Cologne Germany', 188, 98);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Ryan", "Nugent-Hopkins", '1993-04-12', "Burnaby BC Canada", 183, 87);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Mark", "Letestu", '1985-02-04', "Elk Point AB Canada", 178, 88);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Yohann", "Auvitu", '1989-07-27', "Ivry-sur-Seine France", 180, 85);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Matt", "Benning", '1994-05-25', "Edmonton AB Canada", 185, 93);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Laurent", "Brossoit", '1993-03-23', "Port Alberni BC Canada", 191, 93);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Drake", "Caggiula", '1994-06-20', "Pickering Ontario Canada", 178, 84);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Michael", "Cammalleri", '1982-06-08', "Toronto Ontario Canada", 175, 84);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Brandon", "Davidson", '1991-08-21', "Taber AB Canada", 188, 94);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Eric", "Gryba", '1988-04-14', "Saskatoon SK Canada", 193, 101);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Zack", "Kassian", '1991-01-24', "Windsor Ontario Canada", 191, 95);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Jujhar", "Khaira", '1994-08-13', "Surrey BC Canada", 193, 97);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Oscar", "Klefbom", '1993-07-20', "Karlstad Sweden", 191, 98);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Adam", "Larsson", '1992-11-12', "Skellefteå Sweden", 191, 95);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Milan", "Lucic", '1988-06-7', "Vancouver BC Canada", 191, 107);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Patrick", "Maroon", '1988-04-23', "St. Louis MO USA", 191, 102);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Darnell", "Nurse", '1995-02-04', "Hamilton Ontario Canada", 193, 100);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Jesse", "Puljujarvi", '1998-05-07', "Alvkarleby Sweden", 193, 96);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Kris", "Russell", '1987-05-2-02', "Caroline AB Canada", 178, 78);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Anton", "Slepyshev", '1994-05-13', "Penza Russia", 188, 100);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Ryan", "Strome", '1993-07-11', "Mississauga Ontario Canada", 185, 88);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Cam", "Talbot", '1987-07-05', "Caledonia Ontario Canada", 193, 91);
Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg)
VALUES ("Nathan", "Walker", '1994-02-07', "Cardiff Great Britain", 175, 84);


Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Sean’, ‘Monahan’, ‘1994-10-12’, ‘Brampton Ontario Canada’, 191, 88);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Mikael’, ‘Baklund’, ‘1989-03-17’, ‘Vasteras Sweeden’, 185, 90);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Matt’, ‘Bartkowski’, ‘1988-06-04’, ‘Pittsburgh PA USA’, 185, 89);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Sam’, ‘Bennett’, ‘1996-06-20’, ‘Holland Landing Ontario Canada’, 185, 91);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘TJ’, ‘Brody’, ‘1990-06-07’, ‘Chatham Ontario Canada’, 185, 83);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Troy’, ‘Brouwer’, ‘1985-08-17’, ‘Vancouver BC Canada’, 190, 98);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Michael’, ‘Ferland’, ‘1992-04-20’, ‘Swan River MB Canada’, 188, 94);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Michael’, ‘Frolik’, ‘1988-02-17’, ‘Kladno Czech’, 185, 88);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Johnny’, ‘Gaudreu’, ‘1993-08-13’, ‘Salem NJ USA’, 175, 71);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Mark’, ‘Giordano’, ‘1983-10-03’, ‘Toronto Ontario Canada’, 183, 90);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Dougie’, ‘Hamilton’, ‘1993-06-17’, ‘Toronto Ontario Canada’, 198, 95);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Freddie’, ‘Hamilton’, ‘1992-01-01’, ‘Toronto Ontario Canada’, 185, 88);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Travis’, ‘Hamonic’, ‘1990-08-16’, ‘St. Malo MB Canada’, 188, 93);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Garnet’, ‘Hathaway’, ‘1991-11-23’, ‘Kennebunkport ME USA’, 188, 94);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Jaromir’, J’agr’, ‘1971-02-15’, ‘Kladno Czech’, 191, 104);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Mark’, ‘Jankowski’, ‘1994-09-13’, ‘Toronto Ontario Canada’, 193, 92);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Brett’, ‘Kulak’, ‘1994-01-06’, ‘Edmondton AB Canada’, 188, 85);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Curtis’, ‘Lazar’, ‘1995-02-02’, ‘Salmon Arm BC Canada’, 183, 95);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘David’, ‘Rittich’, ‘1992-08-19’, ‘Jihlava Czech’, 188, 92);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Mike’, ‘Smith’, ‘1982-03-22’, ‘Kingston Ontario Canada’, 193, 99);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Matt’, ‘Stajan’, ‘1983-12-19’, ‘Mississauga Ontario Canada’, 185, 88);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Michael’, ‘Stone’, ‘1990-06-07’, ‘Winnipeg MB Canada’, 190, 95);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Matthew’, ‘Tkachuk’, ‘1997-12-11’, ‘Scottsdale AZ USA’, 188, 92);

Insert Into People (First_Name, Last_Name, dob, Birthplace, Height_cm, Weight_kg) 
VALUES (‘Kris’, ‘Versteeg’, ‘1986-05-13’, ‘Lethbridge AB Canada’, 180, 80);


--Views--
CREATE VIEW Current_Rosters as
  SELECT First_Name as First_Name,Last_Name as Last_Name,Positions_onIce.Name as Position, Teams.Name as Team,
  FROM Players
    INNER JOIN People ON Players.PID=People.PID
    INNER JOIN Rosters ON Players.PID=Roster.PID
    INNER JOIN Positions_onIce ON Roster.PositionID=Positions_onIce.PositionID
    INNER JOIN Teams ON Roster.TID=Teams.TID
  WHERE Roster.End_Date IS NULL
  ORDER BY Teams ASC, People ASC; 
  
  
CREATE VIEW Maurice_Richard_Trophy as
  SELECT First_Name as First_Name,Last_Name as Last_Name, Season_Goals_Scored as Total_Goals,
         Positions_onIce.Name as Position, Teams.Name as Team
  FROM Players
    INNER JOIN People ON Players.PID=People.PID
    INNER JOIN Roster ON Players.PID=Roster.PID
    INNER JOIN Positions_onIce ON Roster.PositionID=Positions_onIce.PositionID
    INNER JOIN Teams ON Roster.TID=Teams.TID
WHERE Players.Season_Goals_Scored = (SELECT Players.Season_Goals_Scored
                                     FROM Players
                                     WHERE Season_Goals_Scored IS NOT NULL
                                     ORDER BY Season_Goals_Scored DESC
                                     LIMIT 1)
ORDER BY Season_Goals_Scored DESC, teams ASC;

--Stored Procedures--

CREATE OR REPLACE FUNCTION match_to_ref() RETURNS trigger AS $m2r$
  BEGIN
    UPDATE Referees SET Total_Games_Refereed=Total_Games_Refereed+1 WHERE PID=NEW.PID;
  RETURN NEW;
  END;
$m2r$ LANGUAGE plpgsql; 

CREATE OR REPLACE FUNCTION update_player_stats() RETURNS trigger AS $update_player_stats$
  BEGIN
    IF (select Career_Goals_Scored from Players where PID=NEW.PID) IS NULL THEN
      IF NEW.Did_Play THEN
        UPDATE Players
        SET Career_Goals_Scored=0, Career_Penalty_Minutes=0,
            Season_Goals_Scored=0, Season_Assists=0, Season_Penalty_Minutes=0, Season_Powerplay_Points=0,
            Career_Games_Played=0, Career_Assists=0, Career_Powerplay_Points=0,
        WHERE Players.PID=NEW.PID;
      END IF;
    END IF;
    UPDATE Players
    SET Season_Games_Played=Season_Games_Played+1, Season_Goals_Scored=Season_Goals_Scored+NEW.Goals_Scored, 
	    Season_Assists=Season_Assists+NEW.Assists_Earned, Season_Penalty_Minutes=Season_Penalty_Minutes+NEW.Penalty_Minutes, 
		Season_Powerplay_Points=Season_Powerplay_Points+NEW.Powerplay.Points, Career_Games_Played=Career_Games_Played+1, 
		Career_Goals_Scored=Career_Goals_Scored+NEW.Goals_Scored, Career_Assists=Career_Assists+NEW.Assists_Earned, 
		Career_Penalty_Minutes=Career_Penalty_Minutes+NEW.Penalty_Minutes, Career_Powerplay_Points=Career_Powerplay_Points+NEW.Powerplay_Points
    WHERE Players.PID=NEW.PID;
    RETURN NEW;
  END;
$update_player_stats$ LANGUAGE plpgsql;

--Triggers--

CREATE TRIGGER update_player_stats BEFORE INSERT ON Player_Stats
  FOR EACH ROW EXECUTE PROCEDURE update_player_stats();

CREATE TRIGGER m2r BEFORE INSERT ON Games
  FOR EACH ROW EXECUTE PROCEDURE match_to_ref();
  

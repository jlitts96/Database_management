DROP TABLE IF EXISTS People;
DROP TABLE IF EXISTS Actors;
DROP TABLE IF EXISTS Directors;
DROP TABLE IF EXISTS Acts_In;
DROP TABLE IF EXISTS Movies;


-- People --
CREATE TABLE People (
  PID                char(4) not null,
  name               text,
  spouse_name        text,
  address                             ,
 primary key(PID)
);


-- Actors --
CREATE TABLE Actors (
  PID                         char(4) not null,
  birthday                    text,
  hair_color                  text,
  eye_color                   text,
  height                      int,
  weight                      int,
  fav_color                   text,  
  ActorsGuild_aniversary      text,
 primary key(pid)
);        


-- Directors --
CREATE TABLE Directors (
  pid                            char(4) not null,
  School_attended                text,
  directorsGuild_Anniversary     text,
  fav_lensMaker                  text,
 primary key(pid)
);

-- Movies -- 
CREATE TABLE Movies (
  MPAA_number                       int not null,
  Release_year                      text,
  Dom_Box_Sales                     int,
  Int_Box_Sales                     int,
  Disc_Sales                        int,
 primary key(MPAA_number)
);


-- Acts_In -- 
CREATE TABLE Acts_In (
  PID                char(4)  not null,
  MPAA_Number        int not null,
 primary key(PID, MPAA_Number)
);

--Directs--
CREATE TABLE Directs (
  PID                char(4)  not null,
  MPAA_Number        int not null,
 primary key(PID, MPAA_Number)
);


-- Query Statement -- 
Select Name
From People
where PID = (
  Select PID
  from Directs
  Where MPAA_Number = (
    Select MPAA_Number
    from Acts_In
    where PID = (
      Select PID
      from People
      where Name = "Roger Moore")
    )
  )
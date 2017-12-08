/*
Created: 2017-10-27
Modified: 2017-10-28
Model: PostgreSQL 9.3
Database: PostgreSQL 9.3
By: Adwan Salahuddin Syed
*/

-- Create tables section -------------------------------------------------

-- Table Movie

CREATE TABLE "Movie"(
 "movieID" Integer NOT NULL,
 "movieTitle" Character varying NOT NULL,
 "releaseDate" Date NOT NULL,
 "rating" Integer NOT NULL,
 "budget" Money NOT NULL,
 "gross" Money,
 "directorID" Integer,
 "producerID" Integer,
 "writerID" Integer
)
;

-- Create indexes for table Movie

CREATE INDEX "IX_Relationship24" ON "Movie" ("directorID")
;

CREATE INDEX "IX_Relationship25" ON "Movie" ("producerID")
;

CREATE INDEX "IX_Relationship26" ON "Movie" ("writerID")
;

-- Add keys for table Movie

ALTER TABLE "Movie" ADD CONSTRAINT "Key1" PRIMARY KEY ("movieID")
;

-- Table Director

CREATE TABLE "Director"(
 "directorID" Integer NOT NULL,
 "directorRole" Character varying NOT NULL,
 "salary" Money
)
;

-- Add keys for table Director

ALTER TABLE "Director" ADD CONSTRAINT "Key2" PRIMARY KEY ("directorID")
;

-- Table Actor

CREATE TABLE "Actor"(
 "actorID" Integer NOT NULL,
 "actorRole" Character varying NOT NULL,
 "agency" Character varying NOT NULL,
 "salary" Money
)
;

-- Add keys for table Actor

ALTER TABLE "Actor" ADD CONSTRAINT "Key3" PRIMARY KEY ("actorID")
;

-- Table Genre

CREATE TABLE "Genre"(
 "genreID" Integer NOT NULL,
 "type" Character varying NOT NULL,
 "description" Character varying
)
;

-- Add keys for table Genre

ALTER TABLE "Genre" ADD CONSTRAINT "Key4" PRIMARY KEY ("genreID")
;

-- Table BirthOrigin

CREATE TABLE "BirthOrigin"(
 "birthOriginID" Integer NOT NULL,
 "city" Character varying NOT NULL,
 "state" Character varying NOT NULL,
 "country" Character varying NOT NULL
)
;

-- Add keys for table BirthOrigin

ALTER TABLE "BirthOrigin" ADD CONSTRAINT "Key5" PRIMARY KEY ("birthOriginID")
;

-- Table Cinema

CREATE TABLE "Cinema"(
 "cinemaID" Integer NOT NULL,
 "cinemaName" Character varying NOT NULL,
 "phoneNumber" Character varying NOT NULL,
 "streetName" Character varying NOT NULL,
 "streetNumber" Character varying NOT NULL,
 "city" Character varying NOT NULL,
 "country" Character varying NOT NULL,
 "postalCode" Character varying NOT NULL
)
;

-- Add keys for table Cinema

ALTER TABLE "Cinema" ADD CONSTRAINT "Key8" PRIMARY KEY ("cinemaID")
;

-- Table Awards

CREATE TABLE "Awards"(
 "awardID" Integer NOT NULL,
 "awardName" Character varying NOT NULL,
 "awardedBy" Character varying NOT NULL,
 "awardDescription" Character varying
)
;

-- Add keys for table Awards

ALTER TABLE "Awards" ADD CONSTRAINT "Key9" PRIMARY KEY ("awardID")
;

-- Table Quotes

CREATE TABLE "Quotes"(
 "quoteID" Integer NOT NULL,
 "quote" Character varying NOT NULL,
 "genreID" Integer,
 "personID" Integer,
 "moviedID" Integer NOT NULL
)
;

-- Create indexes for table Quotes

CREATE INDEX "IX_Relationship33" ON "Quotes" ("genreID")
;

CREATE INDEX "IX_Relationship34" ON "Quotes" ("personID")
;

-- Add keys for table Quotes

ALTER TABLE "Quotes" ADD CONSTRAINT "Key10" PRIMARY KEY ("quoteID","moviedID")
;

-- Table CastMember

CREATE TABLE "CastMember"(
 "actorID" Integer NOT NULL,
 "moviedID" Integer NOT NULL
)
;

-- Add keys for table CastMember

ALTER TABLE "CastMember" ADD CONSTRAINT "Key11" PRIMARY KEY ("actorID","moviedID")
;

-- Table MovieDetails

CREATE TABLE "MovieDetails"(
 "genreID" Integer NOT NULL,
 "moviedID" Integer NOT NULL
)
;

-- Add keys for table MovieDetails

ALTER TABLE "MovieDetails" ADD CONSTRAINT "Key13" PRIMARY KEY ("genreID","moviedID")
;

-- Table Showtimes

CREATE TABLE "Showtimes"(
 "cinemaID" Integer NOT NULL,
 "room" Integer NOT NULL,
 "time" Time NOT NULL,
 "ticketPrice" Money NOT NULL,
 "showType" Character varying NOT NULL,
 "moviedID" Integer NOT NULL
)
;

-- Add keys for table Showtimes

ALTER TABLE "Showtimes" ADD CONSTRAINT "Key16" PRIMARY KEY ("cinemaID","room","time","moviedID")
;

-- Table Writer

CREATE TABLE "Writer"(
 "writerID" Integer NOT NULL,
 "publisher" Character varying NOT NULL,
 "salary" Money
)
;

-- Add keys for table Writer

ALTER TABLE "Writer" ADD CONSTRAINT "Key17" PRIMARY KEY ("writerID")
;

-- Table Producer

CREATE TABLE "Producer"(
 "producerID" Integer NOT NULL,
 "studioName" Character varying NOT NULL,
 "producerType" Character varying NOT NULL,
 "salary" Money
)
;

-- Add keys for table Producer

ALTER TABLE "Producer" ADD CONSTRAINT "Key18" PRIMARY KEY ("producerID")
;

-- Table Person

CREATE TABLE "Person"(
 "personID" Integer NOT NULL,
 "sinNumber" Integer NOT NULL,
 "firstName" Character varying NOT NULL,
 "surName" Character varying NOT NULL,
 "gender" Boolean NOT NULL,
 "eyeColor" Character varying,
 "middleName" Character varying,
 "actorID" Integer,
 "directorID" Integer,
 "producerID" Integer,
 "writerID" Integer
)
;

-- Create indexes for table Person

CREATE INDEX "IX_Relationship27" ON "Person" ("actorID")
;

CREATE INDEX "IX_Relationship29" ON "Person" ("directorID")
;

CREATE INDEX "IX_Relationship30" ON "Person" ("producerID")
;

CREATE INDEX "IX_Relationship31" ON "Person" ("writerID")
;

-- Add keys for table Person

ALTER TABLE "Person" ADD CONSTRAINT "Key19" PRIMARY KEY ("personID")
;

-- Table BirthRecord

CREATE TABLE "BirthRecord"(
 "personID" Integer NOT NULL,
 "birthOriginID" Integer NOT NULL,
 "birthDate" Date NOT NULL
)
;

-- Add keys for table BirthRecord

ALTER TABLE "BirthRecord" ADD CONSTRAINT "Key20" PRIMARY KEY ("personID","birthOriginID")
;

-- Table Rewards

CREATE TABLE "Rewards"(
 "awardID" Integer NOT NULL,
 "moviedID" Integer NOT NULL
)
;

-- Add keys for table Rewards

ALTER TABLE "Rewards" ADD CONSTRAINT "Key21" PRIMARY KEY ("awardID","moviedID")
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "CastMember" ADD CONSTRAINT "Plays In" FOREIGN KEY ("actorID") REFERENCES "Actor" ("actorID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "CastMember" ADD CONSTRAINT "Casts" FOREIGN KEY ("moviedID") REFERENCES "Movie" ("movieID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "MovieDetails" ADD CONSTRAINT "Is Of" FOREIGN KEY ("genreID") REFERENCES "Genre" ("genreID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "MovieDetails" ADD CONSTRAINT "Described By" FOREIGN KEY ("moviedID") REFERENCES "Movie" ("movieID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Showtimes" ADD CONSTRAINT "Open During" FOREIGN KEY ("cinemaID") REFERENCES "Cinema" ("cinemaID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Showtimes" ADD CONSTRAINT "Shown" FOREIGN KEY ("moviedID") REFERENCES "Movie" ("movieID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "BirthRecord" ADD CONSTRAINT "Born" FOREIGN KEY ("personID") REFERENCES "Person" ("personID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "BirthRecord" ADD CONSTRAINT "Located" FOREIGN KEY ("birthOriginID") REFERENCES "BirthOrigin" ("birthOriginID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie" ADD CONSTRAINT "Directs" FOREIGN KEY ("directorID") REFERENCES "Director" ("directorID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie" ADD CONSTRAINT "Produces" FOREIGN KEY ("producerID") REFERENCES "Producer" ("producerID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie" ADD CONSTRAINT "Writes" FOREIGN KEY ("writerID") REFERENCES "Writer" ("writerID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Person" ADD CONSTRAINT "Is A1" FOREIGN KEY ("actorID") REFERENCES "Actor" ("actorID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Person" ADD CONSTRAINT "Is A2" FOREIGN KEY ("directorID") REFERENCES "Director" ("directorID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Person" ADD CONSTRAINT "Is A3" FOREIGN KEY ("producerID") REFERENCES "Producer" ("producerID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Person" ADD CONSTRAINT "Is A4" FOREIGN KEY ("writerID") REFERENCES "Writer" ("writerID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Quotes" ADD CONSTRAINT "Has" FOREIGN KEY ("moviedID") REFERENCES "Movie" ("movieID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Quotes" ADD CONSTRAINT "Categorizes" FOREIGN KEY ("genreID") REFERENCES "Genre" ("genreID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Quotes" ADD CONSTRAINT "Says" FOREIGN KEY ("personID") REFERENCES "Person" ("personID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Rewards" ADD CONSTRAINT "Given To" FOREIGN KEY ("awardID") REFERENCES "Awards" ("awardID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Rewards" ADD CONSTRAINT "Awarded" FOREIGN KEY ("moviedID") REFERENCES "Movie" ("movieID") ON DELETE NO ACTION ON UPDATE NO ACTION
;





/*
Created: 2017-10-27
Modified: 2017-10-28
Model: PostgreSQL 9.3
Database: PostgreSQL 9.3
By: Adwan Salahuddin Syed
*/


-- Script for inserting all the tuples and respective attributes -------------------------------------------------

-- Table Producer

INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (1, 'fox', 'lights', '$10,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (2, 'disney', 'stage', '$20,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (3, 'disney', 'film', '$300,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (4, 'motion pictures', 'makeup', '$20,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (5, 'disney', 'stage', '$20,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (6, 'fox', 'film', '$300,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (7, 'disney', 'graphics', '$400,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (8, 'disney', 'television', '$200,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (9, 'fox', 'stage', '$20,000.00');
INSERT INTO "Producer" ("producerID", "studioName", "producerType", salary) VALUES (10, 'fox', 'stage', '$20,000.00');

-- Table Director

INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (1, 'scene1', '$10,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (2, 'scene2', '$20,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (3, 'scene3', '$30,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (4, 'scene4', '$40,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (5, 'scene5', '$60,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (6, 'scene6', '$70,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (7, 'scene7', '$80,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (8, 'scene8', '$90,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (9, 'scene9', '$20,000.00');
INSERT INTO "Director" ("directorID", "directorRole", salary) VALUES (10, 'scene10', '$30,000.00');

-- Table Actor

INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (1, 'avatar', 'disney', '$20,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (2, 'indiana jones', 'disney', '$30,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (3, 'voldemort', 'disney', '$40,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (4, 'pretty woman', 'disney', '$50,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (5, 'clown', 'disney', '$40,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (6, 'prince', 'disney', '$40,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (7, 'rabbit', 'disney', '$50,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (8, 'princess', 'motion pictures', '$50,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (9, 'hoodlum', 'fox', '$40,000.00');
INSERT INTO "Actor" ("actorID", "actorRole", agency, salary) VALUES (10, 'butler', 'disney', '$30,000.00');

-- Table Writer

INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (1, 'penguin', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (2, 'hachette livre', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (3, 'harpercollins', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (4, 'pearson education', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (5, 'penguin', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (6, 'simon schuster', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (7, 'john wiley', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (8, 'pan macmillan', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (9, 'oxfort press', '$20,000.00');
INSERT INTO "Writer" ("writerID", publisher, salary) VALUES (10, 'oxford press', '$20,000.00');

-- Table Person

INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (2, 123456789, 'Steven', 'Spielberg', false, 'black', NULL, 2, 2, 2, 2);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (3, 123456789, 'James', 'Cameron', false, 'black', NULL, 3, 3, 3, 3);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (4, 123456789, 'Quentin', 'Tarantino', false, 'black', NULL, 4, 4, 4, 4);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (5, 123456789, 'Chris', 'Nolan', false, 'black', NULL, 5, 5, 5, 5);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (6, 123456789, 'David', 'Fincher', false, 'black', NULL, 6, 6, 6, 6);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (7, 123456789, 'Clint', 'Eastwood', false, 'black', NULL, 7, 7, 7, 7);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (8, 123456789, 'Ang', 'Lee', false, 'black', NULL, 8, 8, 8, 8);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (9, 123456789, 'Stanley', 'Kubrick', false, 'black', NULL, 9, 9, 9, 9);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (10, 123456789, 'Woody', 'Allen', false, 'black', NULL, 10, 10, 10, 10);
INSERT INTO "Person" ("personID", "sinNumber", "firstName", "surName", gender, "eyeColor", "middleName", "actorID", "directorID", "producerID", "writerID") VALUES (1, 123456789, 'Martin', 'Scorsese', false, 'blue', NULL, 1, 1, 1, 1);

-- Table BirthOrigin

INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (1, 'toronto', 'ontario', 'canada');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (3, 'new york', 'new york', 'US');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (4, 'paris', 'paris', 'france');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (2, 'montreal', 'quebec', 'canada');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (5, 'ottawa', 'ontario', 'canada');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (6, 'vancouver', 'BC', 'canada');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (7, 'london', 'london', 'england');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (8, 'pittsburgh', 'penssylvania', 'US');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (9, 'dhaka', 'dhaka', 'bangladesh');
INSERT INTO "BirthOrigin" ("birthOriginID", city, state, country) VALUES (10, 'barcelona', 'barcelona', 'spain');

-- Table BirthRecord

INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (1, 1, '2017-08-22');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (2, 2, '2017-08-11');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (3, 3, '1990-01-01');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (4, 4, '1976-01-21');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (5, 5, '1999-09-09');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (6, 6, '1891-03-23');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (7, 7, '1956-09-08');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (8, 8, '1977-03-23');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (9, 9, '1988-01-01');
INSERT INTO "BirthRecord" ("personID", "birthOriginID", "birthDate") VALUES (10, 10, '1999-04-04');

-- Table Awards

INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (1, 'Best Film', 'Oscar', 'Best Film');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (2, 'Best Drama', 'Oscar', 'Best Dramatic Film');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (3, 'Best Comedy', 'Oscar', 'Best Comedy');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (4, 'Best Romantic', 'Oscar', 'Best Romantic');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (5, 'Best International', 'Oscar', 'Best International');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (6, 'Best Director', 'Oscar', 'Best Director');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (7, 'Best Art', 'Oscar', 'Best Art');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (8, 'Best Music', 'Oscar', 'Best Music');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (9, 'Best Graphics', 'Oscar', 'Best Graphics');
INSERT INTO "Awards" ("awardID", "awardName", "awardedBy", "awardDescription") VALUES (10, 'Best Documentary', 'Oscar', 'Best Documentary');

-- Table Movie

INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (1, 'titanic', '2000-01-01', 10, '$1,000,000,000.00', '$2,000,000,000.00', 1, 2, 3);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (2, 'shawshank redemption', '2001-02-02', 9, '$79,000,000.00', '$89,000,000.00', 4, 5, 6);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (3, 'godfather', '2002-03-03', 8, '$123,000,000.00', '$145,000,000.00', 7, 8, 9);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (4, 'dark knight', '2003-02-22', 7, '$99,999,999.00', '$10,000,000.00', 10, 1, 2);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (5, 'angry men', '2004-09-23', 9, '$10,000.00', '$100,000,234.00', 9, 3, 4);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (6, 'schindler''s list', '2005-08-09', 7, '$90,456,987.00', '$109,876,543.00', 8, 5, 6);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (7, 'pulp fiction', '2006-06-30', 5, '$20,000.00', '$10,000.00', 7, 8, 9);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (8, 'fight club', '2007-08-22', 6, '$123,456,789.00', '$987,654,321.00', 3, 2, 10);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (9, 'forrest gump', '2008-12-12', 6, '$200,000.00', '$300,000.00', 4, 9, 2);
INSERT INTO "Movie" ("movieID", "movieTitle", "releaseDate", rating, budget, gross, "directorID", "producerID", "writerID") VALUES (10, 'inception', '2009-07-14', 4, '$300,000.00', '$200,000.00', 9, 3, 1);

-- Table Cinema

INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (1, 'cineplex odeon', '4166932045', 'staines road', '184', 'scarborough', 'canada', 'm1x1v3');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (2, 'famous players', '4161234567', 'famous road', '111', 'toronto', 'canada', 'm1z1v4');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (3, 'imax theatres', '6471023456', 'woo drive', '123', 'ottawa', 'canada', 'm4c5l6');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (4, 'scarborough cineplex', '9052345678', 'crescent road', '9', 'montreal', 'canada', 'm4r1d4');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (5, 'colliseium', '1234567890', 'danforth street', '1', 'vancouver', 'canada', 'm5d1rt');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (6, 'blockbuster cinema', '4567890000', 'yay road', '2', 'paris', 'france', '4rt5f5');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (7, 'netflix theatres', '1230981234', 'bob circle', '99', 'london', 'england', '5r49j7');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (8, 'timhortons theatre', '5670981111', 'hello street', '123', 'dhaka', 'bangladesh', 'm4r1d4');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (9, 'scotiabank films', '4560989999', 'scotiabank road', '89', 'new york', 'US', '5t68h6');
INSERT INTO "Cinema" ("cinemaID", "cinemaName", "phoneNumber", "streetName", "streetNumber", city, country, "postalCode") VALUES (10, 'oxford films', '9999999999', 'ninety nine street', '99', 'new york', 'US', '9u9u9u');

-- Table Genre

INSERT INTO "Genre" ("genreID", type, description) VALUES (1, 'comedy', 'funny');
INSERT INTO "Genre" ("genreID", type, description) VALUES (2, 'horror', 'scary');
INSERT INTO "Genre" ("genreID", type, description) VALUES (3, 'sci-fi', 'scientific');
INSERT INTO "Genre" ("genreID", type, description) VALUES (4, 'action', 'action film');
INSERT INTO "Genre" ("genreID", type, description) VALUES (5, 'adventure', 'adventure film');
INSERT INTO "Genre" ("genreID", type, description) VALUES (6, 'thriller', 'exciting');
INSERT INTO "Genre" ("genreID", type, description) VALUES (7, 'animation', 'cartoon');
INSERT INTO "Genre" ("genreID", type, description) VALUES (8, 'kids', 'for younger viewers');
INSERT INTO "Genre" ("genreID", type, description) VALUES (9, 'adults', '18+ viewers');
INSERT INTO "Genre" ("genreID", type, description) VALUES (10, 'documentary', 'biography');
INSERT INTO "Genre" ("genreID", type, description) VALUES (11, 'western', 'cowboys');

-- Table CastMember

INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (1, 10);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (2, 9);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (3, 8);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (4, 7);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (5, 6);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (6, 5);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (7, 4);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (8, 3);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (9, 2);
INSERT INTO "CastMember" ("actorID", "moviedID") VALUES (10, 1);

-- Table MovieDetails

INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (1, 10);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (2, 9);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (3, 8);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (4, 7);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (5, 6);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (6, 5);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (7, 4);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (8, 3);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (9, 2);
INSERT INTO "MovieDetails" ("genreID", "moviedID") VALUES (10, 1);

-- Table Quotes

INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (1, 'hello world', 1, 1, 10);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (2, 'astalavista baby', 2, 2, 9);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (3, 'i am your father', 3, 3, 8);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (4, 'you can''t handle the truth', 4, 4, 7);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (5, 'eat my shorts', 5, 5, 6);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (6, 'run forrest run', 6, 6, 5);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (7, 'doh', 7, 7, 4);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (8, 'hit me baby one more time', 8, 8, 3);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (9, 'im going to make him an offer he can''t refuse', 9, 9, 2);
INSERT INTO "Quotes" ("quoteID", quote, "genreID", "personID", "moviedID") VALUES (10, 'you don''t understand', 10, 10, 1);

-- Table Rewards

INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (1, 10);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (2, 9);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (3, 8);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (4, 7);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (5, 6);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (6, 5);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (7, 4);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (8, 3);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (9, 2);
INSERT INTO "Rewards" ("awardID", "moviedID") VALUES (10, 1);

-- Table Showtimes

INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (1, 1, '09:00:00', '$9.00', 'Kids', 10);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (2, 2, '12:39:00', '$9.00', 'Regular', 9);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (3, 3, '01:00:00', '$12.00', 'IMAX', 8);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (4, 4, '08:00:00', '$9.00', 'Regular', 7);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (5, 5, '09:00:00', '$9.00', 'Kids', 6);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (7, 4, '08:30:22', '$12.00', 'IMAX', 4);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (6, 5, '10:00:00', '$9.00', 'Regular', 5);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (8, 3, '12:22:23', '$9.00', 'Adult', 3);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (10, 1, '02:00:00', '$9.00', 'Regular', 1);
INSERT INTO "Showtimes" ("cinemaID", room, "time", "ticketPrice", "showType", "moviedID") VALUES (9, 2, '03:00:00', '$9.00', 'Regular', 2);







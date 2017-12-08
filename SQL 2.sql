/* TASK 2 */
/* From table Actors find the average age.*/

SELECT 
  AVG(date_part('year', AGE("BirthRecord"."birthDate"))) AS "Average Age"
FROM 
  "Person", "BirthRecord"
WHERE 
  "Person"."personID" = "BirthRecord"."personID" AND
  "Person"."actorID" IS NOT NULL;

/* Find the number of different countries in which actors from the movie 
   “Beautiful Mind” were born. */

SELECT 
  COUNT(DISTINCT "BirthOrigin".country) AS "Number of different countries"
FROM 
  "Person", "BirthRecord", "BirthOrigin", "Movie", "CastMember"
WHERE 
  "Person"."personID" = "BirthRecord"."personID" 					AND
  "BirthRecord"."birthOriginID" = "BirthOrigin"."birthOriginID" 	AND
  "Movie"."movieID" = "CastMember"."moviedID" 						AND
  "CastMember"."actorID" = "Person"."actorID" 						AND
  "Movie"."movieTitle" = 'Beautiful Mind';
  
/* Find the number of actors with green eye color. */

SELECT 
  COUNT("Person"."eyeColor") AS "Number of Actors with green eyes"
FROM 
  "Person"
WHERE 
  "Person"."eyeColor" 	LIKE 'green' 	AND 
  "Person"."actorID" 	IS NOT NULL ;
  
/* What is the number of movies in which Brad Pitt was playing? */

SELECT 
  COUNT ("Movie"."movieID") AS "Number of movies with Brad Pitt Playing"
FROM 
  "Person", "Movie", "CastMember"
WHERE 
  "Movie"."movieID" = "CastMember"."moviedID" 	AND
  "CastMember"."actorID" = "Person"."actorID" 	AND
  "Person"."firstName" 	LIKE 'Brad' 			AND 
  "Person"."surName" 	LIKE 'Pitt';

/* Find the minimum, average and maximum budget for each type of movie.*/

SELECT DISTINCT
  MIN("Movie".budget) 							AS "Min Budget", 
  MAX("Movie".budget) 							AS "Max Budget", 
  ROUND(AVG("Movie".budget::money::numeric),2) 	AS "AVG Budget",
  "Genre".type
FROM 
  "Movie","Genre","MovieDetails"
WHERE 
  "Movie"."movieID" = "MovieDetails"."moviedID" AND
  "MovieDetails"."genreID" = "Genre"."genreID"
GROUP BY
  "Genre".type;

/* Find the average rating for each movie which has a director 
   born in Toronto or blue eye color */
   
SELECT DISTINCT
  ROUND(AVG("Movie".rating),2) AS "Average"
FROM 
  "Movie","Director","Person","BirthOrigin","BirthRecord"
WHERE 
  "Movie"."directorID" = "Director"."directorID" 		AND
  "Director"."directorID" = "Person"."directorID" 		AND
  "Person"."personID" = "BirthRecord"."personID" 		AND
  "BirthRecord"."birthOriginID" = "BirthOrigin"."birthOriginID" AND
  "BirthOrigin".city 	LIKE 'toronto' 				OR 
  "Person"."eyeColor" 	LIKE 'blue'
GROUP BY
  "Movie"."movieID";
  
/* Find all the movies that have actors born in at least two different countries. */

SELECT 
  "Movie"."movieTitle"
FROM 
  "Movie","Person","BirthOrigin","BirthRecord","Actor","CastMember"
WHERE 
  "Movie"."movieID" = "CastMember"."moviedID" 					AND
  "Person"."personID" = "BirthRecord"."personID" 				AND
  "BirthRecord"."birthOriginID" = "BirthOrigin"."birthOriginID" AND
  "Actor"."actorID" = "Person"."actorID" 						AND
  "CastMember"."actorID" = "Actor"."actorID"
GROUP BY "Movie"."movieTitle"
HAVING COUNT("BirthOrigin".country) >= 2;

/* Write a query of your choice with a subquery and aggregation */

SELECT 
  "Movie"."movieTitle"
FROM 
  "Movie","Person","BirthOrigin","BirthRecord","Actor","CastMember"
WHERE 
  "Movie"."movieID" = "CastMember"."moviedID" 						AND
  "Person"."personID" = "BirthRecord"."personID" 					AND
  "BirthRecord"."birthOriginID" = "BirthOrigin"."birthOriginID" 	AND
  "Actor"."actorID" = "Person"."actorID" 							AND
  "CastMember"."actorID" = "Actor"."actorID"
GROUP BY "Movie"."movieTitle"
HAVING COUNT("BirthOrigin".country) >= 1 					
OR "Movie"."movieTitle" IN (SELECT "Movie"."movieTitle" FROM "Movie" WHERE "Movie"."budget"::numeric > 10);


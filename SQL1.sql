/* TASK 1 */
/* List all directors who were born in Canada */

SELECT 
  "Person"."firstName", "Person"."surName"
FROM 
  "Director","BirthOrigin","BirthRecord","Person"
WHERE 
  "Director"."directorID" = "Person"."directorID" 					AND
  "BirthRecord"."birthOriginID" = "BirthOrigin"."birthOriginID" 	AND
  "Person"."personID" = "BirthRecord"."personID" 					AND
  "BirthOrigin"."country" LIKE 'canada';
  
/* Which movies are directed by David Lynch (Using Stanley Kubrick) */

SELECT 
  "Movie"."movieTitle"
FROM 
  "Movie","Director","Person"
WHERE 
  "Movie"."directorID" = "Director"."directorID" 	AND
  "Director"."directorID" = "Person"."directorID" 	AND
  "Person"."firstName" 	LIKE 'Stanley' 				AND 
  "Person"."surName" 	LIKE 'Kubrick'; 
  
/* List all the actors who played in the movies for which cost of production was more than $1M. 
Compute cost in other currencies:
i.	CAD, 
ii.	JPY, 
iii.RUB
iv.	EUR and 
v.	CHF. 
Assume original cost is in USD. Use renaming operator. 
*/

SELECT 
  "Movie".budget 																AS "Production Cost (USD)", 
  "Person"."firstName" 															AS "First Name", 
  "Person"."surName" 															AS "Last Name",
  ROUND(("Movie".budget::money::numeric::float8 * 1.28)::integer, 2)::money 	AS "CAD",
  ROUND(("Movie".budget::money::numeric::float8 * 112.09)::BIGINT, 2)::money 	AS "JPY",
  ROUND(("Movie".budget::money::numeric::float8 * 58.96)::BIGINT, 2)::money 	AS "RUB",
  ROUND(("Movie".budget::money::numeric::float8 * .85)::integer, 2)::money 		AS "EUR",
  ROUND(("Movie".budget::money::numeric::float8 * .99)::integer, 2)::money 		AS "CHF"  
FROM "Movie","Actor","Person","CastMember"
WHERE 
  "Movie"."movieID" = "CastMember"."moviedID" 	AND
  "Actor"."actorID" = "Person"."actorID" 		AND
  "CastMember"."actorID" = "Actor"."actorID" 	AND
  "Movie".budget > CAST(1000000 AS money);

/* Using operator LIKE find all the directors whose surname start with letter “A” and “D”.*/

SELECT 
  "Person"."firstName", 
  "Person"."surName"
FROM "Person"
WHERE 
  "Person"."directorID" IS NOT NULL 	AND
  ("Person"."surName" 	LIKE 'A%' 		OR 
   "Person"."surName" 	LIKE 'D%');

/*Find all the comedy movies in which there is a playing actor who is less than 40 (age) */

SELECT 
  "BirthRecord"."birthDate", 
  "Genre".type, 
  "Genre".description, 
  "Person"."personID"
FROM "Person","MovieDetails","Movie","Genre","BirthRecord","CastMember"
WHERE 
  "Person"."personID" = "BirthRecord"."personID" 					AND
  "MovieDetails"."moviedID" = "Movie"."movieID" 					AND
  "Movie"."movieID" = "CastMember"."moviedID" 						AND
  "Genre"."genreID" = "MovieDetails"."genreID" 						AND
  "CastMember"."actorID" = "Person"."actorID" 						AND
  "Genre".type LIKE 'comedy'										AND 
  "BirthRecord"."birthDate" BETWEEN '1977-11-19' AND '2017-11-19';

/* Find all the pairs of actors who have blue eye color.
   Produce pairs in alphabetic order, e.g., (Howard before Lynch) and do not produce pairs like (Lynch, Lynch)*/
   
SELECT 
  p1."surName",p2."surName"
FROM "Person" p1, "Person" p2
WHERE 
  p1."actorID" 	IS NOT NULL  	AND 
  p1."eyeColor" LIKE 'blue' 	AND
  p1."surName" 	< p2."surName" 
ORDER BY p1."surName";


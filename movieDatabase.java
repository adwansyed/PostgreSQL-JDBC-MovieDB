package csci3030u_p2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class movieDatabase {
	
	public static void main(String args[]){
		try{
			Class.forName("org.postgresql.Driver");
			Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/csci3030u_p1_test", "postgres", "bmBdEd9!wh");
			
			if(c != null){
				c.setAutoCommit(false);
				System.out.println("Database successfully connected");
			}
			
			//INSERTING WITHOUT VARIABLES

			Statement st = c.createStatement();
			
			st.executeUpdate("INSERT INTO \"Producer\" (\"producerID\", \"studioName\", \"producerType\", salary)" +
			 		  		 "VALUES (12, 'abc studioes', 'lights', '$10,000.00');");
			
			st.executeUpdate("INSERT INTO \"Director\" (\"directorID\", \"directorRole\", salary)" + 
			 		  		 "VALUES (12, 'scene12', '$20,000.00');");
			
			st.executeUpdate("INSERT INTO \"Actor\" (\"actorID\", \"actorRole\", agency, salary)" + 
		  			  		 "VALUES (12, 'candy crush', 'disney', '$20,000.00');");
			
			st.executeUpdate("INSERT INTO \"Writer\" (\"writerID\", publisher, salary)" +
		   			  		 "VALUES (12, 'chocolate publisher', '$20,000.00');");
			
			st.executeUpdate("INSERT INTO \"Person\" (\"personID\", \"sinNumber\", \"firstName\", \"surName\", gender, \"eyeColor\", \"middleName\", \"actorID\", \"directorID\", \"producerID\", \"writerID\")" + 
		   			  		 "VALUES (12, 123456789, 'Sterling', 'Rubber', false, 'black', NULL, 2, 2, 2, 2);");
			
			st.executeUpdate("INSERT INTO \"BirthOrigin\" (\"birthOriginID\", city, state, country)" +
					  		 "VALUES (12, 'toronto', 'ontario', 'canada');");
			
			st.executeUpdate("INSERT INTO \"BirthRecord\" (\"personID\", \"birthOriginID\", \"birthDate\")" +
					  		 "VALUES (12, 1, '2013-08-22');");
			
			st.executeUpdate("INSERT INTO \"Movie\" (\"movieID\", \"movieTitle\", \"releaseDate\", rating, budget, gross, \"directorID\", \"producerID\", \"writerID\")" + 
		  			  		 "VALUES (12, 'anacondas discovered', '2000-01-01', 10, '$1,000,000,000.00', '$2,000,000,000.00', 1, 2, 3);");
			
			st.executeUpdate("INSERT INTO \"Cinema\" (\"cinemaID\", \"cinemaName\", \"phoneNumber\", \"streetName\", \"streetNumber\", city, country, \"postalCode\")" +
		   			  		 "VALUES (12, 'cineplex hut', '4166932045', 'staines road', '184', 'scarborough', 'canada', 'm1x1v3');");
			
			st.executeUpdate("INSERT INTO \"Genre\" (\"genreID\", type, description)" +
		  			  		 "VALUES (13, 'live horror', 'funny');");
			
			st.executeUpdate("INSERT INTO \"CastMember\" (\"actorID\", \"moviedID\")" + 
			   		  		 "VALUES (12, 9);");
			
			st.executeUpdate("INSERT INTO \"MovieDetails\" (\"genreID\", \"moviedID\")" + 
				 	  		 "VALUES (12, 4);");
			
			st.executeUpdate("INSERT INTO \"Quotes\" (\"quoteID\", quote, \"genreID\", \"personID\", \"moviedID\")" +
		   			  		 "VALUES (12, 'scofield is dead', 1, 1, 11);");
			
			st.executeUpdate("INSERT INTO \"Rewards\" (\"awardID\", \"moviedID\")" + 
							 "VALUES (9, 3);");
			
			st.executeUpdate("INSERT INTO \"Showtimes\" (\"cinemaID\", room, \"time\", \"ticketPrice\", \"showType\", \"moviedID\")" +
			  		  		 "VALUES (12, 6, '09:00:00', '$9.00', 'Kids', 10);");
			
			
			//INSERTING WITH VARIABLES
			
			//Statement st = c.createStatement();
			String INSERT_PRODUCER_SQL 			= "INSERT INTO \"Producer\" (\"producerID\", \"studioName\", \"producerType\", salary)" +
										 		  "VALUES (11, 'fox studioes', 'lights', '$10,000.00');";
			
			String INSERT_DIRECTOR_SQL 			= "INSERT INTO \"Director\" (\"directorID\", \"directorRole\", salary)" + 
										 		  "VALUES (11, 'scene11', '$20,000.00');";
			
			String INSERT_ACTOR_SQL 			= "INSERT INTO \"Actor\" (\"actorID\", \"actorRole\", agency, salary)" + 
									  			  "VALUES (11, 'avatar flux', 'disney', '$20,000.00');";
			
			String INSERT_WRITER_SQL 			= "INSERT INTO \"Writer\" (\"writerID\", publisher, salary)" +
									   			  "VALUES (11, 'penguin meets robin', '$20,000.00');";
			
			String INSERT_PERSON_SQL 			= "INSERT INTO \"Person\" (\"personID\", \"sinNumber\", \"firstName\", \"surName\", gender, \"eyeColor\", \"middleName\", \"actorID\", \"directorID\", \"producerID\", \"writerID\")" + 
									   			  "VALUES (11, 123456789, 'Sterling', 'Spielberg', false, 'black', NULL, 2, 2, 2, 2);";
			
			String INSERT_BIRTHORIGIN_SQL 		= "INSERT INTO \"BirthOrigin\" (\"birthOriginID\", city, state, country)" +
												  "VALUES (11, 'toronto', 'ontario', 'canada');";
			
			String INSERT_BIRTHRECORD_SQL 		= "INSERT INTO \"BirthRecord\" (\"personID\", \"birthOriginID\", \"birthDate\")" +
												  "VALUES (11, 1, '2016-08-22');";
			
			String INSERT_AWARDS_SQL 			= "INSERT INTO \"Awards\" (\"awardID\", \"awardName\", \"awardedBy\", \"awardDescription\")" +
									   			  "VALUES (11, 'Best Special Effects', 'Oscar', 'Best Film');";
			
			String INSERT_MOVIE_SQL 			= "INSERT INTO \"Movie\" (\"movieID\", \"movieTitle\", \"releaseDate\", rating, budget, gross, \"directorID\", \"producerID\", \"writerID\")" + 
									  			  "VALUES (11, 'titanic discovered', '2000-01-01', 10, '$1,000,000,000.00', '$2,000,000,000.00', 1, 2, 3);";
			
			String INSERT_CINEMA_SQL 			= "INSERT INTO \"Cinema\" (\"cinemaID\", \"cinemaName\", \"phoneNumber\", \"streetName\", \"streetNumber\", city, country, \"postalCode\")" +
									   			  "VALUES (11, 'cineplex skydome', '4166932045', 'staines road', '184', 'scarborough', 'canada', 'm1x1v3');";
			
			String INSERT_GENRE_SQL 			= "INSERT INTO \"Genre\" (\"genreID\", type, description)" +
									  			  "VALUES (12, 'live comedy', 'funny');";
			
			String INSERT_CASTMEMBER_SQL 		= "INSERT INTO \"CastMember\" (\"actorID\", \"moviedID\")" + 
										   		  "VALUES (11, 9);";
			
			String INSERT_MOVIEDETAILS_SQL 		= "INSERT INTO \"MovieDetails\" (\"genreID\", \"moviedID\")" + 
											 	  "VALUES (11, 3);";
			
			String INSERT_QUOTES_SQL 			= "INSERT INTO \"Quotes\" (\"quoteID\", quote, \"genreID\", \"personID\", \"moviedID\")" +
									   			  "VALUES (11, 'hello darling', 1, 1, 11);";
			
			String INSERT_REWARDS_SQL 			= "INSERT INTO \"Rewards\" (\"awardID\", \"moviedID\")" + 
												  "VALUES (10, 10);";
			
			String INSERT_SHOWTIMES_SQL 		= "INSERT INTO \"Showtimes\" (\"cinemaID\", room, \"time\", \"ticketPrice\", \"showType\", \"moviedID\")" +
										  		  "VALUES (11, 5, '09:00:00', '$9.00', 'Kids', 10);";
			
			st.executeUpdate(INSERT_PRODUCER_SQL);
			st.executeUpdate(INSERT_DIRECTOR_SQL);
			st.executeUpdate(INSERT_ACTOR_SQL);
			st.executeUpdate(INSERT_WRITER_SQL);
			st.executeUpdate(INSERT_PERSON_SQL);
			st.executeUpdate(INSERT_BIRTHORIGIN_SQL);
			st.executeUpdate(INSERT_BIRTHRECORD_SQL);
			st.executeUpdate(INSERT_MOVIE_SQL);
			st.executeUpdate(INSERT_CINEMA_SQL);
			st.executeUpdate(INSERT_GENRE_SQL);
			st.executeUpdate(INSERT_CASTMEMBER_SQL);
			st.executeUpdate(INSERT_MOVIEDETAILS_SQL);
			st.executeUpdate(INSERT_QUOTES_SQL);
			st.executeUpdate(INSERT_REWARDS_SQL);
			st.executeUpdate(INSERT_SHOWTIMES_SQL);

			// Four SQL statements without passing variables
			//Statement st = c.createStatement();
			
			/* List all directors who were born in Canada */
			System.out.println("\nQ1");
			ResultSet rs =  st.executeQuery("SELECT \r\n" + 
											"  \"Person\".\"firstName\", \"Person\".\"surName\"\r\n" + 
											"FROM \r\n" + 
											"  \"Director\",\"BirthOrigin\",\"BirthRecord\",\"Person\"\r\n" + 
											"WHERE \r\n" + 
											"  \"Director\".\"directorID\" = \"Person\".\"directorID\" 					AND\r\n" + 
											"  \"BirthRecord\".\"birthOriginID\" = \"BirthOrigin\".\"birthOriginID\" 	AND\r\n" + 
											"  \"Person\".\"personID\" = \"BirthRecord\".\"personID\" 					AND\r\n" + 
											"  \"BirthOrigin\".\"country\" LIKE 'canada';");
			while(rs.next()){
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("surName");
				
				System.out.println("First Name = " + firstName);
				System.out.println("Last Name = " + lastName);
			}
			
			/* Which movies are directed by David Lynch (Using Stanley Kubrick) */
			System.out.println("\nQ2");
			rs = st.executeQuery("SELECT \r\n" + 
								 "  \"Movie\".\"movieTitle\"\r\n" + 
								 "FROM \r\n" + 
								 "  \"Movie\",\"Director\",\"Person\"\r\n" + 
								 "WHERE \r\n" + 
								 "  \"Movie\".\"directorID\" = \"Director\".\"directorID\" 	AND\r\n" + 
								 "  \"Director\".\"directorID\" = \"Person\".\"directorID\" 	AND\r\n" + 
								 "  \"Person\".\"firstName\" 	LIKE 'Stanley' 				AND \r\n" + 
								 "  \"Person\".\"surName\" 	LIKE 'Kubrick'; ");
			
			while(rs.next()){
				String movieTitle = rs.getString("movieTitle");
				System.out.println("Movie Title = " + movieTitle);
			}
			
			/* From table Actors find the average age.*/
			System.out.println("\nQ3");
			rs = st.executeQuery("SELECT \r\n" + 
								 "  AVG(date_part('year', AGE(\"BirthRecord\".\"birthDate\"))) AS \"Average Age\"\r\n" + 
								 "FROM \r\n" + 
								 "  \"Person\", \"BirthRecord\"\r\n" + 
								 "WHERE \r\n" + 
								 "  \"Person\".\"personID\" = \"BirthRecord\".\"personID\" AND\r\n" + 
								 "  \"Person\".\"actorID\" IS NOT NULL;");
			
			while(rs.next()){
				String avgAge = rs.getString("Average Age");
				System.out.println("Average Age = " + avgAge);
			}
			
			/* Find the number of actors with green eye color. */
			System.out.println("\nQ4");
			rs = st.executeQuery("SELECT \r\n" + 
								 "  COUNT(\"Person\".\"eyeColor\") AS \"Number of Actors with green eyes\"\r\n" + 
								 "FROM \r\n" + 
								 "  \"Person\"\r\n" + 
								 "WHERE \r\n" + 
								 "  \"Person\".\"eyeColor\" 	LIKE 'green' 	AND \r\n" + 
								 "  \"Person\".\"actorID\" 	IS NOT NULL ;");
			while(rs.next()){
				String numActors = rs.getString("Number of Actors with green eyes");
				System.out.println("Number of Actors with green eyes = " + numActors);
			}
			
			// Four SQL statements passing variables
			
			/* List all directors who were born in Canada */
			String QUERY_1 = 	"SELECT \r\n" + 
								"  \"Person\".\"firstName\", \"Person\".\"surName\"\r\n" + 
								"FROM \r\n" + 
								"  \"Director\",\"BirthOrigin\",\"BirthRecord\",\"Person\"\r\n" + 
								"WHERE \r\n" + 
								"  \"Director\".\"directorID\" = \"Person\".\"directorID\" 					AND\r\n" + 
								"  \"BirthRecord\".\"birthOriginID\" = \"BirthOrigin\".\"birthOriginID\" 	AND\r\n" + 
								"  \"Person\".\"personID\" = \"BirthRecord\".\"personID\" 					AND\r\n" + 
								"  \"BirthOrigin\".\"country\" LIKE 'canada';";
			
			 /* Which movies are directed by David Lynch (Using Stanley Kubrick) */
			String QUERY_2 = 	"SELECT \r\n" + 
					 			"  \"Movie\".\"movieTitle\"\r\n" + 
					 			"FROM \r\n" + 
					 			"  \"Movie\",\"Director\",\"Person\"\r\n" + 
					 			"WHERE \r\n" + 
					 			"  \"Movie\".\"directorID\" = \"Director\".\"directorID\" 	AND\r\n" + 
					 			"  \"Director\".\"directorID\" = \"Person\".\"directorID\" 	AND\r\n" + 
					 			"  \"Person\".\"firstName\" 	LIKE 'Stanley' 				AND \r\n" + 
					 			"  \"Person\".\"surName\" 	LIKE 'Kubrick'; ";
			
			/* From table Actors find the average age.*/
			String QUERY_3 = 	"SELECT \r\n" + 
					 			"  AVG(date_part('year', AGE(\"BirthRecord\".\"birthDate\"))) AS \"Average Age\"\r\n" + 
					 			"FROM \r\n" + 
					 			"  \"Person\", \"BirthRecord\"\r\n" + 
					 			"WHERE \r\n" + 
					 			"  \"Person\".\"personID\" = \"BirthRecord\".\"personID\" AND\r\n" + 
					 			"  \"Person\".\"actorID\" IS NOT NULL;";
			
			 /* Find the number of actors with green eye color. */
			String QUERY_4 = 	"SELECT \r\n" + 
					 			"  COUNT(\"Person\".\"eyeColor\") AS \"Number of Actors with green eyes\"\r\n" + 
					 			"FROM \r\n" + 
					 			"  \"Person\"\r\n" + 
					 			"WHERE \r\n" + 
					 			"  \"Person\".\"eyeColor\" 	LIKE 'green' 	AND \r\n" + 
					 			"  \"Person\".\"actorID\" 	IS NOT NULL ;";
			
			//Q1
			rs = st.executeQuery(QUERY_1);
			System.out.println("\nQ1");
			
			while(rs.next()){
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("surName");
				
				System.out.println("First Name = " + firstName);
				System.out.println("Last Name = " + lastName);
			}
			
			//Q2
			rs = st.executeQuery(QUERY_2);
			System.out.println("\nQ2");
			
			while(rs.next()){
				String movieTitle = rs.getString("movieTitle");
				System.out.println("Movie Title = " + movieTitle);
			}
			
			//Q3
			rs = st.executeQuery(QUERY_3);
			System.out.println("\nQ3");
			
			while(rs.next()){
				String avgAge = rs.getString("Average Age");
				System.out.println("Average Age = " + avgAge);
			}
			
			//Q3
			rs = st.executeQuery(QUERY_4);
			System.out.println("\nQ4");
			
			while(rs.next()){
				String numActors = rs.getString("Number of Actors with green eyes");
				System.out.println("Number of Actors with green eyes = " + numActors);
			}
			
			rs.close();
			st.close();
			c.close();
						
		}catch(Exception e){
			e.printStackTrace();
			System.err.println(e.getClass().getName()+ ": " + e.getMessage());
			System.exit(0);
		}
		
	}
}

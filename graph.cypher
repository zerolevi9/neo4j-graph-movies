```cypher

// ------------------------------------------------------------
// LIMPAR BANCO
// ------------------------------------------------------------
MATCH (n) DETACH DELETE n;


// ------------------------------------------------------------
// CONSTRAINTS
// ------------------------------------------------------------
CREATE CONSTRAINT movie_id   IF NOT EXISTS FOR (m:Movie)  REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT person_id  IF NOT EXISTS FOR (p:Person) REQUIRE p.id IS UNIQUE;
CREATE CONSTRAINT genre_name IF NOT EXISTS FOR (g:Genre)  REQUIRE g.name IS UNIQUE;
CREATE CONSTRAINT studio_id  IF NOT EXISTS FOR (s:Studio) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT award_id   IF NOT EXISTS FOR (a:Award)  REQUIRE a.id IS UNIQUE;


// ------------------------------------------------------------
// GENRES
// ------------------------------------------------------------
MERGE (:Genre {name: "Action"});
MERGE (:Genre {name: "Sci-Fi"});
MERGE (:Genre {name: "Thriller"});
MERGE (:Genre {name: "Drama"});
MERGE (:Genre {name: "Crime"});
MERGE (:Genre {name: "Adventure"});
MERGE (:Genre {name: "Biography"});
MERGE (:Genre {name: "History"});
MERGE (:Genre {name: "Animation"});
MERGE (:Genre {name: "Fantasy"});
MERGE (:Genre {name: "Romance"});


// ------------------------------------------------------------
// MOVIES
// ------------------------------------------------------------
MERGE (:Movie {id: 1,  title: "The Matrix", year: 1999, rating: 8.7, votes: 1800000});
MERGE (:Movie {id: 2,  title: "John Wick", year: 2014, rating: 7.4, votes: 900000});
MERGE (:Movie {id: 3,  title: "Speed", year: 1994, rating: 7.2, votes: 400000});
MERGE (:Movie {id: 4,  title: "The Dark Knight", year: 2008, rating: 9.0, votes: 2700000});
MERGE (:Movie {id: 5,  title: "Inception", year: 2010, rating: 8.8, votes: 2300000});
MERGE (:Movie {id: 6,  title: "Interstellar", year: 2014, rating: 8.6, votes: 1600000});
MERGE (:Movie {id: 7,  title: "Pulp Fiction", year: 1994, rating: 8.9, votes: 1900000});
MERGE (:Movie {id: 8,  title: "Kill Bill: Vol. 1", year: 2003, rating: 8.1, votes: 1100000});
MERGE (:Movie {id: 9,  title: "Parasite", year: 2019, rating: 8.5, votes: 750000});
MERGE (:Movie {id: 10, title: "Schindler's List", year: 1993, rating: 9.0, votes: 1400000});
MERGE (:Movie {id: 11, title: "Goodfellas", year: 1990, rating: 8.7, votes: 1200000});
MERGE (:Movie {id: 12, title: "The Departed", year: 2006, rating: 8.5, votes: 1300000});
MERGE (:Movie {id: 13, title: "Spirited Away", year: 2001, rating: 8.6, votes: 720000});
MERGE (:Movie {id: 14, title: "Princess Mononoke", year: 1997, rating: 8.4, votes: 420000});
MERGE (:Movie {id: 15, title: "Eternal Sunshine", year: 2004, rating: 8.3, votes: 900000});


// ------------------------------------------------------------
// PERSON
// ------------------------------------------------------------
MERGE (:Person {id: 1, name: "Keanu Reeves", born: 1964});
MERGE (:Person {id: 2, name: "Laurence Fishburne", born: 1961});
MERGE (:Person {id: 3, name: "Carrie-Anne Moss", born: 1967});
MERGE (:Person {id: 4, name: "Lilly Wachowski", born: 1967});
MERGE (:Person {id: 5, name: "Lana Wachowski", born: 1965});
MERGE (:Person {id: 6, name: "Christian Bale", born: 1974});
MERGE (:Person {id: 7, name: "Heath Ledger", born: 1979});
MERGE (:Person {id: 8, name: "Christopher Nolan", born: 1970});
MERGE (:Person {id: 9, name: "Leonardo DiCaprio", born: 1974});
MERGE (:Person {id: 10, name: "Joseph Gordon-Levitt", born: 1981});
MERGE (:Person {id: 11, name: "John Travolta", born: 1954});
MERGE (:Person {id: 12, name: "Uma Thurman", born: 1970});
MERGE (:Person {id: 13, name: "Samuel L. Jackson", born: 1948});
MERGE (:Person {id: 14, name: "Quentin Tarantino", born: 1963});
MERGE (:Person {id: 15, name: "Bong Joon-ho", born: 1969});
MERGE (:Person {id: 16, name: "Liam Neeson", born: 1952});
MERGE (:Person {id: 17, name: "Steven Spielberg", born: 1946});
MERGE (:Person {id: 18, name: "Ray Liotta", born: 1954});
MERGE (:Person {id: 19, name: "Robert De Niro", born: 1943});
MERGE (:Person {id: 20, name: "Martin Scorsese", born: 1942});
MERGE (:Person {id: 21, name: "Matt Damon", born: 1970});
MERGE (:Person {id: 22, name: "Hayao Miyazaki", born: 1941});
MERGE (:Person {id: 23, name: "Jim Carrey", born: 1962});
MERGE (:Person {id: 24, name: "Kate Winslet", born: 1975});
MERGE (:Person {id: 25, name: "Michel Gondry", born: 1963});


// ------------------------------------------------------------
// STUDIOS
// ------------------------------------------------------------
MERGE (:Studio {id: 1, name: "Warner Bros.", country: "USA", founded: 1923});
MERGE (:Studio {id: 2, name: "Universal Pictures", country: "USA", founded: 1912});
MERGE (:Studio {id: 3, name: "Miramax Films", country: "USA", founded: 1979});
MERGE (:Studio {id: 4, name: "Lionsgate Films", country: "USA", founded: 1997});
MERGE (:Studio {id: 5, name: "Legendary Pictures", country: "USA", founded: 2000});
MERGE (:Studio {id: 6, name: "CJ Entertainment", country: "Korea", founded: 1995});
MERGE (:Studio {id: 7, name: "Studio Ghibli", country: "Japan", founded: 1985});
MERGE (:Studio {id: 8, name: "Focus Features", country: "USA", founded: 2002});
MERGE (:Studio {id: 9, name: "Syncopy Films", country: "USA", founded: 2001});
MERGE (:Studio {id: 10, name: "Village Roadshow", country: "AUS", founded: 1954});


// ------------------------------------------------------------
// AWARDS
// ------------------------------------------------------------
MERGE (:Award {id: 1, name: "Oscar", category: "Best Picture", year: 1994, result: "Winner"});
MERGE (:Award {id: 2, name: "Oscar", category: "Best Director", year: 1994, result: "Winner"});
MERGE (:Award {id: 3, name: "Oscar", category: "Best Picture", year: 2020, result: "Winner"});
MERGE (:Award {id: 4, name: "Oscar", category: "Best International Film", year: 2020, result: "Winner"});
MERGE (:Award {id: 5, name: "Oscar", category: "Best Director", year: 2020, result: "Winner"});
MERGE (:Award {id: 6, name: "Oscar", category: "Best Picture", year: 2011, result: "Nominated"});
MERGE (:Award {id: 7, name: "Oscar", category: "Best Director", year: 2009, result: "Nominated"});
MERGE (:Award {id: 8, name: "BAFTA", category: "Best Film", year: 2009, result: "Winner"});
MERGE (:Award {id: 9, name: "BAFTA", category: "Best Supporting Actor", year: 2009, result: "Winner"});
MERGE (:Award {id: 10, name: "Golden Globe", category: "Best Director", year: 1994, result: "Winner"});
MERGE (:Award {id: 11, name: "Golden Globe", category: "Best Foreign Film", year: 2020, result: "Winner"});
MERGE (:Award {id: 12, name: "Cannes", category: "Palme d Or", year: 1994, result: "Winner"});
MERGE (:Award {id: 13, name: "Cannes", category: "Palme d Or", year: 2019, result: "Winner"});
MERGE (:Award {id: 14, name: "Oscar", category: "Best Animated Feature", year: 2003, result: "Winner"});
MERGE (:Award {id: 15, name: "Saturn Award", category: "Best Science Fiction", year: 2000, result: "Winner"});
MERGE (:Award {id: 16, name: "Saturn Award", category: "Best Science Fiction", year: 2011, result: "Winner"});
MERGE (:Award {id: 17, name: "Oscar", category: "Best Supporting Actor", year: 2009, result: "Winner"});
MERGE (:Award {id: 18, name: "Critics Choice", category: "Best Picture", year: 2007, result: "Winner"});
MERGE (:Award {id: 19, name: "AFI Award", category: "Movie of the Year", year: 2007, result: "Winner"});
MERGE (:Award {id: 20, name: "Oscar", category: "Best Picture", year: 1994, result: "Nominated"});


// ------------------------------------------------------------
// RELACIONAMENTOS — DIRECTED
// ------------------------------------------------------------
MATCH (d:Person {id: 4}), (m:Movie {id: 1}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 5}), (m:Movie {id: 1}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 8}), (m:Movie {id: 4}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 8}), (m:Movie {id: 5}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 8}), (m:Movie {id: 6}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 14}), (m:Movie {id: 7}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 14}), (m:Movie {id: 8}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 15}), (m:Movie {id: 9}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 17}), (m:Movie {id: 10}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 20}), (m:Movie {id: 11}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 20}), (m:Movie {id: 12}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 22}), (m:Movie {id: 13}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 22}), (m:Movie {id: 14}) MERGE (d)-[:DIRECTED]->(m);
MATCH (d:Person {id: 25}), (m:Movie {id: 15}) MERGE (d)-[:DIRECTED]->(m);


// ------------------------------------------------------------
// RELACIONAMENTOS — PRODUCED_BY
// ------------------------------------------------------------
MATCH (m:Movie {id: 1}), (s:Studio {id: 10}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 1}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 2}), (s:Studio {id: 4}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 3}), (s:Studio {id: 2}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 4}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 4}), (s:Studio {id: 5}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 5}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 5}), (s:Studio {id: 9}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 6}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 6}), (s:Studio {id: 9}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 7}), (s:Studio {id: 3}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 8}), (s:Studio {id: 3}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 9}), (s:Studio {id: 6}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 10}), (s:Studio {id: 2}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 11}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 12}), (s:Studio {id: 1}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 13}), (s:Studio {id: 7}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 14}), (s:Studio {id: 7}) MERGE (m)-[:PRODUCED_BY]->(s);
MATCH (m:Movie {id: 15}), (s:Studio {id: 8}) MERGE (m)-[:PRODUCED_BY]->(s);


// ------------------------------------------------------------
// RELACIONAMENTOS — AWARDS (FILMES)
// ------------------------------------------------------------
MATCH (m:Movie {id: 10}), (a:Award {id: 1}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 10}), (a:Award {id: 2}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 7}),  (a:Award {id: 12}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 7}),  (a:Award {id: 20}) MERGE (m)-[:NOMINATED_FOR]->(a);
MATCH (m:Movie {id: 9}),  (a:Award {id: 3}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 9}),  (a:Award {id: 4}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 9}),  (a:Award {id: 5}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 9}),  (a:Award {id: 13}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 4}),  (a:Award {id: 8}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 4}),  (a:Award {id: 7}) MERGE (m)-[:NOMINATED_FOR]->(a);
MATCH (m:Movie {id: 5}),  (a:Award {id: 6}) MERGE (m)-[:NOMINATED_FOR]->(a);
MATCH (m:Movie {id: 5}),  (a:Award {id: 16}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 1}),  (a:Award {id: 15}) MERGE (m)-[:WON_AWARD]->(a);
MATCH (m:Movie {id: 13}), (a:Award {id: 14}) MERGE (m)-[:WON_AWARD]->(a);


// ------------------------------------------------------------
// RELACIONAMENTOS — AWARDS (PESSOAS)
// ------------------------------------------------------------
MATCH (p:Person {id: 17}), (a:Award {id: 2}) MERGE (p)-[:WON_AWARD]->(a);
MATCH (p:Person {id: 15}), (a:Award {id: 5}) MERGE (p)-[:WON_AWARD]->(a);
MATCH (p:Person {id: 7}),  (a:Award {id: 9}) MERGE (p)-[:WON_AWARD]->(a);
MATCH (p:Person {id: 7}),  (a:Award {id: 17}) MERGE (p)-[:WON_AWARD]->(a);
MATCH (p:Person {id: 22}), (a:Award {id: 14}) MERGE (p)-[:WON_AWARD]->(a);


// ------------------------------------------------------------
// CONSULTAS
// ------------------------------------------------------------
MATCH (n) RETURN labels(n), count(*);
MATCH (n)-[r]->(m) RETURN n,r,m LIMIT 100;
```

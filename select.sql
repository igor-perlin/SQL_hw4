-- количество исполнителей в каждом жанре;

SELECT genre_name, COUNT(musical_genres.genre_id) AS artist_in_genre 
  FROM musical_genres
  JOIN musical_genres_artists 
	ON musical_genres.genre_id  = musical_genres_artists.genre_id
 GROUP BY genre_name;
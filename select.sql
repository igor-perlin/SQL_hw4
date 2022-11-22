-- количество исполнителей в каждом жанре;

SELECT genre_name, COUNT(genre.genre_id) AS artists_in_genre 
FROM genre g JOIN genres_artists ON g.genre_id  = genres_artists.genre_id
GROUP BY genre_name;
 
-- количество треков, вошедших в альбомы 2019-2020 годов;

SELECT album_title, COUNT(track_id) AS tracks_in_albums FROM album a 
JOIN tracks t ON a.album_id = t.album_id
WHERE album_year BETWEEN 2019 AND 2020
GROUP BY album_title;
 
-- средняя продолжительность треков по каждому альбому;

SELECT album_title, AVG(duration) AS avg_duration FROM album a 
JOIN tracks t ON a.album_id = t.album_id
GROUP BY album_title;
 
-- все исполнители, которые не выпустили альбомы в 2020 году;

SELECT artist_name FROM artist a 
JOIN albums_artists aa ON a.artist_id  = aa.artist_id 
JOIN album a2 ON a2.album_id = aa.album_id
WHERE album_year != 2020;
 
-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

SELECT DISTINCT collection_title FROM collection c 
JOIN track_col tc ON c.collection_id = tc.collection_id 
JOIN tracks t ON tc.track_id = t.track_id 
JOIN album a ON t.album_id = a.album_id
JOIN albums_artists aa  ON a.album_id = aa.album_id 
JOIN artist a2  ON aa.album_id = a2.artist_id
WHERE artist_name = 'Madonna';
 
-- название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT album_title FROM album a 
JOIN albums_artists aa ON a.album_id = aa.album_id 
JOIN artist a2  ON aa.album_id = a2.artist_id 
JOIN genres_artists ga ON a2.artist_id = ga.artist_id 
GROUP BY album_title
HAVING COUNT(genre_id) > 1;

-- наименование треков, которые не входят в сборники;

SELECT track_title FROM tracks t 
FULL JOIN track_col tc ON t.track_id = tc.track_id
FULL JOIN collection c ON tc.collection_id = c.collection_id
WHERE tc.collection_id IS NULL;
 
-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT artist_name, duration FROM artist a
JOIN albums_artists aa ON a.artist_id = aa.artist_id 
JOIN album a2  ON aa.album_id = a2.album_id 
JOIN tracks t ON a2.album_id = t.album_id
WHERE duration = (SELECT MIN(duration) FROM tracks)
GROUP BY artist_name, duration; 
 
-- название альбомов, содержащих наименьшее количество треков.

SELECT album_title, COUNT(tracks.track_id) AS tracks_in_album FROM album
JOIN tracks ON album.album_id = tracks.album_id 
GROUP BY album_title
HAVING COUNT(tracks.track_id) = (SELECT MIN(min_track_count) 
FROM (SELECT COUNT(tracks.track_id) AS min_track_count 
FROM album JOIN tracks ON album.album_id = tracks.album_id GROUP BY album_title) AS track_count);
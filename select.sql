--- поскольку в моей базе данных отсутствуют альбомы, вышедшие в 2018 году, я взял на себя смелость сделать запрос, где искомый год 2010
SELECT
  title,
  release_year
FROM
  albums
WHERE
  release_year = 2010;
SELECT
  track_name,
  run
FROM
  tracks
WHERE
  run = (
    SELECT
      MAX(run)
    FROM
      tracks
  );
SELECT
  track_name,
  run
FROM
  tracks
WHERE
  run > '00:03:30';
SELECT
  title,
  release_year
FROM
  songsters
WHERE
  release_year BETWEEN 2018
  AND 2020;
SELECT
  nickname
FROM
  performers
WHERE
  nickname NOT LIKE '%% %%';
SELECT
  track_name
FROM
  tracks
WHERE
  track_name ~~* '%% my %%';
 
 
 --------- добавлено для ДЗ #4 ---------
 
 --- количество исполнителей в каждом жанре
 SELECT name, COUNT(performer_id) 
 FROM genres JOIN performers_genres 
 ON genres.id = performers_genres.genre_id 
 GROUP BY name;
 
 --- количество треков, вошедших в альбомы 2019-2020 годов (таких альбомов у меня не оказалось, и я выбрал 2010-2011)
 SELECT COUNT(*) 
 FROM tracks AS t 
 JOIN albums AS a ON t.in_album_id = a.id 
 WHERE a.release_year BETWEEN 2010 AND 2011;

--- средняя продолжительность треков по каждому альбому
SELECT a.title AS album_title, DATE_TRUNC('second', AVG(run)) AS avg_run 
FROM tracks 
JOIN albums AS a ON a.id = tracks.in_album_id 
GROUP BY a.title;

--- все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT p.nickname FROM performers AS p 
JOIN performers_albums AS pa ON p.id = pa.performer_id 
join albums AS als ON pa.album_id = als.id 
WHERE p.nickname NOT IN (
	SELECT DISTINCT p.nickname FROM performers AS p 
	JOIN performers_albums AS pa ON p.id = pa.performer_id 
	JOIN albums AS als ON pa.album_id = als.id 
	WHERE release_year IN (2020));

--- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT DISTINCT songsters(title) 
FROM performers AS p 
JOIN performers_albums AS pa ON p.id = pa.performer_id 
JOIN tracks AS t ON pa.album_id = t.in_album_id 
JOIN songsters_tracks AS st ON t.id = st.track_id 
JOIN songsters AS s ON st.songster_id = s.id 
WHERE p.nickname = 'Michael Jackson';

--- название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT title 
FROM performers_genres AS pg
JOIN performers_albums AS pa ON pg.performer_id = pa.performer_id 
JOIN albums AS a ON a.id = pa.album_id 
GROUP BY title 
HAVING COUNT(genre_id) > 1;

--- наименование треков, которые не входят в сборники
SELECT track_name FROM tracks t
FULL JOIN songsterss_tracks st ON t.id = st.track_id 
WHERE songster_id IS NULL;

--- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT p.nickname
FROM tracks AS t
LEFT JOIN albums AS a ON t.album_id = a.id
LEFT JOIN performers_albums pa ON a.id = pa.album_id
LEFT JOIN performers p ON pa.performer_id = p.id
WHERE t.run = (SELECT MIN(run) FROM tracks)
ORDER BY p.nickname;

--- название альбомов, содержащих наименьшее количество треков
SELECT title FROM albums
JOIN tracks t ON t.in_album_id = albums.id
GROUP BY title
HAVING COUNT(in_album_id) = (SELECT COUNT(in_album_id) FROM albums
JOIN tracks t ON t.in_album_id = albums.id
GROUP BY title
ORDER BY COUNT(in_album_id) ASC
LIMIT 1)

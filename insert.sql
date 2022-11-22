--Жанры
insert into genre(genre_name)
values ('rock`n`roll');
insert into genre(genre_name)
values ('rock');
insert into genre(genre_name)
values ('pop');
insert into genre(genre_name)
values ('rap');
insert into genre(genre_name)
values ('jazz');

--Исполнители
insert into artist(artist_name)
values 
('Chuck Berry'), --rocknroll 1
('Elvis Presley'), --rocknroll 2
('Jerry Lee Lewis'), --rocknroll 3
('Muse'), --rock 4
('Red Hot Chili Peppers'), --rock 5
('Michael Jackson'), --pop 6
('Madonna'), --pop 7
('Eminem'), --rap 8
('Louis Armstrong'); --jazz 9

--Сведение исполнителей и жанров
insert into genres_artists
values 
(1, 1), --rocknroll
(1, 2), --rocknroll
(1, 3), --rocknroll
(2, 4), --rock
(2, 5), --rock
(3, 6), --pop
(3, 7), --pop
(4, 8), --rap
(5, 9); --jazz

insert into album (album_title, album_year)
values
('Blue Hawaii', 1961), --Elvis Presley, rocknroll 1
('Great Balls of Fire', 1957), --Jerry Lee Lewis, rocknroll 2
('Absolution', 2003), --Muse , rock 3
('By the Way', 2002), --Red Hot Chili Peppers, rock 4
('Thriller', 1982), --Michael Jackson, pop 5
('Confessions on a Dance Floor', 2005), --Madonna, pop 6
('Ray of Light', 1998), --Madonna, pop 7
('Recovery', 2010), --Eminen, rap 8
('What A Wonderful World', 1968), --Louis Armstrong, jazz 9
('The Great Twenty-Eight', 1982); --Chuck Berry, rocknroll 10

INSERT INTO albums_artists --!!!!!!!!!!
VALUES
	(1, 10), --artist_id, album_id 
	(2, 1),
	(3, 2),
	(4, 3),
	(5, 4),
	(6, 5),
	(7, 6),
	(7, 7),
	(8, 8),
	(9, 9);

insert into tracks (album_id, track_title, duration)
values
(1, 'No More', '00:02:34'), --Elvis Presley, rocknroll 1
(2, 'Great Balls of Fire', '00:02:00'), --Jerry Lee Lewis, rocknroll 2
(3, 'Hysteria', '00:02:34'), --Muse , rock 3
(4, 'By the Way', '00:02:16'), --Red Hot Chili Peppers, rock 4
(5, 'Billie Jean', '00:04:02'), --Michael Jackson, pop 5
(5, 'Beat It', '00:03:34'), --Michael Jackson, pop 5
(6, 'Sorry', '00:02:38'), --Madonna, pop 6
(7, 'Nothing Really Matters', '00:02:50'), --Madonna, pop 7
(7, 'Candy Perfume Girl', '00:02:48'), --Madonna, pop 7
(7, 'Swim', '00:03:00'), --Madonna, pop 7
(8, 'Cold Wind Blows', '00:03:03'), --Eminen, rap 8
(8, 'Talkin 2 Myself', '00:02:13'), --Eminen, rap 8
(8, 'On Fire', '00:02:04'), --Eminen, rap 8
(9, 'Cabaret', '00:02:46'), --Louis Armstrong, jazz 9
(9, 'What a Wonderful World', '00:02:16'); --Louis Armstrong, jazz 9
(10, 'Johnny B. Goode', '00:02:40'); --Chuck Berry, rocknroll 10

insert into collection (collection_title, collection_year)
values
('Top hits vol.1', 2015),
('Top hits vol.2', 2016),
('Top hits vol.3', 2017),
('Top hits vol.4', 2018),
('Top hits vol.5', 2019),
('Top hits vol.6', 2020),
('Top hits vol.7', 2021),
('Top hits vol.8', 2022);

insert into track_col
values
(1, 1), --tarck_id, collection_id
(1, 4),
(1, 6),
(2, 2),
(2, 3),
(3, 5),
(3, 8),
(4, 2),
(4, 5),
(5, 1),
(5, 7),
(6, 1),
(6, 4),
(6, 8),
(7, 4),
(8, 8),
(8, 2),
(8, 6),
(9, 6),
(9, 2),
(9, 3),
(10, 1),
(11, 4),
(11, 7),
(12, 3),
(13, 2),
(14, 1),
(14, 8),
(15, 6),
(15, 2);
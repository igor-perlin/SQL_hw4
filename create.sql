CREATE TABLE IF NOT EXISTS Genre (
	Genre_ID SERIAL PRIMARY KEY,
	Genre_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	Artist_ID SERIAL PRIMARY KEY,
	artist_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_artists (
	Genre_ID INTEGER REFERENCES Genre(Genre_ID),
	Artist_ID INTEGER REFERENCES Artist(Artist_ID),
	CONSTRAINT pk_genres_artists PRIMARY KEY (Genre_ID, Artist_ID)
);

CREATE TABLE IF NOT EXISTS Album (
	Album_ID SERIAL PRIMARY KEY,
	album_title VARCHAR(100) NOT NULL,
	album_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS albums_artists (
	Artist_ID INTEGER REFERENCES Artist(Artist_ID),
	Album_ID INTEGER REFERENCES Album(Album_ID),
	CONSTRAINT pk_albums_artists PRIMARY KEY (Artist_ID, Album_ID)
);

CREATE TABLE IF NOT EXISTS Tracks (
	Track_id SERIAL PRIMARY KEY,
	Album_id INTEGER REFERENCES Album(Album_id),
	track_title VARCHAR(100) NOT NULL,
	duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	Collection_ID SERIAL PRIMARY KEY,
	collection_title VARCHAR(100) NOT NULL,
	collection_year INTEGER NOT null
);

CREATE TABLE IF NOT EXISTS Track_col (
	Track_id INTEGER REFERENCES Tracks(Track_id),
	Collection_ID INTEGER REFERENCES Collection(Collection_ID),
	CONSTRAINT pk_Track_col PRIMARY KEY (Track_id, Collection_ID)
);
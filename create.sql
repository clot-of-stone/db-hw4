CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_genres (
	id SERIAL,
	performer_id INTEGER REFERENCES performers(id),
	genre_id INTEGER REFERENCES genres(id),
	CONSTRAINT performer_genre_pk PRIMARY KEY (performer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	release_year SMALLINT NOT NULL,
	CHECK (release_year > 1800)
);

CREATE TABLE IF NOT EXISTS performers_albums (
	id SERIAL,
	performer_id INTEGER REFERENCES performers(id),
	album_id INTEGER REFERENCES albums(id),
	CONSTRAINT performer_album_pk PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	run INTERVAL MINUTE TO SECOND NOT NULL,
	CHECK (run < '99:59'),
	in_album_id INTEGER NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS songsters (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	release_year SMALLINT NOT NULL,
	CHECK (release_year > 1800)
);

CREATE TABLE IF NOT EXISTS songsters_tracks (
	id SERIAL,
	songster_id INTEGER REFERENCES songsters(id),
	track_id INTEGER REFERENCES tracks(id),
	CONSTRAINT songster_track_pk PRIMARY KEY (songster_id, track_id)
);

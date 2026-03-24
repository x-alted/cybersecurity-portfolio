CREATE DATABASE music_db;
USE music_db;

CREATE TABLE Label (
	label_id VARCHAR(10) PRIMARY KEY,
	label_name VARCHAR(50) NOT NULL,
	years_active VARCHAR(50) NOT NULL,
	ceo_name VARCHAR(50) NOT NULL,
	parent_company VARCHAR(50),
	label_country VARCHAR(25)
);

CREATE TABLE Subgenre (
	subgenre_id VARCHAR(10) PRIMARY KEY,
	subgenre_name VARCHAR(100) NOT NULL,
	subgenre_description VARCHAR(150),
	subgenre_decade_of_origin YEAR
);

CREATE TABLE Genre (
	genre_id VARCHAR(10) PRIMARY KEY,
	genre_name VARCHAR(100) NOT NULL,
	genre_description TEXT,
	decade_of_origin YEAR,
    subgenre_id VARCHAR(10)
    );
ALTER TABLE Genre
	ADD CONSTRAINT subgenre_genre
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id);
    
CREATE TABLE Artist (
	artist_id VARCHAR(10) PRIMARY KEY,
	artist_name VARCHAR(100) NOT NULL,
	birth_name VARCHAR(100) NOT NULL,
	date_of_birth DATE,
	years_active VARCHAR(50) NOT NULL,
	country_of_origin VARCHAR(50),
	genre_id VARCHAR(10),
	inspirations TEXT,
	influenced TEXT,
	most_noted_accolade VARCHAR(255)
);
ALTER TABLE Artist
	ADD CONSTRAINT fk_artist_genre
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
    
CREATE TABLE Band (
	band_id VARCHAR(10) PRIMARY KEY,
	band_name VARCHAR(100) NOT NULL,
	bandmember1_name VARCHAR(100) NOT NULL,
	bandmember2_name  VARCHAR(100) NOT NULL,
	bandmember3_name  VARCHAR(100),
	bandmember4_name  VARCHAR(100),
	bandmember5_name  VARCHAR(100),
	years_active VARCHAR(100) NOT NULL,
	genre_id VARCHAR(10) NOT NULL,
	country_of_origin VARCHAR(100),
	inspirations TEXT,
	influenced TEXT,
	most_noted_accolade VARCHAR(255)
);
ALTER TABLE Band
	ADD CONSTRAINT fk_band_genre
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
    
CREATE TABLE Producer (
	producer_id VARCHAR(10) PRIMARY KEY,
	producer_name VARCHAR(50) NOT NULL,
	date_of_birth DATE,
	years_active VARCHAR(25),
	genre_id VARCHAR(10) NOT NULL,
	known_works TEXT
);
ALTER TABLE Producer
	ADD CONSTRAINT fk_producer_genre
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);

CREATE TABLE Album (
	album_id VARCHAR(10) PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	genre_id VARCHAR(10) NOT NULL,
	artist_id VARCHAR(10),
	band_id VARCHAR(10),
    label_id VARCHAR(25),
	release_date DATE NOT NULL,
	country_of_origin VARCHAR(50) NOT NULL,
	duration_time TIME NOT NULL
);
ALTER TABLE Album
	ADD CONSTRAINT fk_album_artist
	FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
	ADD CONSTRAINT fk_album_band
	FOREIGN KEY (band_id) REFERENCES Band(band_id),
	ADD CONSTRAINT fk_album_genre
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id),
	ADD CONSTRAINT fk_album_label
	FOREIGN KEY (label_id) REFERENCES Label(label_id);
    
CREATE TABLE Track (
	track_id VARCHAR(10) PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	artist_id VARCHAR(10),
	band_id VARCHAR(10),
	album_id VARCHAR(10) NOT NULL,
	genre_id VARCHAR(10) NOT NULL,
    label_id VARCHAR(20) NOT NULL, 
	isrc VARCHAR(20) NOT NULL,
	release_date DATE NOT NULL,
	duration_time TIME NOT NULL
);
ALTER TABLE Track
	ADD CONSTRAINT fk_track_artist
	FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
	ADD CONSTRAINT fk_track_band
	FOREIGN KEY (band_id) REFERENCES Band(band_id),
	ADD CONSTRAINT fk_track_album
	FOREIGN KEY (album_id) REFERENCES Album(album_id),
	ADD CONSTRAINT fk_track_genre
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id),
	ADD CONSTRAINT fk_track_label
    FOREIGN KEY (label_id) REFERENCES Label(label_id);
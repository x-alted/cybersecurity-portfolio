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
    subgenre_id VARCHAR(10),
	genre_description TEXT,
	decade_of_origin YEAR
);
ALTER TABLE Genre
	ADD CONSTRAINT fk_subgenre_genre
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id); 
CREATE TABLE Subgenre_Genre (
	subgenre_id VARCHAR(10),
	genre_id VARCHAR(10),
	PRIMARY KEY (subgenre_id, genre_id),
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id),
	FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
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
CREATE TABLE Artist_Subgenre (
	artist_id VARCHAR(10),
	subgenre_id VARCHAR(10),
	PRIMARY KEY (artist_id, subgenre_id),
	FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id)
);
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
CREATE TABLE Band_Subgenre (
	band_id VARCHAR(10),
	subgenre_id VARCHAR(10),
	PRIMARY KEY (band_id, subgenre_id),
	FOREIGN KEY (band_id) REFERENCES Band(band_id),
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id)
);
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
CREATE TABLE Album_Producer (
	album_id VARCHAR(10),
	producer_id VARCHAR(10),
	PRIMARY KEY (album_id, producer_id),
	FOREIGN KEY (album_id) REFERENCES Album(album_id),
	FOREIGN KEY (producer_id) REFERENCES Producer(producer_id)
);
CREATE TABLE Album_Subgenre (
	album_id VARCHAR(10),
	subgenre_id VARCHAR(10),
	PRIMARY KEY (album_id, subgenre_id),
	FOREIGN KEY (album_id) REFERENCES Album(album_id),
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id)
);
CREATE TABLE Track (
	track_id VARCHAR(10) PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	artist_id VARCHAR(10),
	band_id VARCHAR(10),
	album_id VARCHAR(10) NOT NULL,
	genre_id VARCHAR(10) NOT NULL,
    label_id VARCHAR(20), 
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
CREATE TABLE Track_Producer (
	track_id VARCHAR(10),
	producer_id VARCHAR(10),
	PRIMARY KEY (track_id, producer_id),
	FOREIGN KEY (track_id) REFERENCES Track(track_id),
	FOREIGN KEY (producer_id) REFERENCES Producer(producer_id)
);
CREATE TABLE Track_Subgenre (
	track_id VARCHAR(10),
	subgenre_id VARCHAR(10),
	PRIMARY KEY (track_id, subgenre_id),
	FOREIGN KEY (track_id) REFERENCES Track(track_id),
	FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id)
);
INSERT INTO Subgenre (subgenre_id, subgenre_name, subgenre_description, subgenre_decade_of_origin)
VALUES
('SGEN01','Jazz Fusion','A blend of jazz and rock instruments.','1960'),
('SGEN02','Glam Rock','A dramatic, flamboyant version of rock.','1960'),
('SGEN03','Experimental Rock','Rock music that challenges standards with unconventional sounds.','1960'),
('SGEN04','Conscious Hip Hop','Hip hop music that focuses on social issues and activism.','1980'),
('SGEN05','Jazz Rap','Hip hop that incorporates jazz rhythms and instrumentation.','1990'),
('SGEN06','Neo-Soul','A blend of soul, jazz, and R&B with introspective lyrical themes.','1990'),
('SGEN07','Intelligent Dance Music','Electronic music with experimental, complex arrangements.','1990'),
('SGEN08','Ambient Techno','Electronic music blending atmospheric sounds with techno.','1990'),
('SGEN09','Hardcore Rap','Aggressive hip hop with intense lyricism.','1990'),
('SGEN10','Horrorcore','Hip hop themed around horror, with dark, slasher-inspired lyrics.','1990'),
('SGEN11','Progressive Rock','Rock with complex arrangements and evolving compositions.','1960'),
('SGEN12','Alternative Hip Hop','Hip hop incorporating elements from other genres and experimental sounds.','1990'),
('SGEN13','Experimental Hip Hop','Avant-garde hip hop with non-traditional structures.','2000'),
('SGEN14','Trap','Hip hop with heavy bass and fast-paced hi-hat cymbals.','2000'),
('SGEN15','Alternative R&B','Progressive R&B blending traditional sounds with electronic or indie influences.','2010'),
('SGEN16','Synthwave','Electronic music inspired by 1980s film soundtracks.','2000'),
('SGEN17','Electropop','Pop music featuring electronic sounds and synthesizers.','1980'),
('SGEN18','Dubstep','Electronic music with wobbling basslines and dub-inspired percussion.','2000'),
('SGEN19','Brostep','A subgenre of dubstep with more aggressive, distorted basslines.','2010'),
('SGEN20','House','Electronic music with a repetitive 4/4 beat and synthesized melodies.','1980'),
('SGEN21','Dark Pop','Pop music with melancholic themes and darker tones.','2010'),
('SGEN22','Indie Pop','Pop music with an unconventional and often experimental production style.','1980'),
('SGEN23','Progressive House','House music focusing on complex, evolving layers of melody and rhythm.','2000'),
('SGEN24','Electro House','House music with heavy basslines and louder instrumentation.','2000'),
('SGEN25','Art Pop','Pop music that incorporates experimental and conceptual elements.','1970'),
('SGEN26','Trip Hop','A blend of hip hop and electronic music with a laid-back, atmospheric vibe.','1990'),
('SGEN27','Bebop','Fast-paced jazz with complex chord progressions.','1940'),
('SGEN28','Modal Jazz','Jazz using musical modes instead of standard chord progressions.','1950'),
('SGEN29','Gangsta Rap','Hip hop focusing on urban life, crime, and street culture.','1980'),
('SGEN30','Synthpop','Pop music featuring synthesizers and electronic sounds.','1980'),
('SGEN31','Industrial Rock','Rock music incorporating mechanical, industrial sounds.','1980'),
('SGEN32','French House','Electronic house music blending funk and disco elements.','1990'),
('SGEN33','Dream Pop','Atmospheric rock and pop with a focus on ethereal soundscapes.','1980'),
('SGEN34','Psychedelic Pop','Pop music with surreal, atmospheric sounds.','1960'),
('SGEN35','Psychedelic Rock','Rock with extended instrumental sections and surreal themes.','1960'),
('SGEN36','Experimental Metal','Metal music with unconventional structures and sounds.','1990'),
('SGEN37','Southern Hip Hop','Hip hop with slower tempos and unique production techniques from Southern US.','1990'),
('SGEN38','Funk Rap','Hip hop incorporating funk rhythms and grooves.','1990');
INSERT INTO Genre (genre_id, genre_name, genre_description, decade_of_origin)
VALUES
('GENRE01','Rock', 'Characterized by its use of rhythm and electric guitars.', '1950'),
('GENRE02','Hip Hop','Utilizing rhythmic music and transformative samples to accentuate a personality who makes use of poetic and stylized vocal deliveries.','1970'),
('GENRE03','Electronic','Produced using computer technology and digitized instruments.','1970'),
('GENRE04','Pop','Melodically driven with broad audience appeal.','1950'),
('GENRE05','Jazz','Known for its use of brass instruments, improvisation, swing, and syncopation.','1920'),
('GENRE06', 'Soul/R&B','A blend of jazz, blues, and gospel with a focus on emotional expression.', '1950'),
('GENRE07','Funk','Focused on groove and being easy to dance to. Often features syncopated and complex basslines and brass instruments.','1960'),
('GENRE08','Experimental','Music that breaks conventional ideas of sound and structuring.','1960'),
('GENRE09', 'Metal', 'Heavier than rock music with larger, more complex guitar riffs. Features dark themes and aggressive vocals.', '1970');
INSERT INTO Subgenre_Genre (subgenre_id, genre_id)
VALUES
('SGEN01', 'GENRE05'), -- S: Jazz Fusion             G: Jazz
('SGEN01', 'GENRE01'), -- S: Jazz Fusion             G: Rock
('SGEN01', 'GENRE08'), -- S: Jazz Fusion             G: Experimental
('SGEN02', 'GENRE01'), -- S: Glam Rock               G: Rock
('SGEN03', 'GENRE08'), -- S: Experimental Rock       G: Experimental
('SGEN03', 'GENRE01'), -- S: Experimental Rock       G: Rock
('SGEN04', 'GENRE02'), -- S: Conscious Hip Hop       G: Hip Hop
('SGEN05', 'GENRE05'), -- S: Jazz Rap                G: Jazz
('SGEN05', 'GENRE02'), -- S: Jazz Rap			     G: Hip Hop
('SGEN06', 'GENRE06'), -- S: Neo Soul                G: Soul/R&B
('SGEN06', 'GENRE08'), -- S: Neo Soul                G: Experimental
('SGEN07', 'GENRE03'), -- S: Intelligent Dance Music G: Electronic
('SGEN07', 'GENRE08'), -- S: Intelligent Dance Music G: Experimental
('SGEN08', 'GENRE03'), -- S: Ambient Techno          G: Electronic
('SGEN08', 'GENRE08'), -- S: Ambient Techno          G: Experimental
('SGEN09', 'GENRE02'), -- S: Hardcore Rap            G: Hip Hop
('SGEN10', 'GENRE02'), -- S: Horrorcore              G: Hip Hop
('SGEN11', 'GENRE01'), -- S: Progressive Rock        G: Rock
('SGEN11', 'GENRE08'), -- S: Progressive Rock        G: Experimental
('SGEN12', 'GENRE02'), -- S: Alternative Hip Hop     G: Hip Hop 
('SGEN13', 'GENRE08'), -- S: Experimental Hip Hop    G: Experimental
('SGEN13', 'GENRE02'), -- S: Experimental Hip Hop    G: Hip Hop
('SGEN14', 'GENRE02'), -- S: Trap                    G: Hip Hop
('SGEN15', 'GENRE04'), -- S: Alternative R&B         G: Pop
('SGEN15', 'GENRE06'), -- S: Alternative R&B         G: Soul/R&B
('SGEN16', 'GENRE03'), -- S: Synthwave               G: Electronic
('SGEN16', 'GENRE04'), -- S: Synthwave               G: Pop
('SGEN17', 'GENRE03'), -- S: Electropop              G: Electronic
('SGEN17', 'GENRE04'), -- S: Electropop              G: Pop
('SGEN18', 'GENRE03'), -- S: Dubstep                 G: Electronic
('SGEN18', 'GENRE08'), -- S: Dubstep                 G: Experimental
('SGEN19', 'GENRE03'), -- S: Brostep                 G: Electronic
('SGEN20', 'GENRE03'), -- S: House                   G: Electronic
('SGEN21', 'GENRE04'), -- S: Dark Pop                G: Pop
('SGEN22', 'GENRE04'), -- S: Indie Pop               G: Pop
('SGEN23', 'GENRE03'), -- S: Progressive House       G: Electronic
('SGEN24', 'GENRE03'), -- S: Electro House           G: Electronic
('SGEN25', 'GENRE04'), -- S: Art Pop                 G: Pop
('SGEN26', 'GENRE02'), -- S: Trip Hop                G: Hip Hop
('SGEN26', 'GENRE03'), -- S: Trip Hop                G: Electronic
('SGEN27', 'GENRE05'), -- S: Bebop                   G: Jazz
('SGEN28', 'GENRE05'), -- S: Modal Jazz              G: Jazz
('SGEN29', 'GENRE02'), -- S: Gangsta Rap             G: Hip Hop
('SGEN30', 'GENRE04'), -- S: Synthpop                G: Pop
('SGEN30', 'GENRE03'), -- S: Synthpop                G: Electronic
('SGEN31', 'GENRE09'), -- S: Industrial Rock         G: Metal
('SGEN31', 'GENRE08'), -- S: Industrial Rock         G: Experimental
('SGEN32', 'GENRE03'), -- S: French House            G: Electronic
('SGEN33', 'GENRE04'), -- S: Dream Pop               G: Pop
('SGEN33', 'GENRE08'), -- S: Dream Pop               G: Experimental
('SGEN34', 'GENRE04'), -- S: Psychedelic Pop         G: Pop
('SGEN35', 'GENRE01'), -- S: Psychedelic Rock        G: Rock
('SGEN35', 'GENRE08'), -- S: Psychedelic Rock        G: Experimental
('SGEN36', 'GENRE09'), -- S: Experimental Metal      G: Metal
('SGEN36', 'GENRE08'), -- S: Experimental Metal      G: Experimental
('SGEN37', 'GENRE02'), -- S: Southern Hip Hop        G: Hip Hop 
('SGEN38', 'GENRE02'), -- S: Funk Rap                G: Hip Hop
('SGEN38', 'GENRE07'); -- S: Funk Rap                G: Funk
INSERT INTO Producer (producer_id, producer_name, date_of_birth, years_active, genre_id, known_works)
VALUES
('PROD01', 'Tony Visconti', '1944-04-24', '1960 - Present','GENRE01', 'Blackstar, Heroes'),
('PROD02', 'David Bowie', '1947-01-08', '1962 - 2016','GENRE01', 'Blackstar, Heroes'),
('PROD03', 'Dr. Dre', '1965-02-18', '1985 - Present','GENRE02', 'To Pimp a Butterfly, The Chronic, The Eminem Show'),
('PROD04', 'Sounwave', '1985-08-16', '2008 - Present','GENRE02', 'To Pimp a Butterfly, DAMN.'),
('PROD05', 'Thundercat', '1984-10-19', '2000 - Present','GENRE02', 'To Pimp a Butterfly, Drunk'),
('PROD06', 'Flying Lotus', '1983-10-07', '2000 - Present','GENRE02', 'To Pimp a Butterfly, Cosmogramma'),
('PROD07', 'Aphex Twin', '1971-08-18','1985 - Present','GENRE03', 'Selected Ambient Works 85-92, Drukqs'),
('PROD08', 'Eminem', '1972-10-17','1980 - Present','GENRE02', 'The Eminem Show, Infinite'),
('PROD09', 'Jeff Bass', '1961-05-16','1980 - Present','GENRE02', 'The Eminem Show, Curtain Call'),
('PROD10', 'Frank Zappa', '1940-12-21','1962 - 1993','GENRE01', 'Hot Rats, Freak Out!'),
('PROD11', 'Paul White', '1984-07-08','2005 - Present','GENRE02', 'Atrocity Exhibition, U Know What I’m Sayin?'),
('PROD12', 'The Alchemist', '1977-10-25','1993 - Present','GENRE02', 'Atrocity Exhibition, Alfredo'),
('PROD13', 'Black Milk', '1983-08-14','2002 - Present','GENRE02', 'Atrocity Exhibition, No Poison No Paradise'),
('PROD14', 'Max Martin', '1971-02-26','1989 - Present','GENRE04', 'After Hours, 1989'),
('PROD15', 'Metro Boomin', '1993-09-16','2010 - Present','GENRE02', 'After Hours, NOT ALL HEROES WEAR CAPES'),
('PROD16', 'Illangelo', '1983-07-12', '2010 - Present','GENRE04', 'After Hours, Trilogy'),
('PROD17', 'Skrillex', '1988-01-15', '2004 - Present','GENRE03', 'Quest for Fire, Bangarang'),
('PROD18', 'Fred again..', '1993-07-19', '2014 - Present','GENRE03', 'Quest for Fire, Actual Life'),
('PROD19', 'Four Tet', '1978-09-02', '1996 - Present','GENRE03', 'Quest for Fire, New Energy'),
('PROD20', 'Finneas O''Connell', '1997-07-30', '2013 - Present','GENRE04', 'Hit Me Hard and Soft, Happier Than Ever'),
('PROD21', 'Billie Eilish', '2001-12-18','2015 - Present','GENRE04', 'Hit Me Hard and Soft, Happier Than Ever'),
('PROD22', 'A. G. Cook', '1990-08-23','2010 - Present','GENRE04', 'brat., Pop 2'),
('PROD23', 'MF DOOM', '1971-01-09','1988 - 2020','GENRE02', 'Madvillainy, MM..Food'),
('PROD24', 'Madlib', '1973-10-24','1993 - Present','GENRE02', 'Madvillainy, The Unseen'),
('PROD25', 'deadmau5', '1981-01-05','1998 - Present','GENRE03', 'Random Album Title, For Lack of a Better Name'),
('PROD26', 'Nellee Hooper','1963-03-15','1985 - Present','GENRE04', 'Homogenic, Dummy'),
('PROD27', 'Mark Bell','1971-04-21','1988 - 2014','GENRE03', 'Homogenic, LFO'),
('PROD28', 'Björk','1965-11-21','1977 - Present','GENRE04', 'Homogenic, Vulnicura'),
('PROD29', 'Teo Macero','1925-10-30','1953 - 2008','GENRE05', 'Kind of Blue, Bitches Brew'),
('PROD30', 'Johnny J','1969-08-28','1989 - 2008','GENRE02', 'All Eyez on Me, Me Against the World'),
('PROD31', 'DJ Quik','1970-01-18','1987 - Present','GENRE02', 'All Eyez on Me, Safe + Sound'),
('PROD32', 'Ralf Hütter','1946-08-20','1969 - Present','GENRE03', 'The Man Machine, Computer World'),
('PROD33', 'Florian Schneider','1947-04-07','1968 - 2008','GENRE03','The Man Machine, Autobahn'),
('PROD34', 'Thomas Bangalter','1975-01-03','1993 - 2021','GENRE03','Discovery, Random Access Memories'),
('PROD35', 'Guy-Manuel de Homem-Christo','1974-02-08','1993 - 2021','GENRE03', 'Discovery, Homework'),
('PROD36', 'John Congleton', '1977-04-05','2000 - Present','GENRE04', 'Blue Rev, St. Vincent'),
('PROD37', 'Ben Allen', '1977-08-14','2000 - Present','GENRE04', 'Merriweather Post Pavilion, Halcyon Digest'),
('PROD38', 'Animal Collective',NULL,'2000 - Present','GENRE04', 'Merriweather Post Pavilion, Sung Tongs'),
('PROD39', 'George Martin','1926-01-03','1950 - 2016','GENRE01','Sgt. Pepper''s Lonely Hearts Club Band, Revolver'),
('PROD40', 'Brian Wilson','1942-06-20','1961 - Present','GENRE01', 'Pet Sounds, Smile'),
('PROD41', 'Radiohead',NULL,'1985 - Present','GENRE01', 'Kid A, OK Computer'),
('PROD42', 'Q-Tip','1970-04-10', '1988 - Present','GENRE02', 'The Low End Theory, Midnight Marauders'),
('PROD43', 'Skeff Anselm',NULL,'1970 - Present','GENRE02', 'The Low End Theory, 3 Feet High and Rising'),
('PROD44', 'Trent Reznor','1965-05-17','1988 - Present', 'GENRE01', 'The Downward Spiral, Year Zero'),
('PROD45', 'Flood','1960-08-16', '1980 - Present', 'GENRE01', 'The Downward Spiral, Violator'),
('PROD46', 'Rick Rubin','1963-03-10', '1983 - Present', 'GENRE03', 'Toxicity, Reign in Blood'),
('PROD47', 'Daron Malakian','1975-07-18', '1994 - Present', 'GENRE06', 'Toxicity, Hypnotize'),
('PROD48', 'Organized Noize',NULL,'1992 - Present', 'GENRE02', 'Stankonia, Southernplayalisticadillacmuzik'),
('PROD49', 'Earthtone III',NULL,'1992 - Present', 'GENRE02', 'Stankonia, Aquemini'),
('PROD50', 'Andy Morin','1985-09-16', '2000 - Present', 'GENRE03', 'The Money Store, No Love Deep Web'),
('PROD51', 'Zach Hill','1979-12-28', '2000 - Present', 'GENRE03', 'The Money Store, Year of the Snitch'),
('PROD52', 'Daveed Diggs','1982-01-24', '2010 - Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD53', 'William Hutson','1981-05-07', '2010 - Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD54', 'Jonathan Snipes','1980-01-05', '2010 - Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD55', 'George Clinton','1941-07-22', '1960 - Present', 'GENRE06', 'Maggot Brain, Cosmic Slop'),
('PROD56', 'Eddie Hazel','1950-04-10', '1967 - 1992', 'GENRE06', 'Maggot Brain, Standing on the Verge of Getting It On'),
('PROD57', 'Thurston Moore','1958-07-25', '1977 - Present', 'GENRE01', 'Daydream Nation, Goo'),
('PROD58', 'Kim Gordon','1953-04-28','1981 - Present', 'GENRE01', 'Daydream Nation, Washing Machine'),
('PROD59', 'Nick Sansano','1960-09-22', '1985 - Present', 'GENRE01', 'Daydream Nation, The Cult'),
('PROD60', 'Pharrell Williams','1973-04-5', '1992 - Present', 'GENRE02', 'Drop It Like It''s Hot, Happy, Hollaback Girl'),
('PROD61', 'Molly Rankin','1987-06-27', '2007 - Present', 'GENRE04', 'Marry Me Archie, Adult Diversion, Belinda Says'),
('PROD62', 'Shawn Everett','1973-07-6', '1996 - Present', 'GENRE04', 'Beyonce''s Cowboy Carter');
INSERT INTO Artist (artist_id, artist_name, birth_name, date_of_birth, years_active, genre_id, country_of_origin, inspirations, influenced, most_noted_accolade)
VALUES 
('ARTIST01','David Bowie','David Robert Jones','1947-01-08','1962-2016','GENRE01', 'UK', 'Elvis Presley, Lou Reed, The Beatles, Kraftwerk, Kendrick Lamar', 'Radiohead, Elton John, The Weeknd, Charli XCX', 'Grammy Lifetime Achievement Award (2016)'),
('ARTIST02','Kendrick Lamar','Kendrick Lamar Duckworth','1987-06-17','2003 - Present','GENRE02', 'US', 'Tupac Shakur, Dr. Dre, Prince, Eminem', 'J. Cole, Chance the Rapper, Joey Bada$$', 'Pulitzer Prize for Music (2018) for DAMN.'),
('ARTIST03','Aphex Twin','Richard David James','1971-08-18','1985 - Present','GENRE03', 'Ireland', 'Kraftwerk, Brian Eno', 'Radiohead, Skrillex, deadmau5', 'Grammy Award for Best Dance/Electronic Album (2015) for Syro'),
('ARTIST04','Eminem','Marshall Bruce Mathers III','1972-10-17','1996 - Present','GENRE02', 'US', 'Tupac Shakur, The Notorious B.I.G., Dr. Dre', 'Kendrick Lamar, Logic, J. Cole', 'Academy Award for Best Original Song (2003) for Lose Yourself'),
('ARTIST05','Frank Zappa','Frank Vincent Zappa','1940-12-21','1962 - 1993','GENRE01', 'US', 'Edgard Varèse, Igor Stravinsky', 'Captain Beefheart and His Magic Band, System of a Down, Primus', 'Rock & Roll Hall of Fame Inductee (2017)'),
('ARTIST06','Danny Brown','Daniel Dewan Sewell','1981-03-16','2003 - Present','GENRE02','US','Roy Ayers, A Tribe Called Quest, Eminem, Joy Division','JPEGMAFIA, BROCKHAMPTON, Zelooperz','Libera Award for Best Hip Hop/Rap Album (2020) for U Know What Im Sayin?'),
('ARTIST07','The Weeknd','Abel Makkonen Tesfaye','1990-02-16','2010 - Present','GENRE04', 'Canada', 'Michael Jackson, Prince, Deftones, David Bowie', 'Billie Eilish, Post Malone, Alessia Cara', 'Guinness World Record for Worlds Most Popular Artist (2023)'),
('ARTIST08','Skrillex','Sonny John Moore','1988-01-15','2004 - Present','GENRE03', 'US', 'Aphex Twin, Daft Punk, Kraftwerk', 'Porter Robinson, Fred Again, Zedd', 'Grammy Award for Best Dance Recording (2012) for Scary Monsters and Nice Sprites'),
('ARTIST09','Billie Eilish','Billie Eilish Pirate Baird O''Connell','2001-12-18','2015 - Present','GENRE04', 'US','Tyler, The Creator, Radiohead, Kendrick Lamar, Lana Del Rey','Olivia Rodrigo, Tate McRae', 'Guinness World Record for Youngest Artist to Win All Four Grammy Award General Field Categories (2020)'),
('ARTIST10','Charli XCX','Charlotte Emma Aitchison','1992-08-02','2008 - Present','GENRE04', 'UK', 'David Bowie, Kate Bush, Britney Spears, Björk','SOPHIE, Caroline Polachek, Yaeji', 'Variety Hitmaker Award for Innovation (2020)'),
('ARTIST11','MF DOOM','Dumile Daniel Thompson','1971-01-09','1988 - 2020','GENRE02', 'UK', 'Nas, A Tribe Called Quest, Pete Rock, Madlib','Gorillaz, Tyler, The Creator, Lupe Fiasco', 'MTV Left Field Woodie Award (2007) for Madvillainy'),
('ARTIST12','deadmau5','Joel Thomas Zimmerman','1971-01-08','1998 - Present','GENRE03', 'Canada', 'Aphex Twin, Daft Punk, Kraftwerk, Radiohead','Rezz, Marshmello', 'International Dance Music Award for Best Artist (2010)'),
('ARTIST13','Björk','Björk Guðmundsdóttir','1965-11-21','1977 - Present','GENRE04', 'Iceland', 'Kate Bush, Cocteau Twins, Aphex Twin, Joni Mitchell','Radiohead, Madonna, Charli XCX, Travis Scott', 'Icelandic state Order of the Falcon (1997)'),
('ARTIST14','Miles Davis','Miles Dewey Davis III','1926-05-26','1944 - 1991','GENRE05', 'US','Charlie Parker, Dizzy Gillespie','Herbie Hancock, John Coltrane, Jimi Hendrix', 'Grammy Lifetime Achievement Award (1990)'),
('ARTIST15','Tupac Shakur','Lesane Parish Crooks','1971-09-13','1989 - 1996','GENRE02', 'US', 'Dr. Dre, Public Enemy, George Clinton, Prince','Eminem, Lil Wayne, Kendrick Lamar', 'Rock & Roll Hall of Fame Inductee (2017)');
INSERT INTO Band (band_id, band_name, bandmember1_name, bandmember2_name, bandmember3_name, bandmember4_name, bandmember5_name, years_active, genre_id, country_of_origin, inspirations, influenced, most_noted_accolade)
VALUES 
('BAND01','Kraftwerk','Florian Schneider','Ralf Hütter','Henning Schmitz','Falk Grieffenhagen', 'Georg Dussick', '1970-present', 'GENRE03', 'Germany', 'The Beatles, Brian Eno', 'Daft Punk, Depeche Mode, Coldplay', 'Grammy Lifetime Achievement Award (2014)'),
('BAND02','Daft Punk','Thomas Bangalter','Guy-Manuel de Homem-Christo',NULL,NULL,NULL,'1993-2021', 'GENRE03', 'France', 'Kraftwerk, Aphex Twin', 'The Weeknd, Kanye West, Pharrell Williams','Grammy Award for Best Dance Recording (2009)'),
('BAND03','Alvvays','Molly Rankin', 'Kenny Hyslop','Alexandra MacPherson','Caitlin Dawson', NULL, '2011-present', 'GENRE04', 'Canada', 'The Smiths, My Bloody Valentine','Phoebe Bridgers, Best Coast','Juno Award for Breakthrough Group of the Year (2015)'),
('BAND04','Animal Collective','Avey Tare','Panda Bear','Geologist','Deakin',NULL,'2000-present', 'GENRE04', 'USA', 'The Beach Boys, Brian Wilson', 'MGMT, Fleet Foxes','Nominated for Grammy Award for Best Alternative Music Album (2009)'),
('BAND05','The Beatles','John Lennon','Paul McCartney','George Harrison','Ringo Starr', NULL, '1960-1970', 'GENRE01', 'UK', 'Buddy Holly, Chuck Berry', 'Oasis, Radiohead, Green Day','Grammy Lifetime Achievement Award (2014)'),
('BAND06','The Beach Boys','Brian Wilson','Mike Love','Carl Wilson','Dennis Wilson', NULL, '1961-present', 'GENRE01', 'USA', 'Chuck Berry, Phil Spector', 'Fleetwood Mac, The Killers','Rock and Roll Hall of Fame (1988)'),
('BAND07','Radiohead','Thom Yorke','Jonny Greenwood','Colin Greenwood','Ed O''Brien', NULL, '1995-present', 'GENRE01', 'UK', 'R.E.M., The Smiths', 'Coldplay, Muse, The 1975','Grammy Award for Best Alternative Music Album (1998)'),
('BAND08','A Tribe Called Quest','Q-Tip','Phife Dawg','Ali Shaheed Muhammad','Jarobi White', NULL, '1985-1998, 2006-2016', 'GENRE02', 'USA','George Clinton, Miles Davis','Kendrick Lamar, Childish Gambino', 'Grammy Award for Best Rap Album (2017)'),
('BAND09','Nine Inch Nails','Trent Reznor','Atticus Ross','Alessandro Cortini', 'Josh Freese', 'Robin Finck', '1988-present','GENRE09','USA','Kraftwerk, David Bowie', 'Marilyn Manson, Linkin Park', 'Grammy Award for Best Metal Performance (1996)'),
('BAND10','System of a Down','Serj Tankian','Daron Malakian','Shavo Odadjian', 'John Dolmayan', NULL, '1994-present', 'GENRE09','USA','Metallica, Slayer','Avenged Sevenfold, Linkin Park', 'Grammy Award for Best Hard Rock Performance (2006)'),
('BAND11','Outkast','André 3000','Big Boi', NULL, NULL, NULL,'1992-present','GENRE02', 'USA', 'George Clinton, Sly Stone', 'Kendrick Lamar, Childish Gambino','Grammy Award for Album of the Year (2004)'),
('BAND12','Death Grips','MC Ride','Zach Hill','Andy Morin', NULL, NULL, '2010-present', 'GENRE08', 'USA', 'Nirvana, The Smashing Pumpkins','JPEGMAFIA, Brockhampton','Nominated for MTV Video Music Award for Best Art Direction (2013)'),
('BAND13','Clipping','Daveed Diggs','William Hutson', 'Jonathan Snipes', NULL, NULL, '2010-present', 'GENRE02', 'USA', 'Kanye West, Death Grips','JPEGMAFIA, Black Midi','Nominated for Hugo Award for Best Dramatic Presentation (2020)'),
('BAND14','Funkadelic','George Clinton','Eddie Hazel', 'Billy Bass Nelson', 'Gary Shider', 'Bernie Worrell', '1968-present','GENRE07','USA','Parliament, Sly and the Family Stone','Prince, Red Hot Chili Peppers', 'Rock and Roll Hall of Fame Inductee (1997)'),
('BAND15','Sonic Youth','Thurston Moore','Kim Gordon', 'Lee Ranaldo', 'Steve Shelley', NULL, '1981-2011', 'GENRE01', 'USA','The Velvet Underground','Nirvana, Radiohead','Rock and Roll Hall of Fame (2018)');
INSERT INTO Album (album_id, album_name, artist_id, band_id, genre_id, release_date, country_of_origin, duration_time)
VALUES
('ALBUM01', 'Blackstar', 'ARTIST01', NULL, 'GENRE01', '2016-01-06', 'UK', '00:41:44'),
('ALBUM02', 'To Pimp a Butterfly', 'ARTIST02', NULL, 'GENRE02', '2015-03-15', 'US', '01:19:05'),
('ALBUM03', 'Selected Ambient Works 85-92', 'ARTIST03', NULL, 'GENRE03', '1992-02-12', 'Ireland', '01:14:22'),
('ALBUM04', 'The Eminem Show', 'ARTIST04', NULL, 'GENRE02', '2002-05-26', 'US', '01:17:20'),
('ALBUM05', 'Hot Rats', 'ARTIST05', NULL, 'GENRE01', '1969-10-10', 'US', '00:43:14'),
('ALBUM06', 'Atrocity Exhibition', 'ARTIST06', NULL, 'GENRE02', '2016-09-27', 'US', '00:46:57'),
('ALBUM07', 'After Hours', 'ARTIST07', NULL, 'GENRE04', '2020-03-20', 'Canada', '00:56:17'),
('ALBUM08', 'Quest for Fire', 'ARTIST08', NULL, 'GENRE03', '2023-02-17', 'US', '00:44:20'),
('ALBUM09', 'Hit Me Hard and Soft', 'ARTIST09', NULL, 'GENRE04', '2024-05-17', 'US', '00:43:45'),
('ALBUM10', 'brat.', 'ARTIST10', NULL, 'GENRE04', '2024-06-07', 'UK', '00:41:23'),
('ALBUM11', 'Madvillainy', 'ARTIST11', NULL, 'GENRE02', '2004-03-23', 'US', '00:46:24'),
('ALBUM12', 'Random Album Title', 'ARTIST12', NULL, 'GENRE03', '2008-09-02', 'Canada', '00:58:40'),
('ALBUM13', 'Homogenic', 'ARTIST13', NULL, 'GENRE04', '1997-09-22', 'Iceland', '00:43:42'),
('ALBUM14', 'Bitches Brew', 'ARTIST14', NULL, 'GENRE05', '1970-03-30', 'US', '01:33:57'),
('ALBUM15', 'All Eyez on Me', 'ARTIST15', NULL, 'GENRE02', '1996-02-13', 'US', '01:32:14'),
('ALBUM16', 'The Man Machine', NULL, 'BAND01', 'GENRE03', '1978-05-19', 'Germany', '00:36:26'),
('ALBUM17', 'Discovery', NULL, 'BAND02', 'GENRE03', '2001-03-12', 'France', '01:00:22'),
('ALBUM18', 'Blue Rev', NULL, 'BAND03', 'GENRE04', '2022-10-07', 'Canada', '00:39:32'),
('ALBUM19', 'Merriweather Post Pavilion', NULL, 'BAND04', 'GENRE04', '2009-01-06', 'US', '00:54:50'),
('ALBUM20', 'Sgt. Pepper''s Lonely Hearts Club Band', NULL, 'BAND05', 'GENRE01', '1967-05-26', 'UK', '00:39:52'),
('ALBUM21', 'Pet Sounds', NULL, 'BAND06', 'GENRE01', '1966-05-16', 'US', '00:35:57'),
('ALBUM22', 'Kid A', NULL, 'BAND07', 'GENRE01', '2000-10-02', 'UK', '00:49:57'),
('ALBUM23', 'The Low End Theory', NULL, 'BAND08', 'GENRE02', '1991-09-24', 'US', '00:48:38'),
('ALBUM24', 'The Downward Spiral', NULL, 'BAND09', 'GENRE09', '1994-03-08', 'US', '01:05:07'),
('ALBUM25', 'Toxicity', NULL, 'BAND10', 'GENRE09', '2001-09-04', 'US', '00:44:01'),
('ALBUM26', 'Stankonia', NULL, 'BAND11', 'GENRE02', '2000-10-31', 'US', '01:13:56'),
('ALBUM27', 'The Money Store', NULL, 'BAND12', 'GENRE08', '2012-04-24', 'US', '00:41:22'),
('ALBUM28', 'There Existed an Addiction to Blood', NULL, 'BAND13', 'GENRE02', '2019-10-18', 'US', '01:04:00'),
('ALBUM29', 'Maggot Brain', NULL, 'BAND14', 'GENRE06', '1971-07-12', 'US', '00:36:51'),
('ALBUM30', 'Daydream Nation', NULL, 'BAND15', 'GENRE01', '1988-10-18', 'US', '01:10:50');
INSERT INTO Track (track_id, track_name, artist_id, band_id, album_id, genre_id, isrc, release_date, duration_time)
VALUES
('TRACK01', 'Lazarus', 'ARTIST01', NULL, 'ALBUM01', 'GENRE01', 'USRF31500003', '2016-01-06', '00:06:22'),
('TRACK02', 'Alright', 'ARTIST02', NULL, 'ALBUM02', 'GENRE02', 'USUM71508090', '2015-03-15', '00:03:39'),
('TRACK03', 'Xtal', 'ARTIST03', NULL, 'ALBUM03', 'GENRE03', 'GBBPW0399102', '1992-02-12', '00:04:52'),
('TRACK04', 'Cleanin'' Out My Closet', 'ARTIST04', NULL, 'ALBUM04', 'GENRE02','USIR10211054', '2002-05-26', '00:04:57'),
('TRACK05', 'Peaches en Regalia', 'ARTIST05', NULL, 'ALBUM05', 'GENRE05', 'USRC16900145', '1969-10-10', '00:03:58'),
('TRACK06', 'Really Doe', 'ARTIST06', NULL, 'ALBUM06', 'GENRE02', 'USQX91602348', '2016-09-27', '00:05:19'),
('TRACK07', 'Blinding Lights', 'ARTIST07', NULL, 'ALBUM07', 'GENRE04', 'USUM71900764', '2020-03-20', '00:03:20'),
('TRACK08', 'XENA', 'ARTIST08', NULL, 'ALBUM08', 'GENRE03', 'USAT22300340', '2023-02-17', '00:04:21'),
('TRACK09', 'Apple', 'ARTIST09', NULL, 'ALBUM09', 'GENRE04', 'USAT22401350', '2024-05-17', '00:02:31'),
('TRACK10', 'Birds of a Feather', 'ARTIST10', NULL, 'ALBUM10', 'GENRE04', 'USUM72401994 ', '2024-06-07', '00:03:30'),
('TRACK11', 'Accordion', 'ARTIST11', NULL, 'ALBUM11', 'GENRE02', 'USUG10300539', '2004-03-23', '00:01:58'),
('TRACK12', 'Faxing Berlin', 'ARTIST12', NULL, 'ALBUM12', 'GENRE03', 'CAUM71201234', '2006-11-05', '00:08:02'),
('TRACK13', 'Bachelorette', 'ARTIST13', NULL, 'ALBUM13', 'GENRE04', 'GBUM71701045', '1997-09-22', '00:05:18'),
('TRACK14', 'Pharaoh’s Dance', 'ARTIST14', NULL, 'ALBUM14', 'GENRE05', 'USSM16900301', '1970-03-30', '00:20:06'),
('TRACK15', 'California Love', 'ARTIST15', NULL, 'ALBUM15', 'GENRE02', 'USDR19600035', '1996-02-13', '00:04:45'),
('TRACK16', 'The Robots', NULL, 'BAND01', 'ALBUM16', 'GENRE03', 'DEUM70701234', '1978-05-19', '00:06:12'),
('TRACK17', 'Harder, Better, Faster, Stronger', NULL, 'BAND02', 'ALBUM17', 'GENRE03','FRP39600023', '2001-03-12', '00:03:44'),
('TRACK18', 'Belinda Says', NULL, 'BAND03', 'ALBUM18', 'GENRE04', 'USUM72400312', '2022-10-07', '00:04:08'),
('TRACK19', 'My Girls', NULL, 'BAND04', 'ALBUM19', 'GENRE04','USDM70900115', '2009-01-06', '00:05:40'),
('TRACK20', 'Lucy in the Sky with Diamonds', NULL, 'BAND05', 'ALBUM20', 'GENRE01', 'GBAYE6700019', '1967-05-26', '00:03:28'),
('TRACK21', 'God Only Knows', NULL, 'BAND06', 'ALBUM21', 'GENRE01','USC360010013', '1966-05-16', '00:02:51'),
('TRACK22', 'Everything in Its Right Place', NULL, 'BAND07', 'ALBUM22', 'GENRE01', 'GBETR0000103', '2000-10-02', '00:04:11'),
('TRACK23', 'Scenario', NULL, 'BAND08', 'ALBUM23', 'GENRE02', 'USZM20500077', '1991-09-24', '00:04:10'),
('TRACK24', 'Closer', NULL, 'BAND09', 'ALBUM24', 'GENRE01', 'USIR29400034', '1994-03-08', '00:06:13'),
('TRACK25', 'Chop Suey!', NULL, 'BAND10', 'ALBUM25', 'GENRE06', 'USSM10113049', '2001-09-04', '00:03:30'),
('TRACK26', 'Ms. Jackson', NULL, 'BAND11', 'ALBUM26', 'GENRE02','USLF40000425', '2000-10-31', '00:04:30'),
('TRACK27', 'Get Got', NULL, 'BAND12', 'ALBUM27', 'GENRE02', 'USUB10800301', '2012-04-24', '00:02:51'),
('TRACK28', 'Nothing is Safe', NULL, 'BAND13', 'ALBUM28', 'GENRE02', 'USSUB1933002', '2019-10-18', '00:03:43'),
('TRACK29', 'Maggot Brain', NULL, 'BAND14', 'ALBUM29', 'GENRE06', 'USWB19901732', '1971-07-12', '00:10:21'),
('TRACK30', 'Teen Age Riot', NULL, 'BAND15', 'ALBUM30', 'GENRE01', 'USGI28900232', '1988-10-18', '00:06:57');
INSERT INTO Track_Producer (track_id, producer_id)
VALUES
('TRACK01', 'PROD01'), -- T: Lazarus 							P: Tony Visconti
('TRACK01', 'PROD02'), -- T: Lazarus							P: David Bowie
('TRACK02', 'PROD03'), -- T: Alright							P: Dr. Dre
('TRACK02', 'PROD04'), -- T: Alright							P: Sounwave
('TRACK02', 'PROD05'), -- T: Alright							P: Thundercat
('TRACK02', 'PROD06'), -- T: Alright							P: Flying Lotus
('TRACK02', 'PROD60'), -- T: Alright							P: Pharrell Williams
('TRACK03', 'PROD07'), -- T: Xtal					    		P: Aphex Twin
('TRACK04', 'PROD03'), -- T: Cleanin' Out My Closet				P: Dr. Dre
('TRACK04', 'PROD08'), -- T: Cleanin' Out My Closet				P: Eminem
('TRACK04', 'PROD09'), -- T: Cleanin' Out My Closet				P: Jeff Bass
('TRACK05', 'PROD10'), -- T: Peaches en Regalia					P: Frank Zappa
('TRACK06', 'PROD11'), -- T: Really Doe				    		P: Paul White
('TRACK06', 'PROD12'), -- T: Really Doe		            		P: The Alchemist
('TRACK06', 'PROD13'), -- T: Really Doe		            		P: Black Milk
('TRACK07', 'PROD14'), -- T: Blinding Lights		   		    P: Max Martin
('TRACK07', 'PROD15'), -- T: Blinding Lights		   			P: Metro Boomin
('TRACK07', 'PROD16'), -- T: Blinding Lights					P: Illangelo
('TRACK08', 'PROD17'), -- T: XENA 								P: Skrillex
('TRACK08', 'PROD18'), -- T: XENA								P: Fred Again. 
('TRACK08', 'PROD19'), -- T: XENA								P: Four Tet
('TRACK09', 'PROD20'), -- T: Hit Me Hard and Soft 				P: Phineas O'Connell
('TRACK09', 'PROD21'), -- T: Hit Me Hard and Soft 				P: Billie Eilish
('TRACK10', 'PROD22'), -- T: Apple								P: A.G. Cook
('TRACK11', 'PROD23'), -- T: Accordion							P: Madlib
('TRACK11', 'PROD24'), -- T: Accordion							P: MF DOOM
('TRACK12', 'PROD25'), -- T: Faxing Berlin             	 		P: deadmau5
('TRACK13', 'PROD26'), -- T: Bachelorette 						P: Nellee Hooper
('TRACK13', 'PROD27'), -- T: Bachelorette 						P: Mark Bell
('TRACK13', 'PROD28'), -- T: Bachelorette 						P: Bjork
('TRACK14', 'PROD29'), -- T: Pharaoh’s Dance					P: Teo Macero
('TRACK15', 'PROD03'), -- T: California Love					P: Dr. Dre
('TRACK15', 'PROD30'), -- T: California Love					P: Johnny J
('TRACK15', 'PROD31'), -- T: California Love					P: DJ Quik		
('TRACK16', 'PROD32'), -- T: The Robots							P: Ralf Hütter
('TRACK16', 'PROD33'), -- T: The Robots							P: Florian Schneider
('TRACK17', 'PROD34'), -- T: Harder, Better, Faster, Stronger 	P: Thomas Bangalter
('TRACK17', 'PROD35'), -- T: Harder, Better, Faster, Stronger	P: Guy-Manuel de Homem-Christo
('TRACK18', 'PROD36'), -- T: Belinda Says						P: John Congleton
('TRACK19', 'PROD37'), -- T: My Girls							P: Ben Allen
('TRACK19', 'PROD38'), -- T: My Girls							P: Animal Collective
('TRACK20', 'PROD39'), -- T: Lucy in the Sky with Diamonds		P: George Martin
('TRACK21', 'PROD40'), -- T: God Only Knows						P: Brian Wilson
('TRACK22', 'PROD41'), -- T: Everything in Its Right Place		P: Radiohead
('TRACK23', 'PROD42'), -- T: Scenario							P: Q-Tip
('TRACK23', 'PROD43'), -- T: Scenario							P: Skiff Anselm
('TRACK24', 'PROD44'), -- T: Closer								P: Trent Reznor
('TRACK24', 'PROD45'), -- T: Closer								P: Flood
('TRACK25', 'PROD46'), -- T: Chop Suey!							P: Rick Rubin
('TRACK25', 'PROD47'), -- T: Chop Suey!							P: Darin Malakian
('TRACK26', 'PROD48'), -- T: Ms. Jackson						P: Organized Noise
('TRACK26', 'PROD49'), -- T: Ms. Jackson						P: Earthtone III
('TRACK27', 'PROD50'), -- T: Get Got							P: Andy Morin
('TRACK27', 'PROD51'), -- T: Get Got							P: Zach Hill
('TRACK28', 'PROD52'), -- T: Nothing is Safe					P: Daveed Diggs
('TRACK28', 'PROD53'), -- T: Nothing is Safe					P: William Hutson
('TRACK28', 'PROD54'), -- T: Nothing is Safe					P: Jonathan Snipes
('TRACK29', 'PROD55'), -- T: Maggot Brain						P: George Clinton
('TRACK29', 'PROD56'), -- T: Maggot Brain						P: Eddie Hazel
('TRACK30', 'PROD57'), -- T: Teen Age Riot					P: Thurston Moore
('TRACK30', 'PROD58'), -- T: Teen Age Riot					P: Kim Gordon
('TRACK30', 'PROD59'), -- T: Teen Age Riot					P: Nick Sansano
('TRACK03', 'PROD60'), -- T: Alright  							P: Pharrell Williams
('TRACK18', 'PROD61'), -- T: Belinda Says						P: Molly Rankin
('TRACK18', 'PROD62'); -- T: Belinda Says						P: Shawn Everett
INSERT INTO Track_Subgenre (track_id, subgenre_id)
VALUES
('TRACK01', 'SGEN01'), 
('TRACK01', 'SGEN02'), 
('TRACK01', 'SGEN03'), 
('TRACK01', 'SGEN25'), 
('TRACK02', 'SGEN04'), 
('TRACK02', 'SGEN05'), 
('TRACK02', 'SGEN30'), 
('TRACK03', 'SGEN07'),
('TRACK03', 'SGEN08'), 
('TRACK04', 'SGEN09'),
('TRACK04', 'SGEN13'),
('TRACK05', 'SGEN01'),
('TRACK05', 'SGEN03'),
('TRACK05', 'SGEN25'),
('TRACK06', 'SGEN04'), 
('TRACK06', 'SGEN09'),
('TRACK06', 'SGEN13'), 
('TRACK06', 'SGEN14'),
('TRACK06', 'SGEN15'),
('TRACK07', 'SGEN16'), 
('TRACK07', 'SGEN17'), 
('TRACK07', 'SGEN18'), 
('TRACK07', 'SGEN22'), 
('TRACK08', 'SGEN19'), 
('TRACK08', 'SGEN20'),
('TRACK08', 'SGEN24'),
('TRACK09', 'SGEN21'), 
('TRACK09', 'SGEN22'),
('TRACK09', 'SGEN23'), 
('TRACK09', 'SGEN24'), 
('TRACK10', 'SGEN16'), 
('TRACK10', 'SGEN18'), 
('TRACK10', 'SGEN20'), 
('TRACK11', 'SGEN05'), 
('TRACK11', 'SGEN13'), 
('TRACK12', 'SGEN24'), 
('TRACK12', 'SGEN25'),  
('TRACK13', 'SGEN16'),  
('TRACK13', 'SGEN18'),  
('TRACK13', 'SGEN20'),  
('TRACK14', 'SGEN27'),  
('TRACK14', 'SGEN28'),  
('TRACK15', 'SGEN04'),  
('TRACK15', 'SGEN29'),  
('TRACK15', 'SGEN30'),  
('TRACK16', 'SGEN18'),  
('TRACK16', 'SGEN16'),  
('TRACK17', 'SGEN24'),  
('TRACK17', 'SGEN20'),  
('TRACK17', 'SGEN31'),  
('TRACK18', 'SGEN22'),  
('TRACK18', 'SGEN32'),  
('TRACK18', 'SGEN33'),  
('TRACK18', 'SGEN20'),  
('TRACK19', 'SGEN24'),  
('TRACK19', 'SGEN33'),  
('TRACK19', 'SGEN20'),  
('TRACK20', 'SGEN28'),  
('TRACK20', 'SGEN25'),  
('TRACK21', 'SGEN28'),  
('TRACK21', 'SGEN34'),  
('TRACK21', 'SGEN03'),  
('TRACK22', 'SGEN26'),  
('TRACK22', 'SGEN33'),  
('TRACK22', 'SGEN03'), 
('TRACK22', 'SGEN08'),  
('TRACK23', 'SGEN05'),  
('TRACK23', 'SGEN04'),  
('TRACK23', 'SGEN30'),  
('TRACK24', 'SGEN12'),  
('TRACK24', 'SGEN08'), 
('TRACK25', 'SGEN06'), 
('TRACK25', 'SGEN36'), 
('TRACK26', 'SGEN30'),
('TRACK26', 'SGEN02'), 
('TRACK27', 'SGEN08'), 
('TRACK27', 'SGEN09'),
('TRACK27', 'SGEN13'),
('TRACK27', 'SGEN31'),
('TRACK27', 'SGEN15'),
('TRACK28', 'SGEN09'),
('TRACK28', 'SGEN10'),
('TRACK28', 'SGEN15'),
('TRACK29', 'SGEN06'),
('TRACK29', 'SGEN34'), 
('TRACK30', 'SGEN03'),
('TRACK30', 'SGEN25');
INSERT INTO Album_Producer (album_id, producer_id)
VALUES
('ALBUM01', 'PROD01'), -- A:  
('ALBUM01', 'PROD02'), -- A: 
('ALBUM02', 'PROD03'), -- A: 
('ALBUM02', 'PROD04'), -- A: 
('ALBUM02', 'PROD05'), -- A: 
('ALBUM02', 'PROD55'), -- A: 
('ALBUM02', 'PROD06'), -- A: 
('ALBUM02', 'PROD60'), -- A: 
('ALBUM03', 'PROD07'), -- A: 
('ALBUM04', 'PROD03'), -- A: 
('ALBUM04', 'PROD08'), -- A: 
('ALBUM04', 'PROD09'), -- A: 
('ALBUM05', 'PROD10'), -- A: 
('ALBUM06', 'PROD11'), -- A: 
('ALBUM06', 'PROD12'), -- A: 
('ALBUM06', 'PROD13'), -- A: 
('ALBUM07', 'PROD14'), -- A: 
('ALBUM07', 'PROD15'), -- A: 
('ALBUM07', 'PROD16'), -- A: 
('ALBUM08', 'PROD17'), -- A: 
('ALBUM08', 'PROD18'), -- A: 
('ALBUM08', 'PROD19'), -- A: 
('ALBUM09', 'PROD20'), -- A: 
('ALBUM09', 'PROD21'), -- A: 
('ALBUM10', 'PROD22'), -- A: 
('ALBUM11', 'PROD23'), -- A: 
('ALBUM11', 'PROD24'), -- A: 
('ALBUM12', 'PROD25'), -- A: 
('ALBUM13', 'PROD26'), -- A: 
('ALBUM13', 'PROD27'), -- A: 
('ALBUM13', 'PROD28'), -- A: 
('ALBUM14', 'PROD29'), -- A: 
('ALBUM15', 'PROD03'), -- A: 
('ALBUM15', 'PROD30'), -- A: 
('ALBUM15', 'PROD31'), -- A: 
('ALBUM16', 'PROD32'), -- A: 
('ALBUM16', 'PROD33'), -- A: 
('ALBUM17', 'PROD34'), -- A: 
('ALBUM17', 'PROD35'), -- A: 
('ALBUM18', 'PROD36'), -- A: 
('ALBUM19', 'PROD37'), -- A: 
('ALBUM19', 'PROD38'), -- A: 
('ALBUM20', 'PROD39'), -- A: 
('ALBUM21', 'PROD40'), -- A: 
('ALBUM22', 'PROD41'), -- A: 
('ALBUM23', 'PROD42'), -- A: 
('ALBUM23', 'PROD43'), -- A: 
('ALBUM24', 'PROD44'), -- A: 
('ALBUM24', 'PROD45'), -- A: 
('ALBUM25', 'PROD46'), -- A: 
('ALBUM25', 'PROD47'), -- A: 
('ALBUM26', 'PROD48'), -- A: 
('ALBUM26', 'PROD49'), -- A: 
('ALBUM27', 'PROD50'), -- A: 
('ALBUM27', 'PROD51'), -- A: 
('ALBUM28', 'PROD52'), -- A: 
('ALBUM28', 'PROD53'), -- A: 
('ALBUM28', 'PROD54'), -- A: 
('ALBUM29', 'PROD55'), -- A: 
('ALBUM29', 'PROD56'), -- A: 
('ALBUM30', 'PROD57'), -- A: 
('ALBUM30', 'PROD58'), -- A: 
('ALBUM30', 'PROD59'); -- A: 
INSERT INTO Album_Subgenre (album_id, subgenre_id)
VALUES
('ALBUM01', 'SGEN01'),  
('ALBUM01', 'SGEN02'),  
('ALBUM01', 'SGEN03'),  
('ALBUM01', 'SGEN25'),  
('ALBUM02', 'SGEN04'),  
('ALBUM02', 'SGEN05'),  
('ALBUM02', 'SGEN30'),  
('ALBUM03', 'SGEN07'),  
('ALBUM03', 'SGEN08'),  
('ALBUM04', 'SGEN09'),  
('ALBUM04', 'SGEN10'),  
('ALBUM04', 'SGEN13'),  
('ALBUM05', 'SGEN01'),  
('ALBUM05', 'SGEN03'),  
('ALBUM05', 'SGEN25'),  
('ALBUM06', 'SGEN04'),  
('ALBUM06', 'SGEN09'),  
('ALBUM06', 'SGEN13'),  
('ALBUM06', 'SGEN14'),  
('ALBUM06', 'SGEN15'),  
('ALBUM07', 'SGEN16'),  
('ALBUM07', 'SGEN17'),  
('ALBUM07', 'SGEN18'),  
('ALBUM07', 'SGEN22'),  
('ALBUM08', 'SGEN19'),  
('ALBUM08', 'SGEN20'),  
('ALBUM08', 'SGEN24'),  
('ALBUM09', 'SGEN21'),  
('ALBUM09', 'SGEN22'),  
('ALBUM09', 'SGEN23'),  
('ALBUM09', 'SGEN24'),  
('ALBUM10', 'SGEN16'),  
('ALBUM10', 'SGEN18'),  
('ALBUM10', 'SGEN20'),  
('ALBUM11', 'SGEN05'),  
('ALBUM11', 'SGEN13'),  
('ALBUM12', 'SGEN24'),  
('ALBUM12', 'SGEN25'),  
('ALBUM13', 'SGEN16'),  
('ALBUM13', 'SGEN18'),  
('ALBUM13', 'SGEN20'),  
('ALBUM14', 'SGEN27'),  
('ALBUM14', 'SGEN28'),  
('ALBUM15', 'SGEN04'),  
('ALBUM15', 'SGEN29'),  
('ALBUM15', 'SGEN30'),  
('ALBUM16', 'SGEN18'),  
('ALBUM16', 'SGEN16'),  
('ALBUM17', 'SGEN24'),  
('ALBUM17', 'SGEN20'),  
('ALBUM17', 'SGEN31'),  
('ALBUM18', 'SGEN22'),  
('ALBUM18', 'SGEN32'),  
('ALBUM18', 'SGEN33'),  
('ALBUM18', 'SGEN20'),  
('ALBUM19', 'SGEN24'),  
('ALBUM19', 'SGEN33'),  
('ALBUM19', 'SGEN20'),  
('ALBUM20', 'SGEN28'),  
('ALBUM20', 'SGEN25'),  
('ALBUM21', 'SGEN28'),  
('ALBUM21', 'SGEN34'),  
('ALBUM21', 'SGEN03'),  
('ALBUM22', 'SGEN26'),  
('ALBUM22', 'SGEN33'),  
('ALBUM22', 'SGEN03'),  
('ALBUM22', 'SGEN08'),  
('ALBUM23', 'SGEN05'), 
('ALBUM23', 'SGEN04'), 
('ALBUM23', 'SGEN30'),  
('ALBUM24', 'SGEN12'),  
('ALBUM24', 'SGEN08'), 
('ALBUM25', 'SGEN06'),  
('ALBUM25', 'SGEN36'),  
('ALBUM26', 'SGEN30'),  
('ALBUM26', 'SGEN02'),  
('ALBUM27', 'SGEN08'),  
('ALBUM27', 'SGEN09'), 
('ALBUM27', 'SGEN13'),  
('ALBUM27', 'SGEN31'),  
('ALBUM27', 'SGEN15'),  
('ALBUM28', 'SGEN09'),   
('ALBUM28', 'SGEN10'),  
('ALBUM28', 'SGEN15'),  
('ALBUM29', 'SGEN06'),  
('ALBUM29', 'SGEN34'),  
('ALBUM30', 'SGEN03'),  
('ALBUM30', 'SGEN25'); 
INSERT INTO Artist_Subgenre (artist_id, subgenre_id)
VALUES 
('ARTIST01', 'SGEN02'),  
('ARTIST01', 'SGEN04'), 
('ARTIST01', 'SGEN06'), 
('ARTIST01', 'SGEN08'), 
('ARTIST02', 'SGEN04'), 
('ARTIST02', 'SGEN05'), 
('ARTIST02', 'SGEN14'), 
('ARTIST02', 'SGEN30'), 
('ARTIST03', 'SGEN03'), 
('ARTIST03', 'SGEN19'), 
('ARTIST04', 'SGEN10'), 
('ARTIST04', 'SGEN11'), 
('ARTIST04', 'SGEN13'), 
('ARTIST05', 'SGEN01'), 
('ARTIST05', 'SGEN06'), 
('ARTIST05', 'SGEN08'),  
('ARTIST06', 'SGEN04'), 
('ARTIST06', 'SGEN10'), 
('ARTIST06', 'SGEN13'), 
('ARTIST06', 'SGEN14'), 
('ARTIST06', 'SGEN15'), 
('ARTIST07', 'SGEN16'), 
('ARTIST07', 'SGEN17'), 
('ARTIST07', 'SGEN18'), 
('ARTIST07', 'SGEN20'), 
('ARTIST07', 'SGEN22'), 
('ARTIST07', 'SGEN26'), 
('ARTIST08', 'SGEN19'), 
('ARTIST08', 'SGEN20'), 
('ARTIST08', 'SGEN24'), 
('ARTIST09', 'SGEN20'), 
('ARTIST09', 'SGEN21'), 
('ARTIST09', 'SGEN22'), 
('ARTIST09', 'SGEN23'), 
('ARTIST09', 'SGEN24'), 
('ARTIST10', 'SGEN16'), 
('ARTIST10', 'SGEN18'), 
('ARTIST10', 'SGEN20'), 
('ARTIST11', 'SGEN05'), 		
('ARTIST11', 'SGEN10'), 		
('ARTIST12', 'SGEN24'), 
('ARTIST12', 'SGEN25'), 
('ARTIST13', 'SGEN16'), 	 
('ARTIST13', 'SGEN18'), 
('ARTIST13', 'SGEN20'), 
('ARTIST14', 'SGEN06'), 
('ARTIST14', 'SGEN08'), 
('ARTIST14', 'SGEN29'),  
('ARTIST15', 'SGEN04'), 
('ARTIST15', 'SGEN29'), 	
('ARTIST15', 'SGEN30'); 
INSERT INTO Band_Subgenre (band_id, subgenre_id)
VALUES 
('BAND01', 'SGEN18'),  
('BAND01', 'SGEN08'),
('BAND02', 'SGEN20'), 
('BAND02', 'SGEN24'),
('BAND03', 'SGEN22'),
('BAND04', 'SGEN24'), 
('BAND04', 'SGEN22'),
('BAND05', 'SGEN28'),
('BAND06', 'SGEN28'),
('BAND07', 'SGEN26'),
('BAND07', 'SGEN24'),
('BAND08', 'SGEN30'),
('BAND08', 'SGEN02'),
('BAND09', 'SGEN08'),
('BAND09', 'SGEN12'),
('BAND10', 'SGEN06'),
('BAND10', 'SGEN08'),
('BAND11', 'SGEN30'),
('BAND11', 'SGEN02'),
('BAND12', 'SGEN08'),
('BAND12', 'SGEN10'),
('BAND12', 'SGEN12'),
('BAND12', 'SGEN36'),
('BAND12', 'SGEN31'),
('BAND13', 'SGEN10'),
('BAND13', 'SGEN13'),
('BAND13', 'SGEN09'),
('BAND14', 'SGEN06'),
('BAND14', 'SGEN02'),
('BAND15', 'SGEN24'),
('BAND15', 'SGEN10');

SHOW TABLES;
SELECT 
	alb.album_name AS 'Album Name',
	a.artist_name AS 'Artist Name',
	b.band_name AS 'Band Name',
    GROUP_CONCAT(DISTINCT p.producer_name ORDER BY p.producer_name ASC SEPARATOR ', ') AS 'Producers',
	l.label_name AS 'Label Name',
	g.genre_name AS 'Genre',
    GROUP_CONCAT(DISTINCT s.subgenre_name ORDER BY s.subgenre_name ASC SEPARATOR ', ') AS 'Subgenres',
	alb.country_of_origin AS 'Country of Origin',
	alb.release_date AS 'Release Date',
	alb.duration_time AS 'Duration'
FROM 
	Album alb
	LEFT JOIN Artist a ON alb.artist_id = a.artist_id
	LEFT JOIN Band b ON alb.band_id = b.band_id
	LEFT JOIN Label l ON alb.label_id = l.label_id
	LEFT JOIN Genre g ON alb.genre_id = g.genre_id
	LEFT JOIN Album_Producer ap ON alb.album_id = ap.album_id
	LEFT JOIN Producer p ON ap.producer_id = p.producer_id
	LEFT JOIN Album_Subgenre asub ON alb.album_id = asub.album_id
	LEFT JOIN Subgenre s ON asub.subgenre_id = s.subgenre_id
GROUP BY 
	alb.album_name, a.artist_name, b.band_name, l.label_name, g.genre_name, alb.country_of_origin, alb.release_date, alb.duration_time;
	SELECT 
	artist_id AS 'Artist ID',
	artist_name AS 'Artist Name',
	birth_name AS 'Birth Name',
	date_of_birth AS 'Date of Birth',
	years_active AS 'Years Active',
	country_of_origin AS 'Country of Origin',
	inspirations AS 'Inspirations',
	influenced AS 'Influenced',
	most_noted_accolade AS 'Most Noted Accolade'
FROM 
    Artist;
SELECT 
    band_id AS 'Band ID',
    band_name AS 'Band Name',
    bandmember1_name AS 'Band Member 1',
    bandmember2_name AS 'Band Member 2',
    bandmember3_name AS 'Band Member 3',
    bandmember4_name AS 'Band Member 4',
    bandmember5_name AS 'Band Member 5',
    years_active AS 'Years Active',
    country_of_origin AS 'Country of Origin',
    inspirations AS 'Inspirations',
    influenced AS 'Influenced',
    most_noted_accolade AS 'Most Noted Accolade'
FROM 
    Band;
SELECT 
	producer_id AS 'Producer ID',
	producer_name AS 'Producer Name',
	date_of_birth AS 'Date of Birth',
	years_active AS 'Years Active',
	known_works AS 'Known Works'
FROM 
	Producer;
SELECT 
	label_id AS 'Label ID',
	label_name AS 'Label Name',
	years_active AS 'Years Active',
	ceo_name AS 'CEO Name',
	parent_company AS 'Parent Company',
	label_country AS 'Country'
FROM 
    Label;
    SELECT 
	genre_id AS 'Genre ID',
	genre_name AS 'Genre Name',
	genre_description AS 'Description',
	decade_of_origin AS 'Decade of Origin'
FROM 
    Genre;
SELECT 
    subgenre_id AS 'Subgenre ID',
    subgenre_name AS 'Subgenre Name',
    subgenre_description AS 'Descriptor',
    subgenre_decade_of_origin AS 'Decade of Origin'
FROM
    Subgenre;
SELECT 
	t.track_name AS 'Track Name',
	a.artist_name AS 'Artist Name',
	b.band_name AS 'Band Name',
	alb.album_name AS 'Album Name',
    GROUP_CONCAT(DISTINCT p.producer_name ORDER BY p.producer_name ASC SEPARATOR ', ') AS 'Producers',
	l.label_name AS 'Label Name',
	g.genre_name AS 'Genre Name',
	GROUP_CONCAT(DISTINCT s.subgenre_name ORDER BY s.subgenre_name ASC SEPARATOR ', ') AS 'Subgenres',
	t.isrc AS 'ISRC',
	t.release_date AS 'Release Date',
	t.duration_time AS 'Duration'    
FROM 
    Track t
    LEFT JOIN Artist a ON t.artist_id = a.artist_id
    LEFT JOIN Band b ON t.band_id = b.band_id
    LEFT JOIN Album alb ON t.album_id = alb.album_id
    LEFT JOIN Genre g ON alb.genre_id = g.genre_id
    LEFT JOIN Label l ON alb.label_id = l.label_id
    LEFT JOIN Track_Producer tp ON t.track_id = tp.track_id
    LEFT JOIN Producer p ON tp.producer_id = p.producer_id
    LEFT JOIN Track_Subgenre ts ON t.track_id = ts.track_id
    LEFT JOIN Subgenre s ON ts.subgenre_id = s.subgenre_id
GROUP BY 
    t.track_name, a.artist_name, b.band_name, alb.album_name, l.label_name, g.genre_name, t.isrc, t.release_date, t.duration_time;

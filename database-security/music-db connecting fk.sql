INSERT INTO Label (label_id, label_name, years_active, ceo_name, parent_company, label_country)
VALUES
('LABEL01', 'Columbia Records', '1887-Present', 'Rob Stringer', 'Sony Music', 'US'),
('LABEL02', 'Interscope Records', '1990-Present', 'John Janick', 'Universal Music Group', 'US'),
('LABEL03', 'Warp Records', '1989-Present', 'Steve Beckett', NULL, 'UK'),
('LABEL04', 'Aftermath Entertainment', '1996-Present', 'Dr. Dre', 'Universal Music Group', 'US'),
('LABEL05', 'Zappa Records', '1977-Present', 'Gail Zappa (deceased)', 'UMG (distribution)', 'US'),
('LABEL06', 'Warp Records', '1989-Present', 'Steve Beckett', NULL, 'UK'),
('LABEL07', 'Republic Records', '1995-Present', 'Monte Lipman', 'Universal Music Group', 'US'),
('LABEL08', 'Atlantic Records', '1947-Present', 'Craig Kallman', 'Warner Music Group', 'US'),
('LABEL09', 'XL Recordings', '1989-Present', 'Richard Russell', 'Beggars Group', 'UK'),
('LABEL10', 'Sub Pop', '1986-Present', 'Megan Jasper', 'Warner Music Group (distribution)', 'US'),
('LABEL11', 'Death Row Records', '1991-2006, 2022-Present', 'Snoop Dogg', 'Hasbro (formerly)', 'US'),
('LABEL12', 'Roc-A-Fella Records', '1995-2013', 'Jay-Z', 'Def Jam (distribution)', 'US'),
('LABEL13', 'One Little Independent Records', '1985-Present', 'Derek Birkett', NULL, 'UK'),
('LABEL14', 'XL Recordings', '1989-Present', 'Richard Russell', 'Beggars Group', 'UK'),
('LABEL15', 'RCA Records', '1901-Present', 'Peter Edge', 'Sony Music', 'US'),
('LABEL16', 'Def Jam Recordings', '1984-Present', 'Tunji Balogun', 'Universal Music Group', 'US'),
('LABEL17', 'Astralwerks', '1993-Present', 'Toby Andrews', 'Universal Music Group', 'US'),
('LABEL18', 'Mushroom Records', '1972-1998, 2023-Present', 'Michael Gudinski (deceased)', NULL, 'Australia'),
('LABEL19', 'Warner Bros. Records', '1958-Present', 'Tom Corson', 'Warner Music Group', 'US'),
('LABEL20', 'Geffen Records', '1980-Present', 'Tom March', 'Universal Music Group', 'US'),
('LABEL21', 'Reprise Records', '1960-Present', 'Tom Corson', 'Warner Music Group', 'US'),
('LABEL22', 'Motown Records', '1959-Present', 'Ethiopia Habtemariam', 'Universal Music Group', 'US'),
('LABEL23', '4AD', '1980-Present', 'Simon Halliday', 'Beggars Group', 'UK'),
('LABEL24', 'Parlophone', '1923-Present', 'Mark Mitchell', 'Warner Music Group', 'UK'),
('LABEL25', 'Island Records', '1959-Present', 'Darcus Beese', 'Universal Music Group', 'UK'),
('LABEL26', 'Stones Throw Records', '1996-Present', 'Chris Manak (Peanut Butter Wolf)', NULL, 'US'),
('LABEL27', 'Rough Trade Records', '1978-Present', 'Geoff Travis', 'Beggars Group', 'UK'),
('LABEL28', 'Domino Recording Company', '1993-Present', 'Laurence Bell', NULL, 'UK'),
('LABEL29', 'Rhino Entertainment', '1978-Present', 'Mark Pinkus', 'Warner Music Group', 'US'),
('LABEL30', 'Brainfeeder', '2008-Present', 'Flying Lotus', NULL, 'US');
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
INSERT INTO Artist_Subgenre (artist_id, subgenre_id)
VALUES 
('ARTIST01', 'SGEN02'), -- A: David Bowie     S: Jazz Fusion 
('ARTIST01', 'SGEN04'), -- A: David Bowie     S:
('ARTIST01', 'SGEN06'), -- A: David Bowie     S:
('ARTIST01', 'SGEN08'), -- A: David Bowie     S:
('ARTIST02', 'SGEN04'), -- A: Kendrick Lamar  S:
('ARTIST02', 'SGEN05'), -- A: Kendrick Lamar  S:
('ARTIST02', 'SGEN14'), -- A: Kendrick Lamar  S:
('ARTIST02', 'SGEN30'), -- A: Kendrick Lamar  S:
('ARTIST03', 'SGEN03'), -- A: Aphex Twin      S:
('ARTIST03', 'SGEN19'), -- A: Aphex Twin      S:
('ARTIST04', 'SGEN10'), -- A: Eminem          S:
('ARTIST04', 'SGEN11'), -- A: Eminem          S:
('ARTIST04', 'SGEN13'), -- A: Eminem          S:
('ARTIST05', 'SGEN01'), -- A: Frank Zappa     S:
('ARTIST05', 'SGEN06'), -- A: Frank Zappa     S:
('ARTIST05', 'SGEN08'), -- A: Frank Zappa     S:
('ARTIST06', 'SGEN04'), -- A: Danny Brown     S:
('ARTIST06', 'SGEN10'), -- A: Danny Brown     S:
('ARTIST06', 'SGEN13'), -- A: Danny Brown     S:
('ARTIST06', 'SGEN14'), -- A: Danny Brown     S:
('ARTIST06', 'SGEN15'), -- A: Danny Brown     S:
('ARTIST07', 'SGEN16'), -- A: The Weeknd      S:
('ARTIST07', 'SGEN17'), -- A: The Weeknd      S:
('ARTIST07', 'SGEN18'), -- A: The Weeknd      S:
('ARTIST07', 'SGEN20'), -- A: The Weeknd      S:
('ARTIST07', 'SGEN22'), -- A: The Weeknd      S:
('ARTIST07', 'SGEN26'), -- A: The Weeknd      S:
('ARTIST08', 'SGEN19'), -- A: Skrillex        S:
('ARTIST08', 'SGEN20'), -- A: Skrillex        S:
('ARTIST08', 'SGEN24'), -- A: Skrillex        S:
('ARTIST09', 'SGEN20'), -- A: Billie Eilish   S:
('ARTIST09', 'SGEN21'), -- A: Billie Eilish   S:
('ARTIST09', 'SGEN22'), -- A: Billie Eilish   S:
('ARTIST09', 'SGEN23'), -- A: Billie Eilish   S:
('ARTIST09', 'SGEN24'), -- A: Billie Eilish   S:
('ARTIST10', 'SGEN16'), -- A: Charli XCX      S:
('ARTIST10', 'SGEN18'), -- A: Charli XCX      S:
('ARTIST10', 'SGEN20'), -- A: Charli XCX	  S:
('ARTIST11', 'SGEN05'), -- A: MF DOOM		  S:
('ARTIST11', 'SGEN10'), -- A: MF DOOM		  S:
('ARTIST12', 'SGEN24'), -- A: deadmau5		  S:
('ARTIST12', 'SGEN25'), -- A: deadmau5        S:
('ARTIST13', 'SGEN16'), -- A: Bjork			  S:
('ARTIST13', 'SGEN18'), -- A: Bjork			  S:
('ARTIST13', 'SGEN20'), -- A: Bjork			  S:
('ARTIST14', 'SGEN06'), -- A: Miles Davis	  S:
('ARTIST14', 'SGEN08'), -- A: Miles Davis	  S:
('ARTIST14', 'SGEN29'), -- A: Miles Davis	  S:
('ARTIST15', 'SGEN04'), -- A: Tupac Shakur	  S:
('ARTIST15', 'SGEN29'), -- A: Tupac Shakur	  S:
('ARTIST15', 'SGEN30'); -- A: Tupac Shakur	  S:
INSERT INTO Band_Subgenre (band_id, subgenre_id)
VALUES 
('BAND01', 'SGEN18'),  -- B: Kraftwerk				S:
('BAND01', 'SGEN08'),  -- B: Kraftwerk				S:
('BAND02', 'SGEN20'),  -- B: Daft Punk 				S:
('BAND02', 'SGEN24'),  -- B: Daft Punk				S:
('BAND03', 'SGEN22'),  -- B: Alvvays				S:
('BAND04', 'SGEN24'),  -- B: Animal Collective		S:
('BAND04', 'SGEN22'),  -- B: Animal Collective		S:
('BAND05', 'SGEN28'),  -- B: The Beatles			S:
('BAND06', 'SGEN28'),  -- B: The Beach Boys			S:
('BAND07', 'SGEN26'),  -- B: Radiohead				S:
('BAND07', 'SGEN24'),  -- B: Radiohead				S:
('BAND08', 'SGEN30'),  -- B: A Tribe Called Quest	S:
('BAND08', 'SGEN02'),  -- B: A Tribe Called Quest	S:
('BAND09', 'SGEN08'),  -- B: Nine Inch Nails		S:
('BAND09', 'SGEN12'),  -- B: Nine Inch Nails		S:
('BAND10', 'SGEN06'),  -- B: System of a Down		S:
('BAND10', 'SGEN08'),  -- B: System of a Down		S:
('BAND11', 'SGEN30'),  -- B: Outkast				S:
('BAND11', 'SGEN02'),  -- B: Outkast				S:
('BAND12', 'SGEN08'),  -- B: Death Grips			S:
('BAND12', 'SGEN10'),  -- B: Death Grips			S:
('BAND12', 'SGEN12'),  -- B: Death Grips			S:	
('BAND12', 'SGEN36'),  -- B: Death Grips			S:
('BAND12', 'SGEN31'),  -- B: Death Grips			S:
('BAND13', 'SGEN10'),  -- B: Clipping				S:
('BAND13', 'SGEN13'),  -- B: Clipping				S:
('BAND13', 'SGEN09'),  -- B: Clipping				S:
('BAND14', 'SGEN06'),  -- B: Funkadelic				S:
('BAND14', 'SGEN02'),  -- B: Funkadelic				S:
('BAND15', 'SGEN24'),  -- B: Sonic Youth			S:
('BAND15', 'SGEN10');  -- B: Sonic Youth			S:
INSERT INTO Producer (producer_id, producer_name, date_of_birth, years_active, genre_id, known_works)
VALUES
('PROD01', 'Tony Visconti', '1944-04-24', '1960-Present','GENRE01', 'Blackstar, Heroes'),
('PROD02', 'David Bowie', '1947-01-08', '1962-2016','GENRE01', 'Blackstar, Heroes'),
('PROD03', 'Dr. Dre', '1965-02-18', '1985-Present','GENRE02', 'To Pimp a Butterfly, The Chronic, The Eminem Show'),
('PROD04', 'Sounwave', '1985-08-16', '2008-Present','GENRE02', 'To Pimp a Butterfly, DAMN.'),
('PROD05', 'Thundercat', '1984-10-19', '2000-Present','GENRE02', 'To Pimp a Butterfly, Drunk'),
('PROD06', 'Flying Lotus', '1983-10-07', '2000-Present','GENRE02', 'To Pimp a Butterfly, Cosmogramma'),
('PROD07', 'Aphex Twin', '1971-08-18','1985-Present','GENRE03', 'Selected Ambient Works 85-92, Drukqs'),
('PROD08', 'Eminem', '1972-10-17','1980-Present','GENRE02', 'The Eminem Show, Infinite'),
('PROD09', 'Jeff Bass', '1961-05-16','1980-Present','GENRE02', 'The Eminem Show, Curtain Call'),
('PROD10', 'Frank Zappa', '1940-12-21','1962-1993','GENRE01', 'Hot Rats, Freak Out!'),
('PROD11', 'Paul White', '1984-07-08','2005-Present','GENRE02', 'Atrocity Exhibition, U Know What I’m Sayin?'),
('PROD12', 'The Alchemist', '1977-10-25','1993-Present','GENRE02', 'Atrocity Exhibition, Alfredo'),
('PROD13', 'Black Milk', '1983-08-14','2002-Present','GENRE02', 'Atrocity Exhibition, No Poison No Paradise'),
('PROD14', 'Max Martin', '1971-02-26','1989-Present','GENRE04', 'After Hours, 1989'),
('PROD15', 'Metro Boomin', '1993-09-16','2010-Present','GENRE02', 'After Hours, NOT ALL HEROES WEAR CAPES'),
('PROD16', 'Illangelo', '1983-07-12', '2010-Present','GENRE04', 'After Hours, Trilogy'),
('PROD17', 'Skrillex', '1988-01-15', '2004-Present','GENRE03', 'Quest for Fire, Bangarang'),
('PROD18', 'Fred again..', '1993-07-19', '2014-Present','GENRE03', 'Quest for Fire, Actual Life'),
('PROD19', 'Four Tet', '1978-09-02', '1996-Present','GENRE03', 'Quest for Fire, New Energy'),
('PROD20', 'Finneas O''Connell', '1997-07-30', '2013-Present','GENRE04', 'Hit Me Hard and Soft, Happier Than Ever'),
('PROD21', 'Billie Eilish', '2001-12-18','2015-Present','GENRE04', 'Hit Me Hard and Soft, Happier Than Ever'),
('PROD22', 'A. G. Cook', '1990-08-23','2010-Present','GENRE04', 'brat., Pop 2'),
('PROD23', 'MF DOOM', '1971-01-09','1988-2020','GENRE02', 'Madvillainy, MM..Food'),
('PROD24', 'Madlib', '1973-10-24','1993-Present','GENRE02', 'Madvillainy, The Unseen'),
('PROD25', 'deadmau5', '1981-01-05','1998-Present','GENRE03', 'Random Album Title, For Lack of a Better Name'),
('PROD26', 'Nellee Hooper','1963-03-15','1985-Present','GENRE04', 'Homogenic, Dummy'),
('PROD27', 'Mark Bell','1971-04-21','1988-2014','GENRE03', 'Homogenic, LFO'),
('PROD28', 'Björk','1965-11-21','1977-Present','GENRE04', 'Homogenic, Vulnicura'),
('PROD29', 'Teo Macero','1925-10-30','1953-2008','GENRE05', 'Kind of Blue, Bitches Brew'),
('PROD30', 'Johnny J','1969-08-28','1989-2008','GENRE02', 'All Eyez on Me, Me Against the World'),
('PROD31', 'DJ Quik','1970-01-18','1987-Present','GENRE02', 'All Eyez on Me, Safe + Sound'),
('PROD32', 'Ralf Hütter','1946-08-20','1969-Present','GENRE03', 'The Man Machine, Computer World'),
('PROD33', 'Florian Schneider','1947-04-07','1968-2008','GENRE03','The Man Machine, Autobahn'),
('PROD34', 'Thomas Bangalter','1975-01-03','1993-2021','GENRE03','Discovery, Random Access Memories'),
('PROD35', 'Guy-Manuel de Homem-Christo','1974-02-08','1993-2021','GENRE03', 'Discovery, Homework'),
('PROD36', 'John Congleton', '1977-04-05','2000-Present','GENRE04', 'Blue Rev, St. Vincent'),
('PROD37', 'Ben Allen', '1977-08-14','2000-Present','GENRE04', 'Merriweather Post Pavilion, Halcyon Digest'),
('PROD38', 'Animal Collective',NULL,'2000-Present','GENRE04', 'Merriweather Post Pavilion, Sung Tongs'),
('PROD39', 'George Martin','1926-01-03','1950-2016','GENRE01','Sgt. Pepper''s Lonely Hearts Club Band, Revolver'),
('PROD40', 'Brian Wilson','1942-06-20','1961-Present','GENRE01', 'Pet Sounds, Smile'),
('PROD41', 'Radiohead',NULL,'1985-Present','GENRE01', 'Kid A, OK Computer'),
('PROD42', 'Q-Tip','1970-04-10', '1988-Present','GENRE02', 'The Low End Theory, Midnight Marauders'),
('PROD43', 'Skeff Anselm',NULL,'1970-Present','GENRE02', 'The Low End Theory, 3 Feet High and Rising'),
('PROD44', 'Trent Reznor','1965-05-17','1988-Present', 'GENRE01', 'The Downward Spiral, Year Zero'),
('PROD45', 'Flood','1960-08-16', '1980-Present', 'GENRE01', 'The Downward Spiral, Violator'),
('PROD46', 'Rick Rubin','1963-03-10', '1983-Present', 'GENRE03', 'Toxicity, Reign in Blood'),
('PROD47', 'Daron Malakian','1975-07-18', '1994-Present', 'GENRE06', 'Toxicity, Hypnotize'),
('PROD48', 'Organized Noize',NULL,'1992-Present', 'GENRE02', 'Stankonia, Southernplayalisticadillacmuzik'),
('PROD49', 'Earthtone III',NULL,'1992-Present', 'GENRE02', 'Stankonia, Aquemini'),
('PROD50', 'Andy Morin','1985-09-16', '2000-Present', 'GENRE03', 'The Money Store, No Love Deep Web'),
('PROD51', 'Zach Hill','1979-12-28', '2000-Present', 'GENRE03', 'The Money Store, Year of the Snitch'),
('PROD52', 'Daveed Diggs','1982-01-24', '2010-Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD53', 'William Hutson','1981-05-07', '2010-Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD54', 'Jonathan Snipes','1980-01-05', '2010-Present', 'GENRE02', 'There Existed an Addiction to Blood, Splendor & Misery'),
('PROD55', 'George Clinton','1941-07-22', '1960-Present', 'GENRE06', 'Maggot Brain, Cosmic Slop'),
('PROD56', 'Eddie Hazel','1950-04-10', '1967-1992', 'GENRE06', 'Maggot Brain, Standing on the Verge of Getting It On'),
('PROD57', 'Thurston Moore','1958-07-25', '1977-Present', 'GENRE01', 'Daydream Nation, Goo'),
('PROD58', 'Sonic Youth',NULL,'1981-2011', 'GENRE01', 'Daydream Nation, Washing Machine'),
('PROD59', 'Nick Sansano','1960-09-22', '1985-Present', 'GENRE01', 'Daydream Nation, The Cult'),
('PROD60', 'Pharrell Williams','1973-04-5', '1992-Present', 'GENRE03', 'Drop It Like It''s Hot, Happy, Hollaback Girl');
INSERT INTO Album (album_id, album_name, artist_id, band_id, genre_id, label_id, release_date, country_of_origin, duration_time)
VALUES
('ALBUM01', 'Blackstar', 'ARTIST01', NULL, 'GENRE01', 'LABEL01', '2016-01-06', 'UK', '00:41:44'),
('ALBUM02', 'To Pimp a Butterfly', 'ARTIST02', NULL, 'GENRE02', 'LABEL02', '2015-03-15', 'US', '01:19:05'),
('ALBUM03', 'Selected Ambient Works 85-92', 'ARTIST03', NULL, 'GENRE03', 'LABEL03', '1992-02-12', 'Ireland', '01:14:22'),
('ALBUM04', 'The Eminem Show', 'ARTIST04', NULL, 'GENRE02', 'LABEL04', '2002-05-26', 'US', '01:17:20'),
('ALBUM05', 'Hot Rats', 'ARTIST05', NULL, 'GENRE01', 'LABEL05', '1969-10-10', 'US', '00:43:14'),
('ALBUM06', 'Atrocity Exhibition', 'ARTIST06', NULL, 'GENRE02', 'LABEL06', '2016-09-27', 'US', '00:46:57'),
('ALBUM07', 'After Hours', 'ARTIST07', NULL, 'GENRE04', 'LABEL07', '2020-03-20', 'Canada', '00:56:17'),
('ALBUM08', 'Quest for Fire', 'ARTIST08', NULL, 'GENRE03', 'LABEL08', '2023-02-17', 'US', '00:44:20'),
('ALBUM09', 'Hit Me Hard and Soft', 'ARTIST09', NULL, 'GENRE04', 'LABEL02', '2024-05-17', 'US', '00:43:45'),
('ALBUM10', 'brat.', 'ARTIST10', NULL, 'GENRE04', 'LABEL08', '2024-06-07', 'UK', '00:41:23'),
('ALBUM11', 'Madvillainy', 'ARTIST11', NULL, 'GENRE02', 'LABEL11', '2004-03-23', 'US', '00:46:24'),
('ALBUM12', 'Random Album Title', 'ARTIST12', NULL, 'GENRE03', 'LABEL12', '2008-09-02', 'Canada', '00:58:40'),
('ALBUM13', 'Homogenic', 'ARTIST13', NULL, 'GENRE04', 'LABEL13', '1997-09-22', 'Iceland', '00:43:42'),
('ALBUM14', 'Bitches Brew', 'ARTIST14', NULL, 'GENRE05', 'LABEL14', '1970-03-30', 'US', '01:33:57'),
('ALBUM15', 'All Eyez on Me', 'ARTIST15', NULL, 'GENRE02', 'LABEL15', '1996-02-13', 'US', '01:32:14'),
('ALBUM16', 'The Man Machine', NULL, 'BAND01', 'GENRE03', 'LABEL16', '1978-05-19', 'Germany', '00:36:26'),
('ALBUM17', 'Discovery', NULL, 'BAND02', 'GENRE03', 'LABEL17', '2001-03-12', 'France', '01:00:22'),
('ALBUM18', 'Blue Rev', NULL, 'BAND03', 'GENRE04', 'LABEL18', '2022-10-07', 'Canada', '00:39:32'),
('ALBUM19', 'Merriweather Post Pavilion', NULL, 'BAND04', 'GENRE04', 'LABEL19', '2009-01-06', 'US', '00:54:50'),
('ALBUM20', 'Sgt. Pepper''s Lonely Hearts Club Band', NULL, 'BAND05', 'GENRE01', 'LABEL20', '1967-05-26', 'UK', '00:39:52'),
('ALBUM21', 'Pet Sounds', NULL, 'BAND06', 'GENRE01', 'LABEL21', '1966-05-16', 'US', '00:35:57'),
('ALBUM22', 'Kid A', NULL, 'BAND07', 'GENRE01', 'LABEL22', '2000-10-02', 'UK', '00:49:57'),
('ALBUM23', 'The Low End Theory', NULL, 'BAND08', 'GENRE02', 'LABEL23', '1991-09-24', 'US', '00:48:38'),
('ALBUM24', 'The Downward Spiral', NULL, 'BAND09', 'GENRE09', 'LABEL24', '1994-03-08', 'US', '01:05:07'),
('ALBUM25', 'Toxicity', NULL, 'BAND10', 'GENRE09', 'LABEL25', '2001-09-04', 'US', '00:44:01'),
('ALBUM26', 'Stankonia', NULL, 'BAND11', 'GENRE02', 'LABEL26', '2000-10-31', 'US', '01:13:56'),
('ALBUM27', 'The Money Store', NULL, 'BAND12', 'GENRE08', 'LABEL27', '2012-04-24', 'US', '00:41:22'),
('ALBUM28', 'There Existed an Addiction to Blood', NULL, 'BAND13', 'GENRE02', 'LABEL28', '2019-10-18', 'US', '01:04:00'),
('ALBUM29', 'Maggot Brain', NULL, 'BAND14', 'GENRE06', 'LABEL29', '1971-07-12', 'US', '00:36:51'),
('ALBUM30', 'Daydream Nation', NULL, 'BAND15', 'GENRE01', 'LABEL30', '1988-10-18', 'US', '01:10:50');
INSERT INTO Album_Subgenre (album_id, subgenre_id)
VALUES
('ALBUM01', 'SGEN01'), -- A: Blackstar 									S: Jazz Fusion
('ALBUM01', 'SGEN02'), -- A: Blackstar									S: Glam Rock
('ALBUM01', 'SGEN03'), -- A: Blackstar									S:
('ALBUM01', 'SGEN25'), -- A: Blackstar									S:
('ALBUM02', 'SGEN04'), -- A: To Pimp a Butterfly						S:
('ALBUM02', 'SGEN05'), -- A: To Pimp a Butterfly						S:
('ALBUM02', 'SGEN30'), -- A: To Pimp a Butterfly						S:
('ALBUM03', 'SGEN07'), -- A: Selected Ambient Works 85-92				S:
('ALBUM03', 'SGEN08'), -- A: Selected Ambient Works 85-92				S:
('ALBUM04', 'SGEN09'), -- A: The Eminem Show							S:
('ALBUM04', 'SGEN10'), -- A: The Eminem Show							S:
('ALBUM04', 'SGEN13'), -- A: The Eminem Show							S:
('ALBUM05', 'SGEN01'), -- A: Hot Rats									S:
('ALBUM05', 'SGEN03'), -- A: Hot Rats									S:
('ALBUM05', 'SGEN25'), -- A: Hot Rats									S:
('ALBUM06', 'SGEN04'), -- A: Atrocity Exhibition						S:
('ALBUM06', 'SGEN09'), -- A: Atrocity Exhibition						S:
('ALBUM06', 'SGEN13'), -- A: Atrocity Exhibition						S:
('ALBUM06', 'SGEN14'), -- A: Atrocity Exhibition						S:
('ALBUM06', 'SGEN15'), -- A: Atrocity Exhibition						S:
('ALBUM07', 'SGEN16'), -- A: After Hours								S:
('ALBUM07', 'SGEN17'), -- A: After Hours								S:
('ALBUM07', 'SGEN18'), -- A: After Hours								S:
('ALBUM07', 'SGEN22'), -- A: After Hours								S:
('ALBUM08', 'SGEN19'), -- A: Quest for Fire								S:
('ALBUM08', 'SGEN20'), -- A: Quest for Fire								S:
('ALBUM08', 'SGEN24'), -- A: Quest for Fire								S:
('ALBUM09', 'SGEN21'), -- A: brat.										S:
('ALBUM09', 'SGEN22'), -- A: brat. 										S:
('ALBUM09', 'SGEN23'), -- A: brat. 										S:
('ALBUM09', 'SGEN24'), -- A: brat.										S:
('ALBUM10', 'SGEN16'), -- A: Hit Me Hard and Soft						S:
('ALBUM10', 'SGEN18'), -- A: Hit Me Hard and Soft						S:
('ALBUM10', 'SGEN20'), -- A: Hit Me Hard and Soft						S:
('ALBUM11', 'SGEN05'), -- A: Madvillainy								S:
('ALBUM11', 'SGEN13'), -- A: Madvillainy								S:
('ALBUM12', 'SGEN24'), -- A: Random Album Title							S:
('ALBUM12', 'SGEN25'), -- A: Random Album Title							S:
('ALBUM13', 'SGEN16'), -- A: Homogenic									S:
('ALBUM13', 'SGEN18'), -- A: Homogenic									S:
('ALBUM13', 'SGEN20'), -- A: Homogenic									S:
('ALBUM14', 'SGEN27'), -- A: Bitches' Brew								S:
('ALBUM14', 'SGEN28'), -- A: Bitches' Brew								S:
('ALBUM15', 'SGEN04'), -- A: All Eyez on Me								S:
('ALBUM15', 'SGEN29'), -- A: All Eyez on Me								S:
('ALBUM15', 'SGEN30'), -- A: All Eyez on Me								S:
('ALBUM16', 'SGEN18'), -- A: The Man Machine							S:
('ALBUM16', 'SGEN16'), -- A: The Man Machine							S:
('ALBUM17', 'SGEN24'), -- A: Discovery									S:
('ALBUM17', 'SGEN20'), -- A: Discovery									S:
('ALBUM17', 'SGEN31'), -- A: Discovery									S:
('ALBUM18', 'SGEN22'), -- A: Blue Rev									S:
('ALBUM18', 'SGEN32'), -- A: Blue Rev									S:
('ALBUM18', 'SGEN33'), -- A: Blue Rev									S:
('ALBUM18', 'SGEN20'), -- A: Blue Rev									S:
('ALBUM19', 'SGEN24'), -- A: Merriweather Post Pavillion				S:
('ALBUM19', 'SGEN33'), -- A: Merriweather Post Pavillion				S:
('ALBUM19', 'SGEN20'), -- A: Merriweather Post Pavillion				S:
('ALBUM20', 'SGEN28'), -- A: Sgt. Pepper's Lonely Hearts Club Band
('ALBUM20', 'SGEN25'), -- A: Sgt. Pepper's Lonely Hearts Club Band
('ALBUM21', 'SGEN28'), -- A: Pet Sounds
('ALBUM21', 'SGEN34'), -- A: Pet Sounds
('ALBUM21', 'SGEN03'), -- A: Pet Sounds
('ALBUM22', 'SGEN26'), -- A: Kid A
('ALBUM22', 'SGEN33'), -- A: Kid A
('ALBUM22', 'SGEN03'), -- A: Kid A
('ALBUM22', 'SGEN08'), -- A: Kid A
('ALBUM23', 'SGEN05'), -- A: The Low End Theory
('ALBUM23', 'SGEN04'), -- A: The Low End Theory
('ALBUM23', 'SGEN30'), -- A: The Low End Theory
('ALBUM24', 'SGEN12'), -- A: The Downward Spiral
('ALBUM24', 'SGEN08'), -- A: The Downward Spiral
('ALBUM25', 'SGEN06'), -- A: Toxicity
('ALBUM25', 'SGEN36'), -- A: Toxicity
('ALBUM26', 'SGEN30'), -- A: Stankonia
('ALBUM26', 'SGEN02'), -- A: Stankonia
('ALBUM27', 'SGEN08'), -- A: The Money Store
('ALBUM27', 'SGEN09'), -- A: The Money Store
('ALBUM27', 'SGEN13'), -- A: The Money Store
('ALBUM27', 'SGEN31'), -- A: The Money Store
('ALBUM27', 'SGEN15'), -- A: The Money Store
('ALBUM28', 'SGEN09'), -- A: There Existed an Addiction to Blood 
('ALBUM28', 'SGEN10'), -- A: There Existed an Addiction to Blood
('ALBUM28', 'SGEN15'), -- A: There Existed an Addiction to Blood
('ALBUM29', 'SGEN06'), -- A: Maggot Brain
('ALBUM29', 'SGEN34'), -- A: Maggot Brain
('ALBUM30', 'SGEN03'), -- A: Daydream Nation
('ALBUM30', 'SGEN25'); -- A: Daydream Nation
INSERT INTO Album_Producer (album_id, producer_id)
VALUES
('ALBUM01', 'PROD01'), -- A: Blackstar										P: Tony Visconti
('ALBUM01', 'PROD02'), -- A: Blackstar										P: David Bowie
('ALBUM02', 'PROD03'), -- A: To Pimp a Butterfly							P:
('ALBUM02', 'PROD04'), -- A: To Pimp a Butterfly							P:
('ALBUM02', 'PROD05'), -- A: To Pimp a Butterfly							P:
('ALBUM02', 'PROD55'), -- A: To Pimp a Butterfly							P:
('ALBUM02', 'PROD06'), -- A: To Pimp a Butterfly							P:
('ALBUM02', 'PROD60'), -- A: To Pimp a Butterfly							P:
('ALBUM03', 'PROD07'), -- A: Selected Ambient Works 85-92					P:
('ALBUM04', 'PROD03'), -- A: The Eminem Show								P:
('ALBUM04', 'PROD08'), -- A: The Eminem Show								P:
('ALBUM04', 'PROD09'), -- A: The Eminem Show								P:
('ALBUM05', 'PROD10'), -- A: Hot Rats										P:
('ALBUM06', 'PROD11'), -- A: Atrocity Exhibition							P:
('ALBUM06', 'PROD12'), -- A: Atrocity Exhibition							P:
('ALBUM06', 'PROD13'), -- A: Atrocity Exhibition							P:
('ALBUM07', 'PROD14'), -- A: After Hours									P:
('ALBUM07', 'PROD15'), -- A: After Hours									P:
('ALBUM07', 'PROD16'), -- A: After Hours									P:
('ALBUM08', 'PROD17'), -- A: Quest for Fire									P:
('ALBUM08', 'PROD18'), -- A: Quest for Fire									P:
('ALBUM08', 'PROD19'), -- A: Quest for Fire									P:
('ALBUM09', 'PROD20'), -- A: brat.											P:
('ALBUM09', 'PROD21'), -- A: brat.											P:
('ALBUM10', 'PROD22'), -- A: Hit Me Hard and Soft							P:
('ALBUM11', 'PROD23'), -- A: Madvillainy									P:
('ALBUM11', 'PROD24'), -- A: Madvillainy									P:
('ALBUM12', 'PROD25'), -- A: Random Album Title								P:
('ALBUM13', 'PROD26'), -- A: Homogenic										P:
('ALBUM13', 'PROD27'), -- A: Homogenic										P:
('ALBUM13', 'PROD28'), -- A: Homogenic										P:				
('ALBUM14', 'PROD29'), -- A: Bitches' Brew									P:
('ALBUM15', 'PROD03'), -- A: All Eyez on Me									P:
('ALBUM15', 'PROD30'), -- A: All Eyez on Me									P:
('ALBUM15', 'PROD31'), -- A: All Eyez on Me									P:
('ALBUM16', 'PROD32'), -- A: The Man Machine								P:
('ALBUM16', 'PROD33'), -- A: The Man Machine								P:
('ALBUM17', 'PROD34'), -- A: Discovery										P:
('ALBUM17', 'PROD35'), -- A: Discovery										P:
('ALBUM18', 'PROD36'), -- A: Blue Rev										P:
('ALBUM19', 'PROD37'), -- A: Merriweather Post Pavillion					P:
('ALBUM19', 'PROD38'), -- A: Merriweather Post Pavillion					P:
('ALBUM20', 'PROD39'), -- A: Sgt. Pepper's Lonely Hearts Club Band			P:
('ALBUM21', 'PROD40'), -- A: Pet Sounds										P:
('ALBUM22', 'PROD41'), -- A: Kid A											P:
('ALBUM23', 'PROD42'), -- A: The Low End Theory								P:
('ALBUM23', 'PROD43'), -- A: The Low End Theory								P:
('ALBUM24', 'PROD44'), -- A: The Downward Spiral							P:
('ALBUM24', 'PROD45'), -- A: The Downward Spiral							P:
('ALBUM25', 'PROD46'), -- A: Toxicity										P:
('ALBUM25', 'PROD47'), -- A: Toxicity										P:
('ALBUM26', 'PROD48'), -- A: Stankonia										P:
('ALBUM26', 'PROD49'), -- A: Stankonia										P:
('ALBUM27', 'PROD50'), -- A: The Money Store								P:
('ALBUM27', 'PROD51'), -- A: The Money Store								P:
('ALBUM28', 'PROD52'), -- A: There Existed an Addiction to Blood			P:
('ALBUM28', 'PROD53'), -- A: There Existed an Addiction to Blood			P:
('ALBUM28', 'PROD54'), -- A: There Existed an Addiction to Blood			P:
('ALBUM29', 'PROD55'), -- A: Maggot Brain									P:
('ALBUM29', 'PROD56'), -- A: Maggot Brain									P:
('ALBUM30', 'PROD57'), -- A: Daydream Nation								P:
('ALBUM30', 'PROD58'), -- A: Daydream Nation								P:
('ALBUM30', 'PROD59'); -- A: Daydream Nation								P:
INSERT INTO Track (track_id, track_name, artist_id, band_id, album_id, genre_id, label_id, isrc, release_date, duration_time)
VALUES
('TRACK01', 'Lazarus', 'ARTIST01', NULL, 'ALBUM01', 'GENRE01','LABEL01', 'USRF31500003', '2016-01-06', '00:06:22'),
('TRACK02', 'Alright', 'ARTIST02', NULL, 'ALBUM02', 'GENRE02','LABEL02', 'USUM71508090', '2015-03-15', '00:03:39'),
('TRACK03', 'Xtal', 'ARTIST03', NULL, 'ALBUM03', 'GENRE03','LABEL03', 'GBBPW0399102', '1992-02-12', '00:04:52'),
('TRACK04', 'Cleanin'' Out My Closet', 'ARTIST04', NULL, 'ALBUM04', 'GENRE02','LABEL04','USIR10211054', '2002-05-26', '00:04:57'),
('TRACK05', 'Peaches en Regalia', 'ARTIST05', NULL, 'ALBUM05', 'GENRE05','LABEL05', 'USRC16900145', '1969-10-10', '00:03:58'),
('TRACK06', 'Really Doe', 'ARTIST06', NULL, 'ALBUM06', 'GENRE02','LABEL06', 'USQX91602348', '2016-09-27', '00:05:19'),
('TRACK07', 'Blinding Lights', 'ARTIST07', NULL, 'ALBUM07', 'GENRE04','LABEL07', 'USUM71900764', '2020-03-20', '00:03:20'),
('TRACK08', 'XENA', 'ARTIST08', NULL, 'ALBUM08', 'GENRE03','LABEL08', 'USAT22300340', '2023-02-17', '00:04:21'),
('TRACK09', 'Apple', 'ARTIST09', NULL, 'ALBUM09', 'GENRE04','LABEL09', 'USAT22401350', '2024-05-17', '00:02:31'),
('TRACK10', 'Birds of a Feather', 'ARTIST10', NULL, 'ALBUM10', 'GENRE04','LABEL10', 'USUM72401994 ', '2024-06-07', '00:03:30'),
('TRACK11', 'Accordion', 'ARTIST11', NULL, 'ALBUM11', 'GENRE02','LABEL11', 'USUG10300539', '2004-03-23', '00:01:58'),
('TRACK12', 'Faxing Berlin', 'ARTIST12', NULL, 'ALBUM12', 'GENRE03','LABEL12', 'CAUM71201234', '2006-11-05', '00:08:02'),
('TRACK13', 'Bachelorette', 'ARTIST13', NULL, 'ALBUM13', 'GENRE04','LABEL13', 'GBUM71701045', '1997-09-22', '00:05:18'),
('TRACK14', 'Pharaoh’s Dance', 'ARTIST14', NULL, 'ALBUM14', 'GENRE05','LABEL14', 'USSM16900301', '1970-03-30', '00:20:06'),
('TRACK15', 'California Love', 'ARTIST15', NULL, 'ALBUM15', 'GENRE02','LABEL15', 'USDR19600035', '1996-02-13', '00:04:45'),
('TRACK16', 'The Robots', NULL, 'BAND01', 'ALBUM16', 'GENRE03','LABEL16', 'DEUM70701234', '1978-05-19', '00:06:12'),
('TRACK17', 'Harder, Better, Faster, Stronger', NULL, 'BAND02', 'ALBUM17', 'GENRE03','LABEL17','FRP39600023', '2001-03-12', '00:03:44'),
('TRACK18', 'Belinda Says', NULL, 'BAND03', 'ALBUM18', 'GENRE04','LABEL18', 'USUM72400312', '2022-10-07', '00:04:08'),
('TRACK19', 'My Girls', NULL, 'BAND04', 'ALBUM19', 'GENRE04','LABEL19','USDM70900115', '2009-01-06', '00:05:40'),
('TRACK20', 'Lucy in the Sky with Diamonds', NULL, 'BAND05', 'ALBUM20', 'GENRE01','LABEL20', 'GBAYE6700019', '1967-05-26', '00:03:28'),
('TRACK21', 'God Only Knows', NULL, 'BAND06', 'ALBUM21', 'GENRE01','LABEL21','USC360010013', '1966-05-16', '00:02:51'),
('TRACK22', 'Everything in Its Right Place', NULL, 'BAND07', 'ALBUM22', 'GENRE01','LABEL22', 'GBETR0000103', '2000-10-02', '00:04:11'),
('TRACK23', 'Scenario', NULL, 'BAND08', 'ALBUM23', 'GENRE02','LABEL23', 'USZM20500077', '1991-09-24', '00:04:10'),
('TRACK24', 'Closer', NULL, 'BAND09', 'ALBUM24', 'GENRE01','LABEL24', 'USIR29400034', '1994-03-08', '00:06:13'),
('TRACK25', 'Chop Suey!', NULL, 'BAND10', 'ALBUM25', 'GENRE06','LABEL25', 'USSM10113049', '2001-09-04', '00:03:30'),
('TRACK26', 'Ms. Jackson', NULL, 'BAND11', 'ALBUM26', 'GENRE02','LABEL26','USLF40000425', '2000-10-31', '00:04:30'),
('TRACK27', 'Get Got', NULL, 'BAND12', 'ALBUM27', 'GENRE02','LABEL27', 'USUB10800301', '2012-04-24', '00:02:51'),
('TRACK28', 'Nothing is Safe', NULL, 'BAND13', 'ALBUM28', 'GENRE02','LABEL28', 'USSUB1933002', '2019-10-18', '00:03:43'),
('TRACK29', 'Maggot Brain', NULL, 'BAND14', 'ALBUM29', 'GENRE06','LABEL29', 'USWB19901732', '1971-07-12', '00:10:21'),
('TRACK30', 'Teen Age Riot', NULL, 'BAND15', 'ALBUM30', 'GENRE01','LABEL30', 'USGI28900232', '1988-10-18', '00:06:57');
INSERT INTO Track_Subgenre (track_id, subgenre_id)
VALUES
('TRACK01', 'SGEN01'), -- T: Lazarus								S:
('TRACK01', 'SGEN02'), -- T: Lazarus								S:
('TRACK01', 'SGEN03'), -- T: Lazarus								S:
('TRACK01', 'SGEN25'), -- T: Lazarus								S:
('TRACK02', 'SGEN04'), -- T: Alright								S:
('TRACK02', 'SGEN05'), -- T: Alright								S:
('TRACK02', 'SGEN30'), -- T: Alright								S:
('TRACK03', 'SGEN07'), -- T: Xtal									S:
('TRACK03', 'SGEN08'), -- T: Xtal									S:
('TRACK04', 'SGEN09'), -- T: Cleanin' Out My Closet					S:
('TRACK04', 'SGEN13'), -- T: Cleanin' Out My Closet					S:
('TRACK05', 'SGEN01'), -- T: Peaches En Regalia						S:
('TRACK05', 'SGEN03'), -- T: Peaches En Regalia						S:
('TRACK05', 'SGEN25'), -- T: Peaches En Regalia						S:
('TRACK06', 'SGEN04'), -- T: Really Doe								S:
('TRACK06', 'SGEN09'), -- T: Really Doe								S:
('TRACK06', 'SGEN13'), -- T: Really Doe								S:
('TRACK06', 'SGEN14'), -- T: Really Doe								S:
('TRACK06', 'SGEN15'), -- T: Really Doe								S:
('TRACK07', 'SGEN16'), -- T: Blinding Lights						S:
('TRACK07', 'SGEN17'), -- T: Blinding Lights						S:
('TRACK07', 'SGEN18'), -- T: Blinding Lights						S:
('TRACK07', 'SGEN22'), -- T: Blinding Lights						S:
('TRACK08', 'SGEN19'), -- T: XENA									S:	
('TRACK08', 'SGEN20'), -- T: XENA									S:
('TRACK08', 'SGEN24'), -- T: XENA									S:
('TRACK09', 'SGEN21'), -- T: Apple									S:
('TRACK09', 'SGEN22'), -- T: Apple									S:
('TRACK09', 'SGEN23'), -- T: Apple									S:
('TRACK09', 'SGEN24'), -- T: Apple									S:
('TRACK10', 'SGEN16'), -- T: Birds of a Feather						S:
('TRACK10', 'SGEN18'), -- T: Birds of a Feather						S:
('TRACK10', 'SGEN20'), -- T: Birds of a Feather						S:
('TRACK11', 'SGEN05'), -- T: Accordion								S:
('TRACK11', 'SGEN13'), -- T: Accordion								S:
('TRACK12', 'SGEN24'), -- T: Faxing Berlin							S:
('TRACK12', 'SGEN25'), -- T: Faxing Berlin							S:
('TRACK13', 'SGEN16'), -- T: Bachelorette							S:
('TRACK13', 'SGEN18'), -- T: Bachelorette							S:
('TRACK13', 'SGEN20'), -- T: Bachelorette							S:
('TRACK14', 'SGEN27'), -- T: Pharoah's Dance						S:
('TRACK14', 'SGEN28'), -- T: Pharoah's Dance						S:
('TRACK15', 'SGEN04'), -- T: California Love						S:
('TRACK15', 'SGEN29'), -- T: California Love						S:
('TRACK15', 'SGEN30'), -- T: California Love						S:
('TRACK16', 'SGEN18'), -- T: The Robots								S:
('TRACK16', 'SGEN16'), -- T: The Robots								S:
('TRACK17', 'SGEN24'), -- T: Harder, Better, Faster, Stronger		S:
('TRACK17', 'SGEN20'), -- T: Harder, Better, Faster, Stronger		S:
('TRACK17', 'SGEN31'), -- T: Harder, Better, Faster, Stronger		S:
('TRACK18', 'SGEN22'), -- T: Belinda Says							S:
('TRACK18', 'SGEN32'), -- T: Belinda Says							S:
('TRACK18', 'SGEN33'), -- T: Belinda Says							S:
('TRACK18', 'SGEN20'), -- T: Belinda Says							S:
('TRACK19', 'SGEN24'), -- T: My Girls								S:
('TRACK19', 'SGEN33'), -- T: My Girls								S:
('TRACK19', 'SGEN20'), -- T: My Girls								S:
('TRACK20', 'SGEN28'), -- T: Lucy in the Sky With Diamonds			S:
('TRACK20', 'SGEN25'), -- T: Lucy in the Sky With Diamonds			S:
('TRACK21', 'SGEN28'), -- T: God Only Knows							S:
('TRACK21', 'SGEN34'), -- T: God Only Knows							S:
('TRACK21', 'SGEN03'), -- T: God Only Knows							S:
('TRACK22', 'SGEN26'), -- T: Everything in its Right Place			S:
('TRACK22', 'SGEN33'), -- T: Everything in its Right Place			S:
('TRACK22', 'SGEN03'), -- T: Everything in its Right Place			S:
('TRACK22', 'SGEN08'), -- T: Everything in its Right Place			S:
('TRACK23', 'SGEN05'), -- T: Scenario								S:
('TRACK23', 'SGEN04'), -- T: Scenario								S:
('TRACK23', 'SGEN30'), -- T: Scenario								S:
('TRACK24', 'SGEN12'), -- T: Closer									S:
('TRACK24', 'SGEN08'), -- T: Closer									S:
('TRACK25', 'SGEN06'), -- T: Chop Suey!								S:
('TRACK25', 'SGEN36'), -- T: Chop Suey!								S:
('TRACK26', 'SGEN30'), -- T: Ms. Jackson							S:
('TRACK26', 'SGEN02'), -- T: Ms. Jackson							S:
('TRACK27', 'SGEN08'), -- T: Get Got								S:
('TRACK27', 'SGEN09'), -- T: Get Got								S:
('TRACK27', 'SGEN13'), -- T: Get Got								S:
('TRACK27', 'SGEN31'), -- T: Get Got								S:
('TRACK27', 'SGEN15'), -- T: Get Got								S:
('TRACK28', 'SGEN09'), -- T: Nothing is Safe						S:
('TRACK28', 'SGEN10'), -- T: Nothing is Safe						S:
('TRACK28', 'SGEN15'), -- T: Nothing is Safe						S:
('TRACK29', 'SGEN06'), -- T: Maggot Brain							S:
('TRACK29', 'SGEN34'), -- T: Maggot Brain							S:
('TRACK30', 'SGEN03'), -- T: Teen Age Riot							S:
('TRACK30', 'SGEN25'); -- T: Teen Age Riot							S:
INSERT INTO Track_Producer (track_id, producer_id)
VALUES
('TRACK01', 'PROD01'), -- T: Lazarus 							P: 
('TRACK01', 'PROD02'), -- T: Lazarus							P:
('TRACK02', 'PROD03'), -- T: Alright							P: 
('TRACK02', 'PROD04'), -- T: Alright							P: 
('TRACK02', 'PROD05'), -- T: Alright							P: 
('TRACK02', 'PROD06'), -- T: Alright							P: 
('TRACK02', 'PROD60'), -- T: Alright							P: 
('TRACK03', 'PROD07'), -- T: Xtal					    		P: 
('TRACK04', 'PROD03'), -- T: Cleanin' Out My Closet				P: 
('TRACK04', 'PROD08'), -- T: Cleanin' Out My Closet				P: 
('TRACK04', 'PROD09'), -- T: Cleanin' Out My Closet				P: 
('TRACK05', 'PROD10'), -- T: Peaches en Regalia					P: 
('TRACK06', 'PROD11'), -- T: Really Doe				    		P: 
('TRACK06', 'PROD12'), -- T: Really Doe		            		P: 
('TRACK06', 'PROD13'), -- T: Really Doe		            		P: 
('TRACK07', 'PROD14'), -- T: Blinding Lights		   		    P: 
('TRACK07', 'PROD15'), -- T: Blinding Lights		   			P: 
('TRACK07', 'PROD16'), -- T: Blinding Lights					P: 
('TRACK08', 'PROD17'), -- T: XENA 								P: 
('TRACK08', 'PROD18'), -- T: XENA								P: 
('TRACK08', 'PROD19'), -- T: XENA								P: 
('TRACK09', 'PROD20'), -- T: Apple								P: 
('TRACK09', 'PROD21'), -- T: Apple         						P: 
('TRACK10', 'PROD22'), -- T: Birds of a Feather					P: 
('TRACK11', 'PROD23'), -- T: Accordion							P: 
('TRACK11', 'PROD24'), -- T: Accordion							P: 
('TRACK12', 'PROD25'), -- T: Faxing Berlin             	 		P: 
('TRACK13', 'PROD26'), -- T: Bachelorette 						P: 
('TRACK13', 'PROD27'), -- T: Bachelorette 						P: 
('TRACK13', 'PROD28'), -- T: Bachelorette 						P: 
('TRACK14', 'PROD29'), -- T: Pharaoh’s Dance					P: 
('TRACK15', 'PROD30'), -- T: California Love					P: 
('TRACK15', 'PROD31'), -- T: California Love					P: 					
('TRACK16', 'PROD32'), -- T: The Robots							P: 
('TRACK16', 'PROD33'), -- T: The Robots							P: 
('TRACK17', 'PROD34'), -- T: Harder, Better, Faster, Stronger 	P: 
('TRACK17', 'PROD35'), -- T: Harder, Better, Faster, Stronger	P: 
('TRACK18', 'PROD36'), -- T: Belinda Says						P: 
('TRACK19', 'PROD37'), -- T: My Girls							P: 
('TRACK19', 'PROD38'), -- T: My Girls							P: 
('TRACK20', 'PROD39'), -- T: Lucy in the Sky with Diamonds		P: 
('TRACK21', 'PROD40'), -- T: God Only Knows						P: 
('TRACK22', 'PROD41'), -- T: Everything in Its Right Place		P: 
('TRACK23', 'PROD42'), -- T: Scenario							P: 
('TRACK23', 'PROD43'), -- T: Scenario							P: 
('TRACK24', 'PROD44'), -- T: Closer								P: 
('TRACK24', 'PROD45'), -- T: Closer								P: 
('TRACK25', 'PROD46'), -- T: Chop Suey!							P: 
('TRACK25', 'PROD47'), -- T: Chop Suey!							P: 
('TRACK26', 'PROD48'), -- T: Ms. Jackson						P: 
('TRACK26', 'PROD49'), -- T: Ms. Jackson						P: 
('TRACK27', 'PROD50'), -- T: Get Got							P: 
('TRACK27', 'PROD51'), -- T: Get Got							P: 
('TRACK28', 'PROD52'), -- T: Nothing is Safe					P: 
('TRACK28', 'PROD53'), -- T: Nothing is Safe					P: 
('TRACK28', 'PROD54'), -- T: Nothing is Safe					P: 
('TRACK29', 'PROD55'), -- T: Maggot Brain						P: 
('TRACK29', 'PROD56'), -- T: Maggot Brain						P: 
('TRACK30', 'PROD57'), -- T: Teen Age Riot						P: 
('TRACK30', 'PROD58'), -- T: Teen Age Riot						P: 
('TRACK30', 'PROD59'); -- T: Teen Age Riot						P: 
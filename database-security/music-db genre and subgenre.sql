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


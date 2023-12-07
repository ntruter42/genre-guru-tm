-- Inserting genres
INSERT INTO guru.genres (name) VALUES
    ('Jazz');

-- Inserting Jazz questions
INSERT INTO guru.questions (question, level, genre_id) VALUES
    ('Who is known as the "Father of Jazz"?', 1, 1),
    ('Which instrument is often featured in a jazz quartet?', 1, 1),
    ('What is scat singing?', 2, 1),
    ('Which jazz musician is famous for his contributions to bebop?', 2, 1),
    ('In what city did jazz originate?', 3, 1),
    ('Who recorded the best-selling jazz album of all time, "Kind of Blue"?', 3, 1),
    ('What is a jazz standard?', 4, 1),
    ('Who is known for pioneering the cool jazz movement?', 4, 1),
    ('What is the term for the simultaneous improvisation by several musicians in jazz?', 5, 1),
    ('Which jazz trumpeter is famous for his distinctive bent trumpet?', 5, 1),
    ('What is the term for the basic rhythmic pattern in jazz music?', 1, 1),
    ('Who is considered the King of Swing in jazz history?', 1, 1),
    ('Which sub-genre of jazz incorporates elements of funk and soul music?', 2, 1),
    ('Name the famous jazz saxophonist known as "Bird."', 2, 1),
    ('What is the role of the double bass in a traditional jazz trio?', 3, 1);

-- Inserting Jazz answers
INSERT INTO guru.answers (question_id, option_one, option_two, option_three, option_four, correct_option) VALUES
    (1, 'Louis Armstrong', 'Duke Ellington', 'Jelly Roll Morton', 'Miles Davis', 'Louis Armstrong'),
    (2, 'Trumpet', 'Piano', 'Drums', 'Saxophone', 'Saxophone'),
    (3, 'Instrumental jazz compositions', 'Vocal improvisation', 'A fast jazz tempo', 'A form of jazz dance', 'Vocal improvisation'),
    (4, 'Charlie Parker', 'Dizzy Gillespie', 'Thelonious Monk', 'John Coltrane', 'Dizzy Gillespie'),
    (5, 'Chicago', 'New Orleans', 'New York', 'Los Angeles', 'New Orleans'),
    (6, 'John Coltrane', 'Miles Davis', 'Charlie Parker', 'Duke Ellington', 'Miles Davis'),
    (7, 'A musical composition that is widely recognized and performed by various artists', 'A type of jazz with complex harmony and fast tempos', 'A piece of music with a slow tempo', 'A style of jazz known for its melancholic sound', 'A musical composition that is widely recognized and performed by various artists'),
    (8, 'Dave Brubeck', 'Chet Baker', 'Stan Getz', 'Miles Davis', 'Dave Brubeck'),
    (9, 'Polyphony', 'Harmony', 'Counterpoint', 'Collective improvisation', 'Collective improvisation'),
    (10, 'Dizzy Gillespie', 'Clifford Brown', 'Miles Davis', 'Chet Baker', 'Dizzy Gillespie'),
    (11, 'Riff', 'Swing', 'Groove', 'Syncopation', 'Swing'),
    (12, 'Benny Goodman', 'Count Basie', 'Duke Ellington', 'Glenn Miller', 'Benny Goodman'),
    (13, 'Fusion jazz', 'Free jazz', 'Smooth jazz', 'Latin jazz', 'Latin jazz'),
    (14, 'John Coltrane', 'Dexter Gordon', 'Sonny Rollins', 'Stan Getz', 'Charlie Parker'),
    (15, 'Provide the rhythmic foundation', 'Lead the melody', 'Provide harmonic accompaniment', 'Play the main solos', 'Provide the rhythmic foundation');

-- Inserting genres
INSERT INTO guru.genres (name) VALUES
    ('Hip Hop');

-- Inserting Hip Hop questions
INSERT INTO guru.questions (question, level, genre_id) VALUES
    ('Who is considered the "Father of Hip Hop"?', 1, 2),
    ('What city is credited as the birthplace of Hip Hop?', 1, 2),
    ('What are the four main elements of Hip Hop culture?', 2, 2),
    ('Which artist released the album "The Chronic"?', 2, 2),
    ('What is the term for a rhythmic speech over a beat in Hip Hop?', 3, 2),
    ('Who is known for his alter ego Slim Shady?', 3, 2),
    ('What does the term "breakdancing" refer to in the context of Hip Hop?', 4, 2),
    ('Which Hip Hop group proclaimed to be the "world''s most dangerous group"?', 4, 2),
    ('What is the primary theme of Hip Hop music?', 5, 2),
    ('Who is considered the "King of New York" in Hip Hop?', 5, 2),
    ('What is the name of the famous Hip Hop festival held annually in California?', 1, 2),
    ('Which artist is known for the hit "Empire State of Mind"?', 1, 2),
    ('What is the significance of the term "sampling" in Hip Hop production?', 2, 2),
    ('Who is the founder of the record label Death Row Records?', 2, 2),
    ('What is the "East Coast vs. West Coast" rivalry in Hip Hop?', 3, 2);

-- Inserting Hip Hop answers
INSERT INTO guru.answers (question_id, option_one, option_two, option_three, option_four, correct_option) VALUES
    (16, 'Grandmaster Flash', 'DJ Kool Herc', 'Afrika Bambaataa', 'KRS-One', 'DJ Kool Herc'),
    (17, 'New York City', 'Los Angeles', 'Chicago', 'Atlanta', 'New York City'),
    (18, 'MCing, DJing, Breaking, Graffiti', 'Rapping, Singing, Dancing, Acting', 'Writing, Acting, Painting, Singing', 'Graffiti, Breaking, Singing, Producing', 'MCing, DJing, Breaking, Graffiti'),
    (19, 'Dr. Dre', 'Snoop Dogg', 'Ice Cube', 'Eazy-E', 'Dr. Dre'),
    (20, 'Flow', 'Rhyme', 'Beatboxing', 'Freestyle', 'Flow'),
    (21, 'Eminem', 'Jay-Z', 'Kanye West', 'Lil Wayne', 'Eminem'),
    (22, 'A style of dance originating in the Hip Hop culture', 'A term for a DJ mixing records', 'A type of graffiti art', 'A form of storytelling', 'A style of dance originating in the Hip Hop culture'),
    (23, 'N.W.A', 'Public Enemy', 'Wu-Tang Clan', 'OutKast', 'N.W.A'),
    (24, 'Social commentary', 'Love and Romance', 'Political satire', 'Sci-fi fantasy', 'Social commentary'),
    (25, 'Jay-Z', 'The Notorious B.I.G.', 'Nas', '2Pac', 'The Notorious B.I.G.'),
    (26, 'Coachella', 'Lollapalooza', 'Bonnaroo', 'Rolling Loud', 'Coachella'),
    (27, 'Jay-Z', 'Nas', 'Kanye West', 'Snoop Dogg', 'Jay-Z'),
    (28, 'Reusing and repurposing of existing audio recordings', 'Creating original lyrics', 'Mixing and mastering', 'Live instrumentation', 'Reusing and repurposing of existing audio recordings'),
    (29, 'Dr. Dre', 'Suge Knight', 'P. Diddy', 'Jay-Z', 'Dr. Dre'),
    (30, 'A rivalry between East Coast and West Coast rappers', 'A competition for the best music video', 'A feud between record labels', 'A battle of the DJs', 'A rivalry between East Coast and West Coast rappers');

-- Inserting genres
INSERT INTO guru.genres (name) VALUES
    ('Classical');

-- Inserting Classical questions
INSERT INTO guru.questions (question, level, genre_id) VALUES
    ('Who is known as the "Father of Classical Music"?', 1, 3),
    ('In what era did the Baroque period precede the Classical period?', 1, 3),
    ('What is the primary form of classical instrumental music?', 2, 3),
    ('Who composed "The Four Seasons"?', 2, 3),
    ('What is a symphony in classical music?', 3, 3),
    ('Which composer is known for his "Moonlight Sonata"?', 3, 3),
    ('What is the term for a composition written for a solo instrument in classical music?', 4, 3),
    ('Who is considered the "father of the symphony"?', 4, 3),
    ('Which period introduced the use of the piano as a primary instrument in classical music?', 5, 3),
    ('Who composed the famous opera "The Magic Flute"?', 5, 3),
    ('What is the name of the famous classical composer who went deaf later in life?', 1, 3),
    ('What is the term for a piece of music written for a small ensemble?', 1, 3),
    ('Which composer is known for his "Ode to Joy"?', 2, 3),
    ('What is the significance of the term "opera" in classical music?', 2, 3),
    ('Who composed "Ride of the Valkyries"?', 3, 3);

-- Inserting Classical answers
INSERT INTO guru.answers (question_id, option_one, option_two, option_three, option_four, correct_option) VALUES
    (31, 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Joseph Haydn', 'Johann Sebastian Bach'),
    (32, 'Renaissance', 'Romantic', 'Classical', 'Medieval', 'Renaissance'),
    (33, 'Sonata', 'Concerto', 'Symphony', 'Opera', 'Sonata'),
    (34, 'Antonio Vivaldi', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Antonio Vivaldi'),
    (35, 'A large-scale work for orchestra, typically in four movements', 'A solo instrumental piece', 'A vocal composition with a soloist', 'A form of chamber music', 'A large-scale work for orchestra, typically in four movements'),
    (36, 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert', 'Ludwig van Beethoven'),
    (37, 'Concerto', 'Sonata', 'Symphony', 'Opera', 'Concerto'),
    (38, 'Joseph Haydn', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Franz Schubert', 'Joseph Haydn'),
    (39, 'Classical', 'Baroque', 'Romantic', 'Renaissance', 'Classical'),
    (40, 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Giuseppe Verdi', 'Richard Wagner', 'Wolfgang Amadeus Mozart'),
    (41, 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert', 'Ludwig van Beethoven'),
    (42, 'Symphony', 'Concerto', 'Sonata', 'Quartet', 'Quartet'),
    (43, 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert', 'Ludwig van Beethoven'),
    (44, 'A form of chamber music', 'A solo instrumental piece', 'A vocal composition with a soloist', 'A large-scale work for orchestra', 'A form of chamber music'),
    (45, 'Richard Wagner', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Richard Wagner');

-- Inserting genres
INSERT INTO guru.genres (name) VALUES
    ('Reggae');

-- Inserting Reggae questions
INSERT INTO guru.questions (question, level, genre_id) VALUES
    ('Who is often referred to as the "King of Reggae"?', 1, 4),
    ('What is the name of the Jamaican music style that influenced the development of reggae?', 1, 4),
    ('Which reggae artist is known for his hit song "No Woman, No Cry"?', 2, 4),
    ('What is the characteristic rhythm pattern in reggae music called?', 2, 4),
    ('Which Jamaican record producer played a significant role in the development of reggae music?', 3, 4),
    ('Who is the lead vocalist of the reggae band Bob Marley and the Wailers?', 3, 4),
    ('What is the Rastafarian movements influence on reggae music?', 4, 4),
    ('Which reggae artist is known for his album "Exodus"?', 4, 4),
    ('What is the social and political commentary aspect often found in reggae lyrics?', 5, 4),
    ('Which reggae artist is known for his iconic album "Legend"?', 5, 4),
    ('What is the name of the reggae music style that incorporates electronic elements?', 1, 4),
    ('Which reggae artist is known for his collaboration with The Wailers on "Buffalo Soldier"?', 1, 4),
    ('What is the term for the offbeat rhythm in reggae music?', 2, 4),
    ('Which reggae artist is known for his advocacy of marijuana legalization?', 2, 4),
    ('What is the significance of the term "dub" in reggae?', 3, 4);

-- Inserting Reggae answers
INSERT INTO guru.answers (question_id, option_one, option_two, option_three, option_four, correct_option) VALUES
    (46, 'Bob Marley', 'Peter Tosh', 'Jimmy Cliff', 'Burning Spear', 'Bob Marley'),
    (47, 'Ska', 'Calypso', 'Dancehall', 'Mento', 'Ska'),
    (48, 'Jimmy Cliff', 'Peter Tosh', 'Burning Spear', 'Bob Marley', 'Bob Marley'),
    (49, 'One Drop', 'Rocksteady', 'Ska', 'Dub', 'One Drop'),
    (50, 'Lee "Scratch" Perry', 'Bunny Lee', 'King Tubby', 'Augustus Pablo', 'Lee "Scratch" Perry'),
    (51, 'Bob Marley', 'Peter Tosh', 'Bunny Wailer', 'Jimmy Cliff', 'Bob Marley'),
    (52, 'It inspired the reggae rhythm', 'It had no influence on reggae', 'It influenced reggae lyrics', 'It introduced electronic elements to reggae', 'It inspired the reggae rhythm'),
    (53, 'Jimmy Cliff', 'Peter Tosh', 'Burning Spear', 'Bob Marley', 'Bob Marley'),
    (54, 'Social justice', 'Romantic love', 'Religious devotion', 'Nature appreciation', 'Social justice'),
    (55, 'Bob Marley', 'Jimmy Cliff', 'Peter Tosh', 'Toots and the Maytals', 'Bob Marley'),
    (56, 'Reggaeton', 'Dubstep', 'Electronic Reggae', 'Roots Reggae', 'Electronic Reggae'),
    (57, 'Peter Tosh', 'Bunny Wailer', 'Jimmy Cliff', 'Bob Marley', 'Bob Marley'),
    (58, 'Ska', 'Offbeat', 'Steady Beat', 'Reggae Beat', 'Offbeat'),
    (59, 'Snoop Dogg', 'Damian Marley', 'Ziggy Marley', 'Sean Paul', 'Damian Marley'),
    (60, 'Remixing and manipulating existing recordings', 'A sub-genre of reggae with faster tempo', 'A style of reggae drumming', 'An instrument commonly used in reggae music', 'Remixing and manipulating existing recordings');

-- Inserting genres
INSERT INTO guru.genres (name) VALUES
    ('Amapiano');

-- Inserting Amapiano questions
INSERT INTO guru.questions (question, level, genre_id) VALUES
    ('Which country is credited with the origin of Amapiano music?', 1, 5),
    ('What is the main distinguishing feature of Amapiano beats?', 1, 5),
    ('Who is considered one of the pioneers of Amapiano music?', 2, 5),
    ('What is the typical tempo range of Amapiano music?', 2, 5),
    ('Which musical elements heavily influence Amapiano?', 3, 5),
    ('Name the popular Amapiano sub-genre characterized by its slower tempo.', 3, 5),
    ('What is the role of the piano in Amapiano music?', 4, 5),
    ('Which Amapiano artist is known for the hit "Jerusalema"?', 4, 5),
    ('What is the dance style associated with Amapiano music?', 5, 5),
    ('Which Amapiano DJ and producer is known as the "Amapiano King"?', 5, 5),
    ('What is the name of the Amapiano music festival held annually in South Africa?', 1, 5),
    ('Which Amapiano artist is known for the song "Ke Star"?', 1, 5),
    ('What is the term for the unique vocal expressions often heard in Amapiano songs?', 2, 5),
    ('Which instrument is commonly featured in Amapiano beats?', 2, 5),
    ('What is the significance of the term "Shaya" in Amapiano culture?', 3, 5);

-- Inserting Amapiano answers
INSERT INTO guru.answers (question_id, option_one, option_two, option_three, option_four, correct_option) VALUES
    (61, 'South Africa', 'Nigeria', 'Kenya', 'Ghana', 'South Africa'),
    (62, 'Slow tempo', 'High pitch', 'Complex rhythms', 'Fast beats', 'Slow tempo'),
    (63, 'Kabza De Small', 'DJ Maphorisa', 'Cassper Nyovest', 'Busiswa', 'Kabza De Small'),
    (64, '110-120 BPM', '130-140 BPM', '90-100 BPM', '150-160 BPM', '110-120 BPM'),
    (65, 'House and Jazz', 'Hip Hop and R&B', 'Kwaito and Gqom', 'Classical and Rock', 'House and Jazz'),
    (66, 'Deep Amapiano', 'Amapiano House', 'Slow Amapiano', 'Fast Amapiano', 'Deep Amapiano'),
    (67, 'Lead melody', 'Rhythmic percussion', 'Bassline', 'Background harmony', 'Lead melody'),
    (68, 'Master KG', 'Kabza De Small', 'Cassper Nyovest', 'Busiswa', 'Master KG'),
    (69, 'Amapiano Shuffle', 'Gwara Gwara', 'Azonto', 'Shaku Shaku', 'Amapiano Shuffle'),
    (70, 'Kabza De Small', 'DJ Maphorisa', 'Cassper Nyovest', 'Busiswa', 'Kabza De Small'),
    (71, 'AmaPiano Street Bash', 'Amapiano Fest', 'Piano Palooza', 'Piano Street Carnival', 'AmaPiano Street Bash'),
    (72, 'Focalistic', 'Kabza De Small', 'Cassper Nyovest', 'Busiswa', 'Focalistic'),
    (73, 'Amapiano Ad-libs', 'Mzansi Vocals', 'Piano Phrases', 'Amapiano Expressions', 'Amapiano Ad-libs'),
    (74, 'Trumpet', 'Saxophone', 'Piano', 'Guitar', 'Piano'),
    (75, 'Celebration', 'Dance', 'Unity', 'Expression', 'Celebration');

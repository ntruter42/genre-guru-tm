CREATE TABLE guru.users (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    level INT NOT NULL
);

-- CREATE TABLE guru.topic (
--     topic_id SERIAL PRIMARY KEY,
--     topic_name TEXT NOT NULL,
--     topic_type TEXT NOT NULL
-- );

CREATE TABLE guru.songs (
    song_id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
    -- artist_id INT NOT NULL,
	genre_id INT NOT NULL
);

--  artist_id = topic_id
-- CREATE TABLE guru.artist (
--     artist_id SERIAL PRIMARY KEY,
-- 	name TEXT NOT NULL
-- );

-- genre_id = topic_id
CREATE TABLE guru.genres (
    genre_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE guru.questions (
    question_id SERIAL PRIMARY KEY,
<<<<<<< HEAD
    question TEXT NOT Null,
=======
    question TEXT NOT NULL,
>>>>>>> a32789573a3e322f1b017fa3c6dfa4d46d88146a
    level INT NOT NULL,
    genre_id INT REFERENCES guru.genres(genre_id)
);

CREATE TABLE guru.answers (
    answer_id SERIAL PRIMARY KEY,
    question_id INT REFERENCES guru.questions(question_id),
    correct_choice TEXT NOT NULL
);

CREATE TABLE guru.choice (
    choice_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES guru.users(user_id),
    question_id INT,
    answer_id INT,
    FOREIGN KEY (user_id) REFERENCES guru.users(user_id),
    FOREIGN KEY (question_id) REFERENCES guru.questions(question_id),
    FOREIGN KEY (answer_id) REFERENCES guru.answers(answer_id)
);

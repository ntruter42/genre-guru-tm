DROP TABLE IF EXISTS guru.choices;
DROP TABLE IF EXISTS guru.answers;
DROP TABLE IF EXISTS guru.questions;
DROP TABLE IF EXISTS guru.genres;
DROP TABLE IF EXISTS guru.songs;
DROP TABLE IF EXISTS guru.users;

CREATE TABLE guru.users (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    level INT NOT NULL,
	points INT NOT NULL,
	last_song TEXT
);

CREATE TABLE guru.songs (
    song_id SERIAL PRIMARY KEY,
	artist TEXT NOT NULL,
	title TEXT NOT NULL,
	genre_id INT NOT NULL
);

CREATE TABLE guru.genres (
    genre_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE guru.questions (
    question_id SERIAL PRIMARY KEY,
    question TEXT NOT Null,
    level INT NOT NULL,
    genre_id INT REFERENCES guru.genres(genre_id)
);

CREATE TABLE guru.answers (
    option_id SERIAL PRIMARY KEY,
	option_one TEXT NOT NULL,
	option_two TEXT NOT NULL,
	option_three TEXT NOT NULL,
	option_four TEXT NOT NULL,
    question_id INT REFERENCES guru.questions(question_id),
    correct_option TEXT NOT NULL
);

CREATE TABLE guru.choices (
    user_id INT REFERENCES guru.users(user_id),
    answer_id INT REFERENCES guru.answers(option_id)
);

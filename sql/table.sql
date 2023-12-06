CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    level INT NOT NULL
);

CREATE TABLE topic (
    topic_id SERIAL PRIMARY KEY,
    topic_name TEXT NOT NULL,
    topic_type TEXT NOT NULL
);


CREATE TABLE choice (
    choice_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    question_id INT,
    answer_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id),
    FOREIGN KEY (answer_id) REFERENCES answers(answer_id)
);

CREATE TABLE questions (
    question_id SERIAL PRIMARY KEY,
    level INT NOT NULL,
    topic_id INT REFERENCES topic(topic_id)
);

CREATE TABLE answers (
    answer_id SERIAL PRIMARY KEY,
    question_id INT REFERENCES questions(question_id),
    correct_choice TEXT NOT NULL
);

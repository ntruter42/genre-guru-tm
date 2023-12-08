export default function (db) {
	async function returnTrue() {
		const query = ``;
		const params = [];

		const result = db.any(query, params);
		return result;
	}

	async function getUser(user_id) {
		const query = `
		SELECT *
		FROM guru.users
		WHERE user_id = $1
		`;
		const params = [user_id];

		const result = db.oneOrNone(query, params);
		return result;
	}

	async function getSong(song_name) {
		const artist = song_name.split(' - ')[0];
		const title = song_name.split(' - ')[1];

		const query = `
		SELECT *
		FROM guru.songs
		WHERE lower(artist) = $1
		AND lower(title) = $2
		`;
		const params = [artist.toLowerCase(), title.toLowerCase()];

		const result = await db.oneOrNone(query, params);
		return result;
	}

	async function getQuestion(genre_id, level) {
		const query = `
            SELECT *
            FROM guru.questions
            WHERE level = $1
			AND genre_id = $2
            ORDER BY random()
            LIMIT 1;
        `;
		const params = [level, genre_id];

		const result = await db.oneOrNone(query, params);
		return result;
	}

	async function getQuestionById(question_id) {
		const query = `
            SELECT *
            FROM guru.questions
            WHERE question_id = $1;
        `;
		const params = [question_id];

		const result = await db.oneOrNone(query, params);
		return result;
	}

	async function getOptions(question_id) {
		const query = `
            SELECT *
            FROM guru.answers
            WHERE question_id = $1;
        `;
		const params = [question_id];

		const result = await db.oneOrNone(query, params);
		return result;
	}

	async function increaseLevel(user_id) {
		const query = `
		UPDATE guru.users
    	SET level = CASE WHEN level < 5 THEN level + 1 ELSE level END
    	WHERE user_id = $1;
		`;
		const params = [user_id];

		const result = db.none(query, params);
		return result;
	}

	async function resetLevel(user_id) {
		const query = `
		UPDATE guru.users
		SET level = 1
		WHERE user_id = $1
		`;
		const params = [user_id];

		const result = db.none(query, params);
		return result;
	}

	async function setLastSong(last_song, user_id) {
		const query = `
		UPDATE guru.users
		SET last_song = $1
		WHERE user_id = $2
		`;
		const params = [last_song, user_id];

		const result = db.none(query, params);
		return result;
	}

	async function getLastSong(user_id) {
		const query = `
		SELECT last_song
		FROM guru.users
		WHERE user_id = $1
		`;
		const params = [user_id];

		const result = db.oneOrNone(query, params);
		return result;
	}

	async function resetLastSong(user_id) {
		const query = `
		UPDATE guru.users
		SET last_song = NULL
		WHERE user_id = $1
		`;
		const params = [user_id];

		const result = db.none(query, params);
		return result;
	}

	return {
		returnTrue,
		getSong,
		getQuestion,
		getOptions,
		getUser,
		getQuestionById,
		increaseLevel,
		resetLevel,
		setLastSong,
		getLastSong,
		resetLastSong
	};
}

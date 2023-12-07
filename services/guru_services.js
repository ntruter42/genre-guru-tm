export default function (db) {
  async function returnTrue() {
    let query = `SELECT TRUE AS always_true`;

    const result = db.any(query);
    return result;
  }

  async function getQuestion(genre_id, level) {
    let query = `SELECT * FROM guru.questions ORDER BY RANDOM() LIMIT 1`;

    const result = db.any(query)[0];
    return result;
  }

  return {
    returnTrue,
	getQuestion
  };
}

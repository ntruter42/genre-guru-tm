export default function (db) {
	async function returnTrue() {
		let query = `SELECT TRUE AS always_true`;

		const result = db.any(query);
		return result;
	}

	return {
		returnTrue
	};
}
export default function (db) {
	async function returnTrue() {
		let query = `SELECT TRUE AS always_true`;

		const result = db.any(query);
		return result;
	}

	async function getAnswers() {
		let query = ``;

		return true;
	}

	return {
		returnTrue,
		getAnswers
	};
}
function storeSongData(title, artist, genre) {
	let songDatabase;
	const songData = {
	  title: title,
	  artist: artist,
	  genre: genre
	};
  
	// Assuming songDatabase is an array where you store each song's data
	songDatabase.push(songData);
  
	// You can also store the data in a database using a database query here
	
	// For example, if using MongoDB:
	// db.collection('songs').insertOne(songData);
  
	// You may want to perform additional operations or error handling as needed
  }
  
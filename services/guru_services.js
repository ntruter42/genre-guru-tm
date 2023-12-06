export default function (db) {
	async function returnTrue() {
		let query = ``;

		return true;
	}

	return {
		returnTrue
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
  

// more documentation available at
// https://github.com/tensorflow/tfjs-models/tree/master/speech-commands

// the link to your model provided by Teachable Machine export panel
const URL = "https://teachablemachine.withgoogle.com/models/adtTjfFgG/";

async function createModel() {
	const checkpointURL = URL + "model.json"; // model topology
	const metadataURL = URL + "metadata.json"; // model metadata

	const recognizer = speechCommands.create(
		"BROWSER_FFT", // fourier transform type, not useful to change
		undefined, // speech commands vocabulary feature, not useful for your models
		checkpointURL,
		metadataURL);

	// check that model and metadata are loaded via HTTPS requests.
	await recognizer.ensureModelLoaded();

	return recognizer;
}

let highest = [];
async function init() {
	document.querySelector(".title").innerHTML = "<b>GenreGuru</b> is <i>listening</i>...";
	document.querySelector(".arrow").innerHTML = "♫";
	document.querySelector('button[name="listen"]').classList.add('expandContract');
	document.querySelector(".guru-message").innerHTML = "Hmmm... I'm thinking.";
	const recognizer = await createModel();
	const classLabels = recognizer.wordLabels(); // get class labels
	// const labelContainer = document.getElementById("label-container");
	// for (let i = 0; i < classLabels.length; i++) {
	// 	labelContainer.appendChild(document.createElement("div"));
	// }

	recognizer.listen(result => {
		const scores = result.scores; // probability of prediction for each class
		highest = [];
		// render the probability scores per class
		for (let i = 0; i < classLabels.length; i++) {
			// const classPrediction = classLabels[i] + ": " + result.scores[i].toFixed(2);
			if (result.scores[i].toFixed(2) >= 0.8) {
				highest.push(classLabels[i]);
			}
			document.querySelector(".arrow").innerHTML = "⬇";
			document.querySelector(".guru-message").innerHTML = "Sounds like <b><i>" + (findMostProbableSong(highest) || "nothing that I recognize.</i></b>");
		}
	}, {
		includeSpectrogram: true, // in case listen should return result.spectrogram
		probabilityThreshold: 0.75,
		invokeCallbackOnNoiseAndUnknown: true,
		overlapFactor: 0.50 // probably want between 0.5 and 0.75. More info in README
	});

	// Stop the recognition in 5 seconds.
	setTimeout(function () {
		const song_name = findMostProbableSong(highest);
		if (song_name && song_name !== "Background Noise") {
			// axios.post('https://genre-guru-tm.onrender.com/song', {
			axios.post('https://genre-guru-tm.onrender.com/song', {
				song_name
			})
				.then(function (response) {
					// console.log('Response:', response.data);
					window.location.href = response.data.link;
				})
				.catch(function (error) {
					console.error('Error making POST request:', error);
				});
			recognizer.stopListening();
		} else {
			window.location.href = "https://genre-guru-tm.onrender.com//again"
		}
	}, 8000);
}

function findMostProbableSong(songPredictions) {
	var freq = {};
	var threshold = songPredictions.length * 0.5;

	for (var i = 0; i < songPredictions.length; i++) {
		var word = songPredictions[i];
		freq[word] = (freq[word] || 0) + 1;
	}

	var mostRepeatedWord = '';
	var maxFrequency = 0;

	for (var word in freq) {
		if (freq.hasOwnProperty(word) && freq[word] > threshold && freq[word] > maxFrequency) {
			mostRepeatedWord = word;
			maxFrequency = freq[word];
		}
	}

	return mostRepeatedWord;
}
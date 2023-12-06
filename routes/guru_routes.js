import { Router } from "express";
import { services } from "../index.js";

const router = Router();

router.get('/', async (req, res) => {
	try {
		console.log(await services.returnTrue());
		res.render('listen', {
			title: "Listen"
		});
	} catch (error) {
		console.error(error);
		res.redirect('/');
	}
});

router.get('/question', async (req, res) => {
	// const song = await getSong(req.params.song_name);
	// const user = await services.getUser(req.session.user_id);
	// const question = await services.getQuestion(song.genre_id, user.level);

	res.render('questions', {
		title: "Trivia Question",
		level: 1,
		question: `In R&B, what is the significance of the 'backbeat' and how does it contribute to the genre's distinctive rhythm?`,
		options: [
			{ option_id: 1, answer: "The backbeat emphasizes the second and fourth beats of a measure, creating a syncopated feel." },
			{ option_id: 2, answer: "The backbeat highlights the first and third beats of a measure, establishing a steady rhythmic pattern." },
			{ option_id: 3, answer: "The backbeat occurs on every beat, creating a straightforward and predictable rhythm." },
			{ option_id: 4, answer: "The backbeat is absent in R&B, allowing for a free-form and experimental approach to rhythm." }
		]
	});
});

router.post('/question', async (req, res) => {
	// const nextQuestion = await services.nextQuestion();
	res.redirect('/question');
});


export default router;
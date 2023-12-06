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
	const song = await getSong(req.params.song_name);
	const user = await services.getUser(req.session.user_id);
	const question = await services.getQuestion(song.genre_id, user.level);

	res.render('questions', {
		title: "Trivia Question",
		level: 1,
		question: 'Who is known as the "King of Pop"?',
		options: [
			{ option_id: 1, answer: "Elvis Presley" },
			{ option_id: 2, answer: "Michael Jackson" },
			{ option_id: 3, answer: "Madonna" },
			{ option_id: 4, answer: "Whitney Houston" }
		]
	});
});

router.post('/question', async (req, res) => {
	const nextQuestion = await services.nextQuestion();
	res.redirect('/question');
});


export default router;
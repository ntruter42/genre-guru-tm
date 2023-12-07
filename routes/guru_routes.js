import { Router } from "express";
import { services } from "../index.js";

const router = Router();

router.get('/', async (req, res) => {
	try {
		res.render('listen', {
			title: "Listen",
			again: req.flash('again')[0] ? true : false
		});
	} catch (error) {
		console.error(error);
		res.redirect('/');
	}
});

router.get('/again', async (req, res) => {
	try {
		req.flash('again', "true");
		res.redirect('/');
	} catch (error) {
		console.error(error);
		res.redirect('/');
	}
});

router.get('/question', async (req, res) => {
	const song = await getSong(req.query.song_name);
	const question = await services.getQuestion(song.genre_id, user.level);
	// const user = await services.getUser(req.session.user_id);

	res.render('question', {
		title: "Question",
		question
	});
});

router.post('/question', async (req, res) => {
	// const nextQuestion = await services.nextQuestion();
	res.redirect('/question');
});

router.post('/song', async (req, res) => {
	const song_name = req.body.song_name;

	res.json({ link: `${process.env.DOMAIN}/question?song=${song_name}` });
});


export default router;
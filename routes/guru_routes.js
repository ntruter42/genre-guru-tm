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
		const user = await services.getUser(1);
		let song = await services.getSong(req.query.song);
		const question = await services.getQuestion(song.genre_id, user.level);
		const options = await services.getOptions(question.question_id);
		await services.setLastSong(req.query.song, 1);

		res.render('question', {
			title: "Question",
			question,
			options
		});
});

router.post('/answer/:question_id', async (req, res) => {
	const question_id = req.params.question_id;

	// const question = await services.getQuestionById(question_id);
	const options = await services.getOptions(question_id);

	const choice = req.query.answer;
	if (choice === options.correct_option) {
		await services.increaseLevel(1);
		req.flash('answer', "correct! :D");
	} else {
		await services.resetLevel(1);
		await services.resetLastSong(1);
		req.flash('answer', "incorrect :(");
		req.flash('correction', options.correct_option);
	}

	res.redirect('/answer');
});

router.get('/answer', async (req, res) => {
	const feedback = req.flash('answer')[0];
	const correction = req.flash('correction')[0];
	const className = correction ? "error" : "success";
	const song_name = await services.getLastSong(1);

	res.render('answer', {
		title: "Answer",
		feedback,
		correction,
		className,
		song_name
	});
});

router.post('/song', async (req, res) => {
	const song_name = req.body.song_name;

	res.json({ link: `${process.env.DOMAIN}/question?song="${song_name}"` });
});


export default router;
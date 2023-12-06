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

export default router;
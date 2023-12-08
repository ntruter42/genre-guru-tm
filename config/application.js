import express from "express";
import bodyParser from "body-parser";
import { engine } from "express-handlebars";
import session from "express-session";
import flash from "express-flash";
import "dotenv/config";
import cors from "cors";

export default function App() {
	const app = express();

	app.use(express.static('public'));
	app.use(bodyParser.urlencoded({ extended: false }));
	app.use(bodyParser.json());
	app.use(flash());
	app.use(cors());
	app.use(session({
		secret: process.env.SESSION_SECRET,
		resave: false,
		saveUninitialized: false,
		cookie: {}
	}));
	app.engine('hbs', engine({
		defaultLayout: 'main.hbs',
		viewPath: './views',
		layoutsDir: './views/layouts',
		helpers: {
			capitalize: function (str) {
				return str.charAt(0).toUpperCase() + str.slice(1);
			}
		}
	}));
	app.set('view engine', 'hbs');

	return app;
}
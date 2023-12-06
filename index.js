import app_setup from "./config/application.js";
import db_config from "./config/database.js";
import guru_services from "./services/guru_services.js";
import guru_routes from "./routes/guru_routes.js";

const app = app_setup();
const db = db_config();
const services = guru_services(db);

app.use('/', guru_routes);

export { services };

const PORT = process.env.PORT || 3000;
app.listen(PORT, function () {
	console.log(`App started on PORT: ${PORT}`);
});
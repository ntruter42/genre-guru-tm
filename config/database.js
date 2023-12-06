import promise from "pg-promise";
// import "dotenv/config";

export default function Database() {
	const pgp = promise();
	return pgp({
		connectionString: process.env.DATABASE_URL,
		ssl: { rejectUnauthorized: false }
	});
}
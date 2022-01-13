DROP TABLE IF EXISTS consumptions;

CREATE TABLE consumptions (
	id SERIAL PRIMARY KEY,
	customer TEXT NOT NULL UNIQUE,
	rx INT NOT NULL,
	tx INT NOT NULL,
    start_time DATE,
    stop_time DATE
);
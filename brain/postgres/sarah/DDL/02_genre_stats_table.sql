-- Create the table if it does not already exist
CREATE TABLE IF NOT EXISTS project_two.genre_stats (
    id SERIAL PRIMARY KEY,
    genre VARCHAR(255),
    count INT,
    earliest_year INT,
    latest_year INT
);

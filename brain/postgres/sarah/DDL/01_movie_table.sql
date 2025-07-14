-- Create the schema if it does not already exist
CREATE SCHEMA IF NOT EXISTS project_two;

-- Create the table if it does not already exist
CREATE TABLE IF NOT EXISTS project_two.sarah (
    id SERIAL PRIMARY KEY,
    movie_name VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    director_name VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL
);
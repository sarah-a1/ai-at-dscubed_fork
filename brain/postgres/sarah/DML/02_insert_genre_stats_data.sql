TRUNCATE TABLE project_two.genre_stats RESTART IDENTITY;

-- Insert data into the genre stats table
INSERT INTO project_two.genre_stats (genre, count, earliest_year, latest_year)
SELECT
    genre,
    COUNT(*) AS count,
    MIN(release_year) AS earliest_year,
    MAX(release_year) AS latest_year
FROM project_two.sarah
GROUP BY genre
ORDER BY count DESC;
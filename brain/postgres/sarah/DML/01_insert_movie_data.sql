TRUNCATE TABLE project_two.sarah RESTART IDENTITY;

-- Insert data into the sarah table
INSERT INTO project_two.sarah (movie_name, release_year, director_name, genre)
VALUES 
('Oppenheimer', 2023, 'Christopher Nolan', 'Biography'),
('Get Out', 2017, 'Jordan Peele', 'Horror'),
('Parasite', 2019, 'Bong Joon Ho', 'Thriller'),
('Inception', 2010, 'Christopher Nolan', 'Sci-Fi'),
('Ready Player One', 2018, 'Steven Spielberg', 'Sci-Fi'),
('The Hunger Games', 2012, 'Gary Ross', 'Dystopian'),
('Hidden Figures', 2016, 'Theodore Melfi', 'Biography'),
('Red Sparrow', 2018, 'Francis Lawrence', 'Thriller'),
('The Dark Knight', 2008, 'Christopher Nolan', 'Action'),
('Limitless', 2011, 'Neill Blomkamp', 'Sci-Fi'),
('American Psycho', 2000, 'Mary Harron', 'Thriller'),
('The Mist', 2007, 'Frank Darabont', 'Horror'),
('Malignant', 2021, 'James Wan', 'Thriller'),
('The Social Network', 2010, 'David Fincher', 'Biography'),
('Ender''s Game', 2013, 'Gavin Hood', 'Sci-Fi'),
('The Purge', 2013, 'James DeMonaco', 'Thriller'),
('The Purge: Election Year', 2016, 'James DeMonaco', 'Thriller'),
('Pitch Perfect', 2012, 'Jason Moore', 'Comedy'),
('The King', 2019, 'David Michod', 'Historical Fiction'),
('The Boy in the Striped Pajamas', 2008, 'Mark Herman', 'Historical Fiction'),
('M3gan', 2023, 'Gerard Johnstone', 'Sci-Fi'),
('The Maze Runner', 2014, 'Wes Ball', 'Dystopian'),
('1917', 2019, 'Sam Mendes', 'Historical Fiction'),
('Smile', 2022, 'Parker Finn', 'Horror'),
('Ocean''s Eight', 2018, 'Gary Ross', 'Action');
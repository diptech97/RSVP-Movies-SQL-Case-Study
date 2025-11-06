create database rsvp;
use rsvp;
CREATE TABLE Movies ( movie_id INT PRIMARY KEY, 
title VARCHAR(100), 
release_year YEAR, 
genre VARCHAR(50), 
language VARCHAR(30), 
budget DECIMAL(10,2), 
revenue DECIMAL(10,2) 
);
-- Directors Table 
CREATE TABLE Directors ( director_id INT PRIMARY KEY, name VARCHAR(100) );

-- Movie_Director Table 
CREATE TABLE Movie_Director ( movie_id INT, 
director_id INT, 
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id), 
FOREIGN KEY (director_id) REFERENCES Directors(director_id) );

-- Ratings Table 
CREATE TABLE Ratings ( movie_id INT, 
rating DECIMAL(3,1), 
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) );

-- Insert Movies 
INSERT INTO Movies VALUES 
(1, 'Uri: The Surgical Strike', 2019, 'Action', 'Hindi', 25.00, 350.00), 
(2, 'Kedarnath', 2018, 'Romance', 'Hindi', 40.00, 100.00), 
(3, 'Love Per Square Foot', 2018, 'Comedy', 'Hindi', 20.00, 45.00); 
-- Insert Directors 
INSERT INTO Directors VALUES 
(1, 'Aditya Dhar'), 
(2, 'Abhishek Kapoor'), 
(3, 'Anand Tiwari'); 
-- Insert Movie_Director 
INSERT INTO Movie_Director VALUES 
(1, 1),
(2, 2), 
(3, 3); 
-- Insert Ratings 
INSERT INTO Ratings VALUES 
(1, 8.3), 
(2, 6.9), 
(3, 7.3);

select * from movies;
select * from ratings;
select * from directors;
select * from movie_director;

-- List all movies released after 2017
select title, release_year from movies where release_year > 2017;

-- Find the highest revenue movie
select title,revenue from movies order by revenue desc limit 1;

-- Show movies with rating > 7
select m.title, r.rating from movies m join ratings r on r.movie_id = m.movie_id where r.rating > 7;

-- Get directors and their movies
select m.title, d.name from movies m join movie_director md on md.movie_id = m.movie_id join directors d 
on md.director_id = d.director_id;

-- Calculate Profit = Revenue – Budget
select title, revenue - budget as profit from movies;

-- Find average rating per genre
select m.genre, avg(r.rating) from movies m join ratings r on r.movie_id = m.movie_id group by m.genre;

-- Recommend Top 3 movies by rating
select m.title, r.rating from movies m join ratings r on m.movie_id = r.movie_id order by r.rating desc limit 3;
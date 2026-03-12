# Project Title
Netflix Data Analysis Using SQL

# Project Description
Performed exploratory data analysis on Netflix content data using SQL to identify content distribution, 
popular genres, release trends, and country-wise availability. 
The analysis helps understand how streaming platforms distribute content and what types of shows are most common.

# Dataset contains
- Show ID
- Title
- Type (Movie / TV Show)
- Director
- Country
- Release Year
- Rating
- Genre

# Project Focus
The project focuses on identifying content trends, most popular genres, number of movies vs TV shows, and 
content distribution by country and year.


SQL Queries

Total Movies and TV Shows:
SELECT type, COUNT(*) AS total_content
FROM netflix
GROUP BY type;

Content by Country:
SELECT country, COUNT(*) AS total_shows
FROM netflix
GROUP BY country
ORDER BY total_shows DESC;

Most Popular Genres:
SELECT listed_in, COUNT(*) AS total_titles
FROM netflix
GROUP BY listed_in
ORDER BY total_titles DESC;

Content Released Each Year:
SELECT release_year, COUNT(*) AS content_count
FROM netflix
GROUP BY release_year
ORDER BY release_year;

Top Directors:
SELECT director, COUNT(*) AS total_titles
FROM netflix
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;







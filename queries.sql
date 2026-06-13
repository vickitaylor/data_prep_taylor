-- SELECT * FROM netflix_content LIMIT 10;

-- query 1 filtering
SELECT
    title,
    director,
    release_year
FROM netflix_content
WHERE country = 'Japan';

-- query 2 aggregation
SELECT
    type,
    COUNT(show_id) AS count
FROM netflix_content
GROUP BY type;

-- query 3 sorting and limits
SELECT
    title,
    release_year
FROM netflix_content
ORDER BY 2
LIMIT 10;


-- bonus
SELECT title, release_year
FROM 'netflix_titles.csv'
WHERE release_year > 2020
LIMIT 5;

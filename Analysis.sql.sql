create database moma;
use moma;

SELECT 
  date,
  COUNT(*) AS artwork_count
FROM artworks
WHERE date IS NOT NULL 
  AND date REGEXP '^[0-9]{4}$'
GROUP BY date
ORDER BY date
LIMIT 1000;




SELECT 
  YEAR(dateAcquired) AS year,
  COUNT(*) AS acquisitions
FROM Artworks
WHERE dateAcquired IS NOT NULL
GROUP BY year
ORDER BY year;


select
classification,
count(*)as count
from artworks
group by classification
order by count desc;


SELECT 
  Gender,
  COUNT(*) AS artist_count
FROM artists
GROUP BY Gender
ORDER BY artist_count DESC
LIMIT 1000;

SELECT 
  artist,
  COUNT(*) AS appearances
FROM artworks
GROUP BY artist
ORDER BY appearances DESC
LIMIT 10;
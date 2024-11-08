-- What the total number of athletes each country has?
SELECT Country, COUNT(*) AS TotalAtheles
FROM athletes
GROUP BY Country
ORDER BY TotalAtheles DESC;

-- What number of Total medels each country has won?
SELECT TeamCountry, Total AS Total_Medels
FROM medals;

-- How many medels each country has won?
SELECT TeamCountry, 
SUM(Gold) AS Total_Golds,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY TeamCountry
ORDER BY Total_Golds, Total_Silver, Total_Bronze DESC;

-- What are the top disciplines with the highest total entries for male and female athletes combined?
SELECT discipline, (female + male) AS total_entries
FROM entriesgender
ORDER BY total_entries DESC

-- Which countries have the most diverse participation in terms of the number of disciplines they compete in?
SELECT country, COUNT(DISTINCT discipline) AS disciplines_participated
FROM athletes
GROUP BY country
ORDER BY disciplines_participated DESC;


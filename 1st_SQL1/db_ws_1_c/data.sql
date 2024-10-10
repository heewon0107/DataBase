-- Active: 1728529473689@@127.0.0.1@3306

SELECT genre, count() AS count FROM songs GROUP BY genre;


SELECT genre, count() AS count, AVG(duration) AS average_duration FROM songs GROUP BY genre;


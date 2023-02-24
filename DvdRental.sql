--DATABASE DVDRENTAL

--1. Obtenez une liste de toutes les locations qui sont sorties (n'ont pas été rendues).
-- Comment identifier ces films dans la base de données ?
SELECT * FROM rental
WHERE return_date IS NULL;

--2. Obtenez une liste de tous les clients qui n'ont pas rendu leurs locations. Assurez-vous de grouper vos résultats.
SELECT customer.customer_id FROM rental 
LEFT JOIN customer ON customer.customer_id = rental.customer_id
WHERE rental.return_date IS NULL 
--3. Obtenez une liste de tous les films d'action avec Joe Swank.

SELECT * FROM film WHERE film_id=  'Joe Swank';
--4. Avant de commencer, existe-t-il un raccourci pour obtenir ces informations ? Peut-être une vue ?
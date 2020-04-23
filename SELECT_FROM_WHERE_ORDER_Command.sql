/*
	SELECT:   What fields to retrieve
	FROM:     The entity to retrieve the data from
	WHERE:    Conditions the data needs to meet
	ORDER BY: Sorts based on specified column or columns
*/

SELECT * FROM Person.Person
WHERE EmailPromotion = 2
ORDER BY LastName

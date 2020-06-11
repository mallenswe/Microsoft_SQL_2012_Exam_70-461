/*
	XML AUTO
*/

SELECT TOP(3) FirstName, LastName
FROM Person.Person
FOR XML AUTO, ELEMENTS, XMLSCHEMA('TestSchema')


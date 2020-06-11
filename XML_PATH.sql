/*
	XML PATH
*/

--SELECT TOP(3) BusinessEntityId AS [@ID], FirstName, LastName
--FROM Person.Person
--FOR XML PATH ('Employee'), ROOT('Employees')

SELECT TOP(3) FirstName "EmpName/First", LastName "EmpName/Last"
FROM Person.Person
FOR XML PATH ('Employee'), ROOT('Employees')

SELECT * FROM Sales.CreditCard
SELECT * FROM Sales.PersonCreditCard ORDER BY CreditCardID

SELECT CreditCardID, b.BusinessEntityID, CardNumber, ExpMonth, ExpYear
FROM Sales.CreditCard AS a
JOIN 
SELECT(
	BusinessEntityID
	FROM Sales.PersonCreditCard
) b



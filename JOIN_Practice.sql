--SELECT * FROM Sales.CreditCard
--SELECT * FROM Sales.PersonCreditCard ORDER BY CreditCardID

--SELECT CreditCardID, b.BusinessEntityID, CardNumber, ExpMonth, ExpYear
--FROM Sales.CreditCard AS a
--JOIN 
--SELECT(
--	BusinessEntityID
--	FROM Sales.PersonCreditCard
--) b


SELECT
	cc.CardType
	,cc.CardNumber
	,cc.ExpMonth
	,cc.ExpYear
	,pcc.BusinessEntityID
	,cc.ModifiedDate AS 'CC Modified Date'
	,pcc.ModifiedDate AS 'PCC Modified Date'
FROM Sales.CreditCard AS cc
INNER JOIN
	Sales.PersonCreditCard AS pcc
ON 
	cc.CreditCardID = pcc.CreditCardID
WHERE cc.ModifiedDate <> pcc.ModifiedDate
ORDER BY 
	cc.CardType ASC
	,cc.ExpYear
	,cc.ExpMonth
	,pcc.BusinessEntityID ASC
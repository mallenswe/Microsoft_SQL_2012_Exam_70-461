/*
	Transactions: Logical Unit of Work
		- Unit of Work could involve numerous steps
			- Check if Item is in stock
			- Check if you can sell product to customer
			- Check if customer has license on file
			- Check customer in-house credit rating
			- Enter order into table
		- We want All steps to succeed or fail
		- ACID
			- Atomicity
				- Every transaction is an atomic unit of work; all changes succeed or none succeed
			- Consistency
				- Every transaction leaves the database in a consistent state based on object and database constraints
			- Isolation
				- All transactions look as though they occur in isolation from other transaction in regard to database changes
			- Durability
				- Every transaction survives an interruption of service
		- SQL Server utilizes a number of mechanisms to maintain the ACID properties
			- Locking helps maintain consistency in transactions

	Explicit and Implicit
		- Three Modes
			- Autocommit
				- Single data modifications are executed in the context of a transaction
				- Automaically committed when successful; rolled back if the statement fails
			- Implicit
				- Every command that is issued starts a transaction, but does not automatically commit or roll back
				- You must issue a COMMIT or ROLLBACK statement to finish the transaction
			- Explicit
				- Must issue the BEGIN TRANSACTION command to start the transaction and issue a COMMIT or ROLLBACK command to end the transaction
*/


/* Explicit Transaction */

--BEGIN TRAN ML
--UPDATE Person.Person
--SET LastName = 'Long'
--SELECT * FROM Person.Person
--ROLLBACK TRAN ML

/* Explicit Transaction */
--BEGIN TRAN MTL
--UPDATE Person.Person
--SET FirstName = 'Jack'
--WHERE FirstName='Terri' AND LastName = 'Duffy'

--SELECT * FROM Person.Person

--COMMIT TRAN MTL

/*
	Concurrency: 
		- Refers to the fact that multiple people will be working with the database simultaneously
		- Their actions cannot adverly affect those of another person
		- SQL Server utilizes a system of locks to prevent users from modifying data in a way that affects other users
		- Two Theories
			- Pessimistic
				- Once a user begins perfoming an action on data a lock is applied
				- Other users cannot perform actions on the data until the original user releases it
			- Optimistic
				- Data is not locked when users read it
				- When a user updates data, the system checks to see if another user changed the data after it was read...if so, an error is raised
				- The transaction is rolled back and starts over
		- Two Modes of Locking
			- Shared Locks
				- Multiple people can read the same data
			- Exclusive Locks
				- When changes are being made to data, no one else can access it
		- Transaction Isolation Levels
			- READ COMMITTED (Default)
				- Data being read acquires a shared lock; any data being changed has an exclusive lock until the transaction is completed (committed or rolled back)
			- READ UNCOMMITTED
				- Allows readers to read uncommitted data
				- Data can be read that may be rolled back to its initial value if a transaction fails
			- REPEATABLE READ
				- Insures that data read in a transaction can be re-read later in the transaction
			- SERIALIZABLE
				- The strongest level
				- Will result in the most locking

*/

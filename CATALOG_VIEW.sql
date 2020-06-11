/*
	Metadata: Data about data
		- A list of the tables in our database
		- A list of stored procedures in out database
		- A list of the columns in a table
		- The data types of the columns in a table
		- The primary key column(s) in a table

	Three Methods for Querying Metadata
		- Catalog Views - The Microsoft Recommended Method
			- Access to metadata that is stored in every database on the server
			- Provide descriptive information
			- The most efficient way to obtain metadata information
			- All user-available catalog metadata is exposed through catalog views
		- Information Schema Views
		- System Stored Procedures
*/

SELECT *
FROM sys.tables
WHERE name='Person'

SELECT *
FROM sys.all_columns
WHERE object_id = 
(
	SELECT object_id
	FROM sys.tables
	WHERE name='Person'
)

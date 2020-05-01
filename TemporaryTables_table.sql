/*
	Temporary Tables: A physical table that exists temporarily in the TempDB database
			- It exists in physical form as long as it is being used
			- Two Types of Temporary Tables:
				- Local: Created with a # prefix (Example: #Parts)
					- Visible only to the user who created it in their current connection
					- Deleted when the user disconnects
				- Global: Created with a ## prefix (Example: ##Parts)
					- Visable to any user in the database
					- Deleted when the user disconnects if no one else is using it
				Advantages:
					- Support indexs - makes the a much better performance option for large datasets (100+ rows)
					- Utilizes less memory than other  options
				Disadvantages:
					- Disk-based reads/writes
					- Temporary
*/

CREATE TABLE #mark
(
	LastName VARCHAR(10)
)

--DROP TABLE #mark

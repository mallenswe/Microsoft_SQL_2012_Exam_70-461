/*
	XML - Extensible Markup Language
		- Formats data in a human-readable and machine-readable hierarchical structure
		- RSS, SOAP, XHTML, etc.
		- Case Sensitive

		Terms To Know
			- Start Tag: a markup construct beginning with < and ending with >
				- <Employees>
			- End Tag: A markup construct beginning with  </ and ending with >
				- </Employees>
			- Element: A construct that begins with a start tag and ends with a matching end tag
				- <FirstName>Bob</FirstName>
			- Attribute: A name/value pair that resides inside a start tag
				- <Employee paygrade=5>Bob Smith</Employee>

		Three Output Options
			- FOR XML RAW
			- FOR XML AUTO
			- FOR XML PATH
*/

SELECT TOP(3) FirstName, LastName
FROM Person.Person
FOR XML RAW ('Employee'), ELEMENTS, ROOT ('Employees')


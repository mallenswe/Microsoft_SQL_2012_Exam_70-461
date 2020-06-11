/*
	Optimization Basics

	T-SQL
		- Statement is accepted and read
	Parsing
		- Syntax is checked
	Binding
		- Name Resolution...do the objects exist?
	Optimization
		- Generate Possible execution plans
		- Choose an execution plan
		- Looks (theoretically) at all possible execution options
		- It chooses the lowest cost plan based on its estimations
		- Sometimes adding an index or changing the query type or structure can have a significant impact on plan estimations and choices
	Execution
		- Query is executed
		- The execution plan is cached, used again when that IDENTICAL query is executed again
		- Certain parts of the query can be parameterized automatically by the query optimizer
			- There are many reasons that plans ARE NOT re-used
			- Stored procedures are usually re-used

	Three Main Monitoring Tools
		- SQL Server Extended Events
		- SQL Trace
		- SQL Server Profiler

	Execution Plans
		- Estimated Plan
			- The plan is chosen based on cost and displayed
			- The query is not actually executed
			- Designed for use on queries that read a large number of rows
		- Actual Plan
			- The query is executed...this can be more realistic
	
	Three Forms of Plans
		- Text
		- XML
			- SET SHOWPLAN_XML for estimated plans
			- SET STATISTICS XML for actual plans
		- Graphical
*/

--SET STATISTICS XML OFF
--SET SHOWPLAN_XML OFF
--GO
SELECT
	P.LastName
	,P.FirstName
	,PP.PhoneNumber
FROM
	Person.Person P
JOIN
	Person.PersonPhone PP
ON P.BusinessEntityID = PP.BusinessEntityID

--DROP TABLE Mark

-- Create View for 'Mark' table
--CREATE VIEW M AS
--SELECT FirstName
--FROM Mark

-- This TSQL command will tell you what entities are using
-- the 'Mark' table.
--SELECT referencing_schema_name, referencing_entity_name, referencing_id, referencing_class_desc, is_caller_dependent
--FROM sys.dm_sql_referencing_entities('dbo.Mark', 'OBJECT')
# Dabrowski Software Development [ T-SQL ]

- NEW:
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_2]:
 - *#JSON properties to table columns mapping, full details in the header of the procedure.*
 - <strong>UPLOADED 2016-07-17 15:30:00 GMT +01:00 [BUG FIX]</strong>
 - 
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_2]:
  - *#full details inside procedure, and complex JSON object invocation example inside*
  - <strong>CONVERT_JSON_OBJECT_TO_SQL_TABLE_2_complex_example.sql</strong> file in the repository's root directory.
  - <strong>UPLOADED 2016-07-14 21:13:00 GMT +01:00 [NEW]</strong>
  - 

- OLD:
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE]:
 - *#@P_TEMP_TABLE_TO_STORE_JSON_OBJECT AS TINYINT -> @P_TEMP_TABLE_TO_STORE_JSON_OBJECT AS SYSNAME*
 - <strong>UPLOADED 2016-06-24 17:50:00 GMT +01:00 [BUG FIX]</strong>
 -
 - [FUNCTION]	[NORMALIZE_NAME]:
 - *#inside function body replacement of '\t' -> CHAR(9)*
 - <strong>UPLOADED 2016-06-24 20:48:00 GMT +01:00 [BUG FIX]</strong>
 -

#License: [MIT]:
 - [http://www.opensource.org/licenses/mit-license.php]

#Description: [functions && procedures for day-to-day tasks]:
 - sending formmatted email with applied CSS2/3 rules stright from database,
 - converting query result to JSON format,
 - creating C# class based on a table,
 - converting separator separated list of values into temporary table and returning result as a select query,
 - creating class property in the form of PascalCase or CamelCase,
 - retrieving full table column data type based on simple name like varchar, decimal, etc.
 - converting JSON data to table object <strong>[UPLOADED]</strong>
 - util string functions <strong> [UPLOADED]</strong> 
 - converting JSON data to table object <strong> [SUPPORT FOR USER CUSTOM TYPE] [UPLOADED]</strong>

#Example usage:
DECLARE @JSON AS dbo.JSON
INSERT @JSON
EXEC CONVERT_JSON_OBJECT_TO_SQL_TABLE 
										'',
										'[
										 {
											"property1": "1",
											"property2": "223343434"
										 },
										 {
											"property1": "22",
											"property2": "11111111"
										 }
									   ]',
									   1,
									   'dbo.JSON'

SELECT * FROM @JSON

*Details are inside of this solution.*

# Converting query result to JSON format [available from SQL SERVER 2008]. Microsoft will release this feature natively in the latest SQL SERVER 2016 release.

# This "library" can be downloaded free of charge and be distributed, further modified and used for commercial gain according to MIT licence, that is shipped with this project.
  
# This source code works from SQL SERVER 2008 version up to current one.

# If you have any (negative/positive) feedback, do not hesitate to contact me @ contact@lukaszdabrowski.com

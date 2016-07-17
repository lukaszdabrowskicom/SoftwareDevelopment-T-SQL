CREATE TABLE #MY_TABLE(COLUMN_1 int, COLUMN_2 NVARCHAR(100), COLUMN_3 int, COLUMN_4 int, COLUMN_5 int)
CREATE TABLE #MY_SUB_TABLE(COLUMN_1 int, COLUMN_2 INT, COLUMN_3 NVARCHAR(MAX), COLUMN_4 INT, COLUMN_5 NVARCHAR(MAX), COLUMN_6 NVARCHAR(MAX), COLUMN_7 NVARCHAR(MAX))
CREATE TABLE #MY_SUB_SUB_TABLE(COLUMN_1 NVARCHAR(100), COLUMN_2 NVARCHAR(100), COLUMN_3 NVARCHAR(400), COLUMN_4 NVARCHAR(MAX))
CREATE TABLE #MY_SUB_SUB_SUB_TABLE(COLUMN_1 NVARCHAR(100), COLUMN_2 NVARCHAR(100), COLUMN_3 NVARCHAR(400))



EXEC CONVERT_JSON_OBJECT_TO_SQL_TABLE_2 
										'#MY_TABLE,#MY_SUB_TABLE,#MY_SUB_SUB_TABLE,#MY_SUB_SUB_SUB_TABLE',
										'[
										  {
											"property1": "1",
											"property2": "11A",
											"sub_obj": {
												"sub_property1": "111",
												"sub_property2": "1111",
												"sub_property3": "THIS",
												"sub_property4": "1001",
												"sub_obj2": {
													"sub_sub_property1": "a",
													"sub_sub_property2": "b",
													"sub_sub_property3": "a+b",
													"sub_obj3": {
														"sub_sub_sub_property1": "sss_1",
														"sub_sub_sub_property2": "sss_2",
														"sub_sub_sub_property3": "sss_3"
													},
													"sub_sub_property4": "a+b+1"
												},
												"sub_property5": "#",
												"sub_property6": "$",
												"sub_property7": "*"
											},
											"property3": "3",
											"property4": "4",
											"property5": "5"
										},
										{
											"property1": "2",
											"property2": "22B",
											"sub_obj": {
												"sub_property1": "222",
												"sub_property2": "2222",
												"sub_property3": "IS",
												"sub_property4": "1002",
												"sub_obj2": {
													"sub_sub_property1": "C",
													"sub_sub_property2": "D",
													"sub_sub_property3": "C+D",
													"sub_obj3": {
														"sub_sub_sub_property1": "sss_11",
														"sub_sub_sub_property2": "sss_22",
														"sub_sub_sub_property3": "sss_33"
													},
													"sub_sub_property4": "a+b+2"
												},
												"sub_property5": "##",
												"sub_property6": "$$",
												"sub_property7": "**"
											},
											"property3": "33",
											"property4": "44",
											"property5": "55"
										},
										{
											"property1": "3",
											"property2": "33C",
											"sub_obj": {
												"sub_property1": "222",
												"sub_property2": "2222",
												"sub_property3": "MY",
												"sub_property4": "1003",
												"sub_obj2": {
													"sub_sub_property1": "e",
													"sub_sub_property2": "f",
													"sub_sub_property3": "E+F",
													"sub_obj3": {
														"sub_sub_sub_property1": "sss_111",
														"sub_sub_sub_property2": "sss_222",
														"sub_sub_sub_property3": "sss_333"
													},
													"sub_sub_property4": "a+b+3"
												},
												"sub_property5": "###",
												"sub_property6": "$$$",
												"sub_property7": "***"
											},
											"property3": "333",
											"property4": "444",
											"property5": "555"
										},
										{
											"property1": "4",
											"property2": "44C",
											"sub_obj": {
												"sub_property1": "222",
												"sub_property2": "2222",
												"sub_property3": "ALGORITHM",
												"sub_property4": "1004",
												"sub_obj2": {
													"sub_sub_property1": "g",
													"sub_sub_property2": "h",
													"sub_sub_property3": "G+H",
													"sub_obj3": {
														"sub_sub_sub_property1": "sss_1111",
														"sub_sub_sub_property2": "sss_2222",
														"sub_sub_sub_property3": "sss_3333"
													},
													"sub_sub_property4": "a+b+4"
												},
												"sub_property5": "####",
												"sub_property6": "$$$$",
												"sub_property7": "****"
											},
											"property3": "3333",
											"property4": "4444",
											"property5": "5555"
										},
										{
											"property1": "5",
											"property2": "55C",
											"sub_obj": {
												"sub_property1": "222",
												"sub_property2": "2222",
												"sub_property3": "TO BE OPTIMIZED",
												"sub_property4": "1005",
												"sub_obj2": {
													"sub_sub_property1": "i",
													"sub_sub_property2": "j",
													"sub_sub_property3": "I+J",
													"sub_obj3": {
														"sub_sub_sub_property1": "sss_11111",
														"sub_sub_sub_property2": "sss_22222",
														"sub_sub_sub_property3": "sss_33333"
													},
													"sub_sub_property4": "a+b+5"
												},
												"sub_property5": "#####",
												"sub_property6": "$$$$$",
												"sub_property7": "*****"
											},
											"property3": "33333",
											"property4": "44444",
											"property5": "55555"
										}
									   ]'



SELECT * FROM #MY_TABLE
SELECT * FROM #MY_SUB_TABLE
SELECT * FROM #MY_SUB_SUB_TABLE
SELECT * FROM #MY_SUB_SUB_SUB_TABLE


SELECT MT.COLUMN_1, MT.COLUMN_2, MT.COLUMN_3, MT.COLUMN_4, MT.COLUMN_5, '@',
	   MST.COLUMN_1, MST.COLUMN_2, MST.COLUMN_3, MST.COLUMN_4, MST.COLUMN_5, MST.COLUMN_6, MST.COLUMN_7, '@@',
	   MSST.COLUMN_1, MSST.COLUMN_2, MSST.COLUMN_3, MSST.COLUMN_4, '@@@',
	   MSSST.COLUMN_1, MSSST.COLUMN_2, MSSST.COLUMN_3
FROM #MY_TABLE AS MT
JOIN #MY_SUB_TABLE AS MST ON MST._TABLE_INTERNAL_PK_ = MT._TABLE_INTERNAL_PK_
JOIN #MY_SUB_SUB_TABLE AS MSST ON MSST._TABLE_INTERNAL_PK_ = MT._TABLE_INTERNAL_PK_
JOIN #MY_SUB_SUB_SUB_TABLE AS MSSST ON MSSST._TABLE_INTERNAL_PK_ = MT._TABLE_INTERNAL_PK_


DROP TABLE #MY_SUB_SUB_SUB_TABLE
DROP TABLE #MY_SUB_SUB_TABLE
DROP TABLE #MY_SUB_TABLE
DROP TABLE #MY_TABLE
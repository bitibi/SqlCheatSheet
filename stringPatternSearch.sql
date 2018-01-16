/*
  The PATINDEX function returns the position of the first occurrence of a pattern within a string.
  
  The argument pattern uses similar patterns to those used by the LIKE predicate in T-SQL.
*/

SELECT PATINDEX('%[0-9]%', 'abcd123efgh');

-- This code returns the output 5.

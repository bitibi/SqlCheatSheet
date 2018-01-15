/*

When concatenating strings, if any of them is null, the whole concatenation will result null

To avoid that, check any nullable fields with COALESCE

Example from Itzik Ben-Gan:T-SQL Fundamentals book

*/

SELECT custid, country, region, city,
  country + COALESCE( N',' + region, N'') + N',' + city AS location
FROM Sales.Customers;

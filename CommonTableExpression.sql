/*
  WITH <CTE_Name>[(<target_column_list>)]
  AS(  
    <inner_query_defining_CTE>
  )
  <outer_query_against_CTE>;
*/

WITH USACusts AS
(
  SELECT custid, companyname
  FROM Sales.Customers
  WHERE country = N'USA'
)
SELECT * FROM USACusts;

/* Column aliases inline */
WITH C AS
(
  SELECT YEAR(orderdate) AS orderyear, custid
  FROM Sales.Orders
)
SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
FROM C
GROUP BY orderyear;


/* Column aliases externally */
WITH C(orderyear, custid) AS
(
  SELECT YEAR(orderdate), custid
  FROM Sales.Orders
)
SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
FROM C
GROUP BY orderyear;

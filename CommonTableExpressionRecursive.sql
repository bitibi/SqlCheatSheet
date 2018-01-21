/* Recursive CTE 

  WITH <CTE_Name>[(<target_column_list>)]
  AS
  (
    <anchor_member>
    UNION ALL
    <recursive_member>
  )
  <outer_query_against_CTE>;
*/

WITH EmpsCTE AS
(
  SELECT empid, mgrid, firstname, lastname
  FROM HR.Employees
  WHERE empid = 2

  UNION ALL

  SELECT C.empid, C.mgrid, C.firstname, C.lastname
  FROM EmpsCTE AS P
    INNER JOIN HR.Employees AS C
      ON C.mgrid = P.empid
)
SELECT empid, mgrid, firstname, lastname
FROM EmpsCTE;

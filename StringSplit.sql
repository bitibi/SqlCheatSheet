/*
  This is super important! I had issue with this so many times!
  
  For example when I tried to send a parameter to the stored procedure, which is not a single value but a list of id's!
  
  And since Sql Server 2016 - here you go String_Split function
  
  The STRING_SPLIT table function splits an input string with a separated list of values into the individual elements. 
*/

SELECT CAST(value AS INT) AS myvalue FROM STRING_SPLIT('10248,10249,10250', ',') AS S;

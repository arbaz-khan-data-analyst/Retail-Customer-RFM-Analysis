USE e_commerce_customer_anamlysis;

SELECT COUNT(*) FROM retailcombined
WHERE InvoiceDate IS NULL;

DESCRIBE retailcombined;

-- 1. CHECK  Missing Customer ID

 SELECT COUNT(*) AS missing_customer_id FROM retailcombined
 WHERE `Customer ID` IS NULL;
 

 SELECT COUNT(*) AS Total_rows,
 SUM(`Customer ID` IS  NULL ) AS Total_null,
 SUM(`Customer ID` = 0) AS Zero_values,
 SUM(TRIM(`Customer ID`)='') AS Blank_values FROM retailcombined;
 
 
 -- CHECKING NULL VALUE IN PRICE
 SELECT COUNT(*) AS Null_values FROM retailcombined
 WHERE Price IS NULL;
 
 SELECT COUNT(*) AS Null_values FROM retailcombined
 WHERE InvoiceDate IS NULL;
 
 -- Check negative or zero quantity
 SELECT COUNT(*) FROM retailcombined 
 WHERE Quantity <=0;
 
  SELECT Quantity FROM retailcombined 
 WHERE Quantity <=0;
 
 -- check description missing
 SELECT COUNT(*) AS total_rows,
 SUM(Description = 0) AS total_zero,
 SUM(Description IS NULL) Total_null,
 SUM(TRIM(Description) = '') AS Blank_values  FROM retailcombined;
 
 SELECT * FROM retailcombined;
 
 SELECT COUNT(*) AS total_rows,
 SUM(Description = 0) AS total_zero,
 SUM(Description IS NULL) Total_null,
 SUM(TRIM(Description) = '') AS Blank_values  FROM retailcombined;
 
 SELECT * FROM retailcombined
 WHERE Description = '';
 
 -- CHECK DUPLICATES ROWS
 SELECT Invoice , 
 StockCode, 
 Description, 
 Quantity, 
 InvoiceDate, Price, `Customer ID`, 
 Country, COUNT(*) AS Exact_Duplicates 
 FROM retailcombined
 GROUP BY Invoice , StockCode, Description, Quantity, InvoiceDate, Price, `Customer ID`, Country
 HAVING COUNT(*)>1;
 
 
 -- DEDUPLICATE AND PRODUCE FINAL CLEAANED TABLE
 CREATE TABLE retailcleaned AS 
 WITH Deduped AS (
	 SELECT *,
	   ROW_NUMBER() 
			OVER(PARTITION BY Invoice,StockCode,Description ,Quantity, InvoiceDate, Price, `Customer ID`,Country ORDER BY (SELECT NULL)
			) AS RowNum 
	  FROM retailcombined
)
SELECT Invoice, StockCode, Description ,Quantity, InvoiceDate, Price, `Customer ID`,Country,SourceSheet
FROM Deduped
WHERE RowNum = 1

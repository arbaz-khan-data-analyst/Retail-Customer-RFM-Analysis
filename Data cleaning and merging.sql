USE e_commerce_customer_anamlysis;

 RENAME TABLE
e_commerce_customer_anamlysis. `online_reatil_page_1.csv` TO 
e_commerce_customer_anamlysis.year_2009_2010;


DESCRIBE year_2009_2010;

ALTER TABLE year_2009_2010
MODIFY COLUMN Invoice VARCHAR(20) NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN Quantity INT NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN price DECIMAL(10,2) NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN StockCode VARCHAR(20) NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN Description VARCHAR(255) NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN Country VARCHAR(150) NOT NULL;

ALTER TABLE year_2009_2010
MODIFY COLUMN `Customer ID` INT NOT NULL;

DESCRIBE year_2009_2010;

RENAME TABLE 
e_commerce_customer_anamlysis.`online_reatil_page_2.csv` TO  year_2010_2011;

ALTER TABLE year_2010_2011
MODIFY COLUMN Invoice VARCHAR(20) NOT NULL;

ALTER TABLE year_2010_2011
MODIFY COLUMN StockCode VARCHAR(20) NOT NULL;

ALTER TABLE year_2010_2011
MODIFY column Description VARCHAR(255) NOT NULL;

ALTER TABLE year_2010_2011
MODIFY COLUMN Quantity INT NOT NULL;

ALTER TABLE year_2010_2011
MODIFY COLUMN price DECIMAL(10,2) NOT NULL;

ALTER TABLE year_2010_2011
MODIFY COLUMN `Customer ID` INT NOT NULL;

ALTER TABLE year_2010_2011
MODIFY COLUMN Country VARCHAR(150) NOT NULL;

DESCRIBE year_2010_2011;

SELECT COUNT(*) FROM year_2009_2010;

SELECT COUNT(*) FROM year_2010_2011;

-- MERGE TABEL AND CORRECT INVOICE DATE COLUMN DATA TYPE
CREATE TABLE RetailCombined AS 
SELECT 
  Invoice, 
  StockCode,
  Description,
  Quantity,
  
  COALESCE(
    STR_TO_DATE(InvoiceDate,'%d-%m-%Y%H:%i'),
    STR_TO_DATE(InvoiceDate, '%Y-%m-%d%H:%i:%s')
    ) AS InvoiceDate,
    
    Price,
    `Customer ID`,
    Country,
    '2009_2010' AS SourceSheet
    
FROM year_2009_2010

UNION ALL

SELECT 
  Invoice,
  StockCode,
  Description,
  Quantity,
  
  COALESCE(
  STR_TO_DATE(InvoiceDate,'%d-%m-%Y%H:%i'),
  STR_TO_DATE(InvoiceDate,'%Y-%m-%d%H:%i:%%s')
  ) AS InvoiceDate,
  
  Price,
  `Customer ID`,
  Country,
  '2010_2011' AS SourceSheet

FROM year_2010_2011;


    
    
   
   

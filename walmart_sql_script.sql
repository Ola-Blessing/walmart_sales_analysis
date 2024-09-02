SELECT *
from walmart_sales ws ;


--Which Holiday affects weekly sales the most?

select date, MAX(Weekly_Sales) as max_sales
from walmart_sales ws 
where Holiday_Flag = 1
group by Date 
order by max_sales DESC;

select date, SUM(Weekly_Sales) as total_sales
from walmart_sales ws 
where Holiday_Flag = 1
group by Date 
order by total_sales DESC;

-- Which stores have the lowest and highest unemployent rates?
--1. store with the highest unemployment rate
SELECT store, MAX(Unemployment) as max_unemployment
from walmart_sales ws;

--2. store with the lowest unemployment rate
SELECT store, MIN(unemployment) as min_unemployment
from walmart_sales ws;


SELECT store, SUM(Weekly_Sales) AS total_sales, MIN(Unemployment) AS min_unemployment
from walmart_sales ws 
Group BY Store 
order by min_unemployment ASC;

SELECT store, SUM(Weekly_Sales) AS total_sales, MAX(Unemployment) AS max_unemployment
from walmart_sales ws 
Group BY Store 
order by max_unemployment DESC;

SELECT store, AVG(Temperature) AS avg_temperature, MAX(Unemployment) AS max_unemployment
from walmart_sales ws 
Group BY Store 
order by max_unemployment DESC;

SELECT store, AVG(Temperature) AS avg_temperature, MIN(Unemployment) AS min_unemployment
from walmart_sales ws 
Group BY Store 
order by min_unemployment ASC;



--Is there any correlation between CPI and weekly sales?


SELECT 
Holiday_Flag,
AVG((CPI -(SELECT AVG(CPI)FROM walmart_sales ws)) * 
    (weekly_sales - (select AVG(weekly_sales) from walmart_sales ws)))
 as correlation
from walmart_sales ws 
group by Holiday_Flag ;



--not complete


--why do you think fuel price is included in this dataset?
--Let's analyze the correlation between fuel price and other fields

SELECT 
Fuel_Price ,
AVG(Weekly_Sales) as avg_sales,
AVG(CPI) as avg_cpi,
AVG(Unemployment) as avg_unemployment
FROM walmart_sales ws 
group by Fuel_Price;

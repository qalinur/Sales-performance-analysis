select* from [dbo].[Sample - Superstore_CLEAN]
--totalSales
select	sum(sales) as total_Sales
from [dbo].[Sample - Superstore_CLEAN]
 -- profit
 select sum(profit) as profit from [dbo].[Sample - Superstore_CLEAN]

 -- total orders
 select count(Order_ID) as total_orders from [dbo].[Sample - Superstore_CLEAN]
 --distinct orders
 select count( distinct Order_ID ) as unique_order from [dbo].[Sample - Superstore_CLEAN]
 
 --Top 10  best selling products 
 select top 10
 Product_Name, sum(sales ) as sales from [dbo].[Sample - Superstore_CLEAN]
 group by Product_Name
 order by sum(sales ) desc

 --total sales per region
 select Region,sum(sales) as total_sales from [dbo].[Sample - Superstore_CLEAN]
 group by region
 order by total_sales

 --monthly sales growth trend
 select MONTH(Order_Date)as month,year(Order_Date)as year,sum(sales) as total_sales  from [dbo].[Sample - Superstore_CLEAN] 
 group by MONTH(Order_Date) ,year(Order_Date)
 order by year(Order_Date),MONTH(Order_Date) 


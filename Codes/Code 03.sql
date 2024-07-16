 -- Provide a report with all the unique product counts for each segment and
-- sort them in descending order of product counts. The final output contains
-- 2 fields,
-- segment
-- product_count





SELECT * FROM gdb0041.dim_product; -- This query returned us whole table

Select 
	  distinct segment  -- This query returned us the distinct segment
      from dim_product;
      
Select                 -- this query returned us all the unique proudts for the specific segment 
       Segment , 
       count(distinct product_code) as Product_cnt
from dim_product 
group by segment
order by Product_cnt desc;      

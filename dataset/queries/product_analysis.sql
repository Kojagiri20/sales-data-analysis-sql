--Product analysis

--Revenue by product line
SELECT 
   PRODUCTLINE
   SUM(sales) AS total_revenue
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY total_revenue DESC;

--Most ordered products
SELECT 
   PRODUCTCODE
   SUM(ORDERQUANTITY) AS total_order
FROM sales_data_sample
GROUP BY PRODUCTCODE
ORDER BY total_order DESC;

--Average price per each
SELECT 
   PRODUCTLINE
   AVG(PRICEEACH) AS avg_price
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY avg_price DESC;



  

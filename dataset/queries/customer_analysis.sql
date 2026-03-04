--customer analysis

--total revenue by customer
SELECT 
   CUSTOMERNAME
   SUM(sales) AS total_revenue
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY total_revenue DESC;

--top 10 customers
SELECT 
   CUSTOMERNAME
   SUM(sales) AS total_revenue
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY total_revenue DESC
LIMIT 10;

--other count customers
SELECT 
   CUSTOMERNAME
   COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY total_orders DESC;











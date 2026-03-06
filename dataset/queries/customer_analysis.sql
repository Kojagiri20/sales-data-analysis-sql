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

--Customer Segmentation by revenue
SELECT 
   CUSTOMERNAME,
   ROUND(SUM(sales),2) AS total_revenue,
CASE
   WHEN SUM(SALES) > 100000 'High Value'
   WHEN SUM(SALES) BETWEEN 50000 AND 100000 THEN 'Medium Value'
        ELSE 'Low Value'
END AS customer_segment
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY total_revenue

--Count High value Customers
SELECT 
   COUNT(*) AS High_value_customers
FROM (
      SELECT CUSTOMERNAME
      FROM sales_data_sample
      GROUP BY CUSTOMERNAME
      HAVING SUM(sales) > 100000
) AS sub;

--Percentage of High value customers
SELECT 
   ROUND(COUNT(*) * 100.0 /
   (SELECT COUNT(DISTINCT CUSTOMERNAME) AS sales_data_sample),2)
   AS high_value_customer_percentage
FROM(
   SELECT CUSTOMERNAME
   FROM sales_data_sample
   GROUP BY CUSTOMERNAME
   HAVING SUM(sales) > 100000
) AS sub;









--Advanced analysis

--Monthly revenue trend
SELECT 
   YEAR_ID,
   MONTH_ID,
   SUM(sales) AS monthly_revenue
FROM sales_data_sample
GROUP BY YEAR(ID), MONTH(ID)
ORDER BY YEAR(ID), MONTH(ID);

--Revenue by dealsize
SELECT 
   DEALSIZE,
   SUM(sales) AS total_revenue
FROM sales_data_sample
GROUP BY DEALSIZE
ORDER BY total_revenue DESC;

--Top performing year
SELECT 
   YEAR(ID),
   SUM(sales) AS yearly_revenue
FROM sales_data_sample
GROUP BY YEAR(ID)
ORDER BY yearly_revenue DESC;

-- CTE + WINDOW function
--Revenue Share of Top 20% share

WITH customer_revenue as(
   SELECT CUSTOMERNAME,
   SUM(sales) AS total_revenue
   FROM sales_data_sample
   GROUP BY CUSTOMERNAME
),
ranked_customer AS(
   SELECT *,
       NTILE(5) OVER(ORDER BY total_revenue) AS revenue_group
   FROM customer_revenue
),
SELECT 
   revenue_group
   ROUND(SUM(total_revenue),2) AS group_revenue
FROM ranked_customer
GROUP BY revenue_group 
ORDER BY revenue_group
   



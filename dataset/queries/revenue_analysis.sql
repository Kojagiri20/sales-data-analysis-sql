--total revenue
SELECT 
   SUM(sales) AS total_revenue
FROM sales_data_sample;

--revenue_by_year
SELECT
  YEAR(ID), SUM(sales) AS revenue
FROM sales_data_sample
GROUP BY YEAR(ID)
ORDER BY revenue DESC;

--revenue by month
SELECT 
  MONTH(ID), SUM(sales) AS revenue
FROM sales_data_sample
GROUP BY MONTH(ID)
ORDER BY revenue DESC;


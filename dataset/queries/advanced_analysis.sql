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





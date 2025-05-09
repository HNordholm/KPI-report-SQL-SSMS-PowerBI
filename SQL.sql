

-- Customer report -- 

SELECT 
c.customer_key, 
CONCAT(c.first_name, ' ', c.last_name) Name,
c.country, 
SUM(s.sales_amount) Total_sales, 
SUM(s.quantity) Total_quantity,
COUNT(DISTINCT s.order_number) Total_orders, 
MAX(s.order_date) Last_purchase 
	FROM gold.dim_customers c 
	JOIN gold.fact_sales s 
	ON c.customer_key = s.customer_key 
		GROUP BY c.customer_key,c.first_name,c.last_name,c.country






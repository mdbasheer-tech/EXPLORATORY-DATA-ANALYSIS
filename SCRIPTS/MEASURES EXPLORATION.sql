					---- MEASURES EXPLORATION ---
	-- find the total sales--

	select sum(sales_amount) as total_sales from gold.fact_sales

	-- how many items are sold--
	select sum(quantity) as total_quantity from gold.fact_sales
	--avg selling price--
	select avg(price) as avg_price from gold.fact_sales
	-- total number os orders--
	select count(order_number) as total_orders from gold.fact_sales
	-- total number of products --
	select count(product_key) as total_products from gold.fact_sales
	-- total numbers of customers--
	select count (customer_key) as total_customers from gold.dim_customers
	-- customers placed order -- 
	select count(distinct customer_key) as total_customer_order from gold.dim_customers

	
	
	-- generate the report that shows the metrics of buisness -- 

	select 'total sales' as measures_name ,sum (sales_amount) as measure_value from gold.fact_sales
	union all
	select 'total sales',sum(quantity) as quantity_val from gold.fact_sales
	union all 
	select 'average price', avg(price) from gold.fact_sales
	union all 
	select 'total nr.orders', count(distinct order_number) from gold.fact_sales
	union all 
	select 'total nr . products', count(product_name) from gold.dim_products
	union all 
	select 'total nr . customers', count(customer_key) from gold.dim_customers
			-- DATE EXPPLORATION ---
	-- select the date from first and and last order -- 
	-- how many years of sales are available -- 
	select
	min(order_date) as first_order_date ,
	max(order_date) as last_order_date,
	datediff(year,min(order_date),max(order_date)) as order_range_years
	from gold.fact_sales

	-- find the youngest and the oldest customer-- 

	select 
	min (birthdate) as oldest_birth_date,
	datediff(YEAR,min(birthdate),getdate()) as oldest_age,
	max  (birthdate) as youngest_birthdate,
	datediff(YEAR,max(birthdate),getdate()) as youngest_age
	from gold.dim_customers
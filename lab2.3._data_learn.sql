select extract(month from order_date) as month,
       extract(year from order_date) as year,
       sum(Sales) as Sales, sum(Profit) as Profit, Category
from orders
group by month, year,Category
order by year, month,Category;
/*Monthly Sales by Product Category*/


select extract(month from order_date) as month,
       extract(year from order_date) as year,
       sum(Sales) as Sales, sum(Profit) as Profit, Segment
from orders
group by month, year,Segment
order by year, month,Segment;
/*Monthly Sales by Product Segment*/

select sum(sales) as total_sales, sum(profit) as total_profit, sum(profit)/sum(sales) as profit_ratio, avg(Discount) as Avg_Discount
from Orders;  --общие суммарные значения продаж

select sum(sales) as total_sales, sum(profit) as total_profit, category
from Orders
group by category;

select customer_name as customer, sum(sales) as total_sales, sum(profit) as total_profit
from orders 
group by customer --793 customer
order by total_sales desc;
/*Customer Ranking*/


select region, sum(sales) as total_sales, sum(profit) as total_profit
from orders 
group by region;



-- group the orders by date and calculate the avg no. of orders per day.
select round(avg(quantity),0) as avg_pizzas_ordered_per_day from
(select orders.order_date, sum(order_details.quantity) as quantity from orders join order_details on order_details.order_id = orders.order_id group by orders.order_date) as order_quantity;
select sum(order_details.quantity*pizzas.price) as total_sales from order_details join pizzas on order_details.pizza_id = pizzas.pizza_id;
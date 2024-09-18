-- most size ordered
SELECT 
    quantity, COUNT(order_details_id)
FROM
    order_details
GROUP BY quantity;

SELECT 
    pizzas.size, COUNT(order_details.quantity) AS order_count
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;
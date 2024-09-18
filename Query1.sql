CREATE DATABASE IF NOT EXISTS pizza_analysis;
USE pizza_analysis;

CREATE TABLE orders(
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id));

CREATE TABLE order_details(
order_details_id INT not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
PRIMARY KEY(order_details_id));
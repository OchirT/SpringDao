select product_name
from orders
inner join customers on orders.customer_id = customers.id
where lower(name) = lower(:name)
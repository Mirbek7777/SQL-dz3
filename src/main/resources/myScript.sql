select product_name from netology.orders
                             join netology.customers on customers.id = customer_id
where name = :name;
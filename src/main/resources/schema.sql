create table netology.CUSTOMERS_v2 ( id SERIAL primary key,
                                     name varchar(255) not null,
                                     surname varchar(255) not null,
                                     age int not null,
                                     phone_number varchar(255) not null);


insert into netology.customers (name, surname, age, phone_number)
values ('Алексей', 'Жвалов', 44, '8-991-241-78-90');

insert into netology.customers (name, surname, age, phone_number)
values ('Николай', 'Нефедов', 31, '8-901-901-72-02');

insert into netology.customers (name, surname, age, phone_number)
values ('Жанна', 'Никифорова', 23, '8-999-172-90-11');

insert into netology.customers (name, surname, age, phone_number)
values ('Анфиса', 'Иванова', 64, '8-907-872-28-13');

insert into netology.customers (name, surname, age, phone_number)
values ('Георгий', 'Носков', 98, '8-495-112-76-62');

create table netology.ORDERS_v2 ( id SERIAL primary key,
                                  date varchar(255) not null,
                                  customer_id int references netology.customers(id),
                                  product_name varchar(255) not null,
                                  amount decimal not null);


insert into netology.orders (date, customer_id, product_name, amount)
values ('24.03.2023', 2, 'Хлеб', 62);

insert into netology.orders (date, customer_id, product_name, amount)
values ('12.01.2023', 2, 'Молоко', 140);

insert into netology.orders (date, customer_id, product_name, amount)
values ('02.05.2023', 4, 'Морковь', 702);

insert into netology.orders (date, customer_id, product_name, amount)
values ('19.04.2023', 4, 'Фасоль', 289);

insert into netology.orders (date, customer_id, product_name, amount)
values ('29.11.2022', 2, 'Говядина', 7611);
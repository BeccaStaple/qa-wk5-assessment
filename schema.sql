CREATE DATABASE IF NOT EXISTS wk5_assessment;
use wk5_assessment;

create table customers (
customer_id int auto_increment not null,
name varchar(100) not null,
age int not null,
address varchar(100),
email varchar(100) not null,
primary key (customer_id)
);

create table orders (
order_id int auto_increment not null,
fk_customer_id int,
order_date timestamp default current_timestamp,
primary key (order_id),
foreign key (fk_customer_id) references customers (customer_id)
);

create table orderline (
fk_order_id int,
item_id int auto_increment not null,
single_quantity_order int not null,
PRIMARY KEY (item_id),
foreign key (fk_order_id) references orders (order_id)
);


create table items (
fk_item_id int,
fk_order_id int,
name varchar(100) not null,
price dec(7,2) not null,
foreign key (fk_item_id) references orderline (item_id)
);

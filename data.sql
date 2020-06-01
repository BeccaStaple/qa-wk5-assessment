

#CREATE customers
insert into customers values (0, "Colin", 37, "23 North London Street", "colin@gmail.com");
insert into customers values (0, "Demi", 24, "3 New Birmingham St", "demi@icloud.com"), (0, "Sarah", 56, "5 West Somerset St", "sarah.d@btinternet.co.uk");
insert into customers (name, age, email) values ("Dan", 21, "dan.e@gmail.com"), ("Adrian", 31, "a.getter@me.com");

#adding orders
insert into orders (order_id) values (0), (0), (0);

#adding orderline
insert into orderline (single_quantity_order) values (4), (6), (8); 


#adding items
insert into items (name, price) values ("Diamond Dogs", 30.99), ("Sgt Pepper", 40.99), ("Led Zeppelin IV", 35.99);
insert into items (name, price) values ("Sgt Pepper", 40.99), ("Sgt Pepper", 40.99), ("Diamond Dogs", 30.99);


#READ items
select * from customers;
select * from orders;
select * from orderline;
select * from items;
select * from customers where name like "S%";
select name, email  from customers where email like "%gmail%";
select name, price, count(name) as order_count from items where name = "Diamond Dogs";
select product_id, name, price, count(name) as order_count from items where name = "Sgt Pepper";

#UPDATE
alter table customers add postcode varchar(8) default "missing";
update customers set postcode="SW3 7YH" where name = "sarah";
update customers set postcode="NW3 6RH" where name = "Colin";
alter table items add quantity int default 1;

#DELETE
delete from customers where name = "Dan";
delete from items where name = "Led Zeppelin IV";

update items set fk_item_id=1 where name = "Diamond Dogs";
update items set fk_item_id=2 where name = "Sgt Pepper";
update items set fk_item_id=3 where name = "Led Zeppelin IV";

-- sql for the orders table

begin transaction;
drop table if exists orders;

create table orders(id integer primary key, 
                 order_price integer check(order_price>0), customer text);
insert into orders(order_price, customer) values(1200, "Williamson");
insert into orders(order_price, customer) values(200, "Robertson");
insert into orders(order_price, customer) values(40, "Robertson");
insert into orders(order_price, customer) values(1640, "Smith");
insert into orders(order_price, customer) values(100, "Robertson");
insert into orders(order_price, customer) values(50, "Williamson");
insert into orders(order_price, customer) values(150, "Smith");
insert into orders(order_price, customer) values(250, "Smith");
insert into orders(order_price, customer) values(840, "Brown");
insert into orders(order_price, customer) values(440, "Black");
insert into orders(order_price, customer) values(20, "Brown");
commit;
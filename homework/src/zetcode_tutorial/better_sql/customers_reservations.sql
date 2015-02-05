begin transaction;
drop table if exists reservations;
drop table if exists customers;

create table if not exists customers(customer_id integer primary key, name text);
insert into customers(name) values('Paul Novak');
insert into customers(name) values('Terry Neils');
insert into customers(name) values('Jack Fonda');
insert into customers(name) values('Tom Willis');

create table if not exists reservations(id integer primary key, 
    customer_id integer, day text);
insert into reservations(customer_id, day) values(1, '2009-22-11');
insert into reservations(customer_id, day) values(2, '2009-28-11');
insert into reservations(customer_id, day) values(2, '2009-29-11');
insert into reservations(customer_id, day) values(1, '2009-29-11');
insert into reservations(customer_id, day) values(3, '2009-02-12');
commit;
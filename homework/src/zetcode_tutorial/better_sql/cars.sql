-- sql for the cars table

begin transaction;
drop table if exists cars;

create table cars(id integer primary key, name text, price integer);
insert into cars values(1, 'Audi', 52642);
insert into cars values(2, 'Mercedes', 57127);
insert into cars values(3, 'Skoda', 9000);
insert into cars values(4, 'Volvo', 29000);
insert into cars values(5, 'Bentley', 350000);
insert into cars values(6, 'Citroen', 21000);
insert into cars values(7, 'Hummer', 41400);
insert into cars values(8, 'Volkswagen', 21600);
commit;
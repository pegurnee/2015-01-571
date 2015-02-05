-- sql for the friends table

begin transaction;
drop table if exists friends;

create table friends(id integer primary key, name text unique not null, 
                     sex text check(sex in ('M', 'F')));
insert into friends values(1, 'Jane', 'F');
insert into friends values(2, 'Thomas', 'M');
insert into friends values(3, 'Franklin', 'M');
insert into friends values(4, 'Elisabeth', 'F');
insert into friends values(5, 'Mary', 'F');
insert into friends values(6, 'Lucy', 'F');
insert into friends values(7, 'Jack', 'M');
commit;
-- sql for the authors & books tables

begin transaction;
drop table if exists books;
drop table if exists authors;

create table authors(author_id integer primary key, name text);
insert into authors values(1, 'Jane Austen');
insert into authors values(2, 'Leo Tolstoy');
insert into authors values(3, 'Joseph Heller');
insert into authors values(4, 'Charles Dickens');

create table books(book_id integer primary key, title text, author_id integer, 
    foreign key(author_id) references authors(author_id));
insert into books values(1,'Emma',1);
insert into books values(2,'War and Peace',2);
insert into books values(3,'Catch XII',3);
insert into books values(4,'David Copperfield',4);
insert into books values(5,'Good as Gold',3);
insert into books values(6,'Anna Karenia',2);
commit;
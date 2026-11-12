create database library_db;
create table books(
book_id int,
title varchar(150),
author varchar(100),
category varchar(50),
publication_year smallint,
price numeric(8,2)
);

create table members(
member_id int,
full_name varchar(100),
email varchar(150),
phone varchar(20),
join_date date
);

create table librarians(
librarian_id int,
full_name varchar(100),
email varchar (150),
salary numeric(10,2),
hire_date date
);

create table borrowing_records(
record_id int,
book_id int,
member_id int,
borrow_date date,
return_date date,
fine_amount numeric(6,2)
);

insert into books values (1,'Clean code','Robert Martin','Programming',2008,45.5);
insert into books values (2,'The Hobbit','J.R.R Tolkien','Fantasy',1937,30.00);
insert into books values (3,'Atomic Habits','James Clear','Self-Help',2018,25.75);
insert into books values (4,'The Pragmatic Programmer','Andrew Hunt','Programming',1999,50.00);
insert into books values (5,'Sherlock Holmes','Arthur Conan Doyle','Mystery',1892,20.00);


insert into members values (1,'Member 1','member1@example.com','00000000001','2025-01-10');
insert into members values (2,'Member 2','member2@example.com','00000000002','2025-02-15');
insert into members values (3,'Member 3','member3@example.com','00000000003','2025-03-20');
insert into members values (4,'Member 4','member4@example.com','00000000004','2025-04-05');
insert into members values (5,'Member 5','member5@example.com','00000000005','2025-05-12');


insert into librarians values (1,'Librarian 1','librarian1@example.com',6500.00,'2022-03-01');
insert into librarians values (2,'Librarian 2','librarian2@example.com',7000.00,'2021-06-15');
insert into librarians values (3,'Librarian 3','librarian3@example.com',6000.00,'2023-01-10');
insert into librarians values (4,'Librarian 4','librarian4@example.com',7500.00,'2020-09-20');
insert into librarians values (5,'Librarian 5','librarian5@example.com',6800.00,'2022-11-05');

insert into borrowing_records values (1,1,2,'2025-06-01','2025-06-10',0.00);
insert into borrowing_records values (2,3,1,'2025-06-05','2025-06-20',15.00);
insert into borrowing_records values (3,2,4,'2025-06-08','2025-06-15',0.00);
insert into borrowing_records values (4,5,3,'2025-06-12','2025-06-25',5.00);
insert into borrowing_records values (5,4,5,'2025-06-15','2025-06-22',0.00);

select * from books;
select * from members;
select * from librarians;
select * from borrowing_records;
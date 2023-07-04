create table guestbooks
(
    id      int          not null auto_increment,
    email   varchar(100) not null,
    title   varchar(100) not null,
    content text,
    primary key (id)
) engine = innodb;

select *
from customers;

insert into guestbooks (email, title, content)
values ('guest1@mail.com', 'h1', 'h1'),
       ('guest2@mail.com', 'h2', 'h2'),
       ('guest3@mail.com', 'h3', 'h3'),
       ('guest4@mail.com', 'h4', 'h4'),
       ('me@mail.com', 'h1', 'h1'),
       ('me@mail.com', 'h1', 'h1'),
       ('aam@mail.com', 'h1', 'h1'),
       ('aam@mail.com', 'h1', 'h1');

select *
from guestbooks;

# union
select distinct email
from customers
union
select distinct email
from guestbooks;

# union all
select distinct email
from customers
union all
select distinct email
from guestbooks;

select emails.email, count(emails.email)
from (select email
      from customers
      union all
      select email
      from guestbooks) as emails
group by emails.email;

# intersect
select distinct email
from customers
where email in (select distinct email from guestbooks);

select customers.email
from customers
         inner join guestbooks g on customers.email = g.email;

# minus
select distinct customers.email, guestbooks.email
from customers
         left join guestbooks on (customers.email = guestbooks.email)
where guestbooks.email is null;


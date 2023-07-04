start transaction;

insert into guestbooks (email, title, content)
values ('mail@mm.com', 'c', 'c'),
       ('mail2@mm.com', 'c', 'c'),
       ('mail3@mm.com', 'c', 'c'),
       ('mail4@mm.com', 'c', 'c'),
       ('mail5@mm.com', 'c', 'c');

select *
from guestbooks;

commit;

start transaction ;

delete from guestbooks;

rollback;
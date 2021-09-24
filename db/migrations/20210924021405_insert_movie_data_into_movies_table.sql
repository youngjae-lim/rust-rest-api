-- migrate:up
insert into movies (title, genre)
values ('Pulp Fiction', 'Action'),
       ('John Wick', 'Action'),
       ('Incredibles', 'Animation'),
       ('Aliens', 'Sci-Fi');

-- migrate:down
delete
from movies

drop table if exists users;
create table users (
    id int unsigned primary key auto_increment,
    name varchar(20),
    score float,
    coins set('gold', 'silver', 'bronze')
);

insert into users (name, score, coins) values ('Yamazaki', 1.4, 'gold,silver');
insert into users (name, score, coins) values ('Kobayashi', 3.7, 'bronze,gold');
insert into users (name, score, coins) values ('Kinoshita', 0.3, 'silver');
insert into users (name, score, coins) values ('Kurima', 8.5, 'gold,red');
insert into users (name, score, coins) values ('Uchida', null, 'gold');
insert into users (name, score, coins) values ('Funayama', 3.5, 'red');
insert into users (name, score, coins) values ('Mikata', 4.2, 'silver');

-- select * from users where coins = 'silver';
-- select * from users where coins = 2;
-- select * from users;

select * from users where coins = 'gold,silver';
select * from users where coins = 3;
select * from users where coins like '%gold%';
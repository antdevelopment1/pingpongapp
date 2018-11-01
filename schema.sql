-- Should should only contain create table statements

create table players (
    id serial primary key,

    -- Instead of using text we can limit the length of a text field
    name varchar(100)

);


create table games (
    id serial primary key,

    player1_score integer,
    player2_score integer,

    winner_id integer references players (id),

    -- These are called "foreign keys"
    player1_id integer references players (id),
    player2_id integer references players (id)
);
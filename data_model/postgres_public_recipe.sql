create table recipe
(
    name        varchar(120) not null
        constraint recipe_pk
            primary key,
    description text
);

alter table recipe
    owner to dai;


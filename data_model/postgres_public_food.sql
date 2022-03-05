create table food
(
    name       varchar(120) not null
        constraint table_namefood_pk
            primary key,
    descripion text,
    unit       varchar(120)
        constraint food_unit_name_fk
            references unit
);

alter table food
    owner to dai;


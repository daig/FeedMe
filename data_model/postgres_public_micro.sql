create table micro
(
    name       varchar(120) not null
        constraint nutrient_pk
            primary key,
    colloquial varchar(120)
);

comment on table micro is 'nutrients are directly biologically active';

alter table micro
    owner to dai;


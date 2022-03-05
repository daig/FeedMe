create table property
(
    name        varchar(120) not null
        constraint property_pk
            primary key,
    description text
);

alter table property
    owner to dai;


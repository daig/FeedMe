create table unit_system
(
    name varchar(120) not null
        constraint unit_system_pk
            primary key
);

alter table unit_system
    owner to dai;

INSERT INTO public.unit_system (name) VALUES ('metric');
INSERT INTO public.unit_system (name) VALUES ('us');
INSERT INTO public.unit_system (name) VALUES ('imperial');

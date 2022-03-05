create table macro
(
    name varchar(120) not null
        constraint macro_pk
            primary key
);

comment on table macro is 'w/ biological function served by many possible micronutrients';

alter table macro
    owner to dai;

INSERT INTO public.macro (name) VALUES ('energy');
INSERT INTO public.macro (name) VALUES ('protein');
INSERT INTO public.macro (name) VALUES ('fat');
INSERT INTO public.macro (name) VALUES ('carb');
INSERT INTO public.macro (name) VALUES ('fiber (soluble)');
INSERT INTO public.macro (name) VALUES ('fiber (insoluble)');

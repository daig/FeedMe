create table dimension
(
    name text not null
        constraint dimension_pk
            primary key
);

alter table dimension
    owner to dai;

INSERT INTO public.dimension (name) VALUES ('volume');
INSERT INTO public.dimension (name) VALUES ('weight');
INSERT INTO public.dimension (name) VALUES ('amount');

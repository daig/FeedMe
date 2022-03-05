create table unit
(
    name      varchar(120) not null
        constraint unit_pk
            primary key,
    dimension varchar(120)
        constraint unit_dimension_name_fk
            references dimension
            on update cascade on delete cascade,
    full_name varchar(120),
    system    varchar(120)
        constraint unit_unit_system_name_fk
            references unit_system
            on update cascade on delete cascade
);

alter table unit
    owner to dai;

create unique index unit_full_name_uindex
    on unit (full_name);

INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('tsp', 'volume', 'teaspoon', null);
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('tbsp', 'volume', 'tablespoon', null);
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('dz', 'amount', 'dozen', null);
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('g', 'weight', 'gram', 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('fl oz', 'volume', 'fluid ounce', 'us');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('ml', 'volume', 'milliliter', 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('kg', 'weight', 'kilogram', 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('l', 'volume', 'liter', 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('oz', 'weight', 'ounce', 'us');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('cup', 'volume', null, 'us');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('each', 'amount', null, 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('mg', 'weight', 'milligram', 'metric');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('pt', 'volume', 'pint', 'us');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('lb', 'weight', 'pound', null);
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('gal', 'volume', 'gallon', 'us');
INSERT INTO public.unit (name, dimension, full_name, system) VALUES ('qt', 'volume', 'quart', 'us');

create table food_property_scale
(
    id serial
        constraint food_property_scale_pk
            primary key
);

comment on table food_property_scale is 'rating of property of that food';

alter table food_property_scale
    owner to dai;

INSERT INTO public.food_property_scale (id) VALUES (1);
INSERT INTO public.food_property_scale (id) VALUES (2);
INSERT INTO public.food_property_scale (id) VALUES (3);
INSERT INTO public.food_property_scale (id) VALUES (4);
INSERT INTO public.food_property_scale (id) VALUES (5);

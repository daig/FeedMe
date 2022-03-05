create table food_property
(
    food     varchar(120) not null
        constraint food_property_food_name_fk
            references food
            on update cascade on delete cascade,
    property varchar(120) not null
        constraint food_property_property_name_fk
            references property
            on update cascade on delete cascade,
    scale    integer
        constraint food_property_food_property_scale_id_fk
            references food_property_scale,
    constraint food_property_pk
        primary key (food, property)
);

alter table food_property
    owner to dai;


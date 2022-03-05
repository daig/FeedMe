create table food_micro
(
    food        varchar(120)   not null
        constraint food_nutrient_food_name_fk
            references food,
    micro       varchar(120)   not null
        constraint food_nutrient_nutrient_name_fk
            references micro,
    amount      numeric(10, 3) not null,
    amount_unit varchar(120)   not null
        constraint food_nutrient_unit_name_fk
            references unit,
    constraint food_nutrient_pk
        primary key (food, micro)
);

alter table food_micro
    owner to dai;


create table recipe_ingredient
(
    recipe     varchar(120)   not null
        constraint recipe_ingredient_recipe_name_fk
            references recipe,
    ingredient varchar(120)   not null
        constraint recipe_ingredient_food_name_fk
            references food,
    amount     numeric(10, 3) not null,
    "order"    integer        not null,
    prep       text,
    constraint recipe_ingredient_pk
        primary key (recipe, ingredient)
);

alter table recipe_ingredient
    owner to dai;


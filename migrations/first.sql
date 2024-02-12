create table industrial_area(
    id bigint generated always as identity primary key unique ,
    name varchar,
    x_length real,
    y_length real,
    x real,
    y real
);
create table transform
(
    id      bigint generated always as identity primary key unique,
    nominal int,
    cost    int,
    model   varchar,
    uvn real,
    unn real,
    ukz real,
    ikz real
);
create table building(
                         id                 bigint generated always as identity primary key unique,
                         square             bigint,
                         power              bigint,
                         name               varchar,
                         description        text,
                         industrial_area_id bigint,
    foreign key (industrial_area_id) references industrial_area(id)
);
create table building_transform(
                                   id bigint generated always as identity primary key unique,
                                   transform_id bigint,
                                   building_id bigint,
                                   x real,
                                   y real,
                                   foreign key (transform_id) references transform(id),
                                       foreign key (building_id) references building(id)
);
create table input_point(
    id bigint generated always as identity primary key unique,
    building_id bigint,
    building_transform_id bigint,
    x real,
    y real,
    foreign key (building_id) references building(id),
    foreign key (building_transform_id) references building_transform(id)
);
create table coords(
                       id bigint generated always as identity primary key unique ,
                       building_id bigint,
                       x real,
                       y real,
                       foreign key (building_id) references building(id)
);




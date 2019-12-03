

create table color
(
    id serial
        constraint color_pk
      primary key,
    color varchar

);

create table type
(
    id serial
constraint type_pk
primary key ,
name varchar
);

create table gender
(
    id serial
constraint gender_pk
      primary key,
    gender varchar
);

create table classification
(
  id serial
constraint class_pk
      primary key,
  species_name varchar
);

create table planet
(
    id serial
constraint planet_pk
      primary key,
    name varchar,
    rotation_period integer,
    orbital_period integer,
    diameter integer,
    surfacewater integer,
    population integer

);

create table climatdescript
(
    id serial
constraint classif_pk
      primary key,
  climat_name varchar

);

create table climat
(

id_planet int
 constraint typ_f
                        references planet,
id_climat int
constraint col_f
                        references climatdescript,

            primary key(id_planet,id_climat)

);


create table species
(
     id serial
        constraint species_pk
      primary key,
    name varchar,

  average_height integer,
  designation varchar,
  average_life_span integer,
  language varchar,

  classification integer
constraint classification_fk
references classification,

  homeworld integer
constraint homew_fk
references planet
);


create table characters(
    id serial
                       constraint charact_pk
      primary key,
    name varchar,
    height integer,
    mass double precision,
    birthdate varchar,
    gender integer
    constraint gender_fk
                       references gender


);

create table colorpart
(

 id_fk_pers int
constraint pers_fk
                       references characters,
id_fk_type int
 constraint typ_f
                        references type,
id_fk_color int
constraint col_f
                        references color,

            primary key(id_fk_pers,id_fk_color,id_fk_type),

species integer
constraint species_fk
references species
);


create table terraindescript
(
    id serial
constraint id_pk
primary key,

terrain varchar

);

create table terrain
(
id_fk_planet int
 constraint typ_f
                        references planet,
id_fk_terrain int
constraint col_f
                        references terraindescript,

            primary key(id_fk_planet,id_fk_terrain)

);

create table classes
(
    id serial
constraint id_pk_2
primary key ,
  nameclasses varchar
);

create table model
(
id serial
constraint id_pk_3
primary key ,

manufacturer varchar,
cost_in_credits integer,
length double precision,
max_atmosph_speed integer,
crew integer,
passengers integer,
cargo_capacity integer,
consumables varchar,

classes_idx integer
constraint class_fk
references classes

);


create table vehicles
(
    id serial
constraint id_pk_4
primary key ,

name varchar,
model_idx integer
constraint model_fk
references model


);
 create table starship
(
    id serial
constraint id_pk_5
primary key ,
name varchar,
model_idx integer
constraint model_fk_2
references model,

hyperdrive double precision,
mglt integer



 );

# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\vrtic.sql

drop database if exists vrtic;
create database vrtic;
use vrtic;

create table vrtic(
    velicina varchar(50),
    cijena varchar(50),
    odgajateljica varchar(50)
);

create table skupina(
    naziv varchar (50),
    maximumdjece varchar(50),
    odgajateljica varchar(50)
);

create table odgajateljica(
    iban varchar(50),
    ime varchar (50),
    prezime varchar(50)
);

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\udruga.sql

drop database if exists udruga;
create database udruga;
use udruga;

create table djelatnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table sticenik(
    ime varchar(50),
    prezime varchar(50),
    starost varchar(50)
);

create table prostor(
    velicina varchar(50),
    boja varchar(50),
    najam varchar(50)
);
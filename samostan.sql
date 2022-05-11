# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table samostan(
    lokacija varchar(50),
    naziv varchar(50),
    velicina varchar(50)
);

create table svecenik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table posao(
    vrijeme varchar(50),
    vrijednost varchar(50),
    kvaliteta varchar(50)
);
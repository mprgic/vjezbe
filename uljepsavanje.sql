# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\uljepsavanje.sql

drop database if exists uljepsavanje;
create database uljepsavanje;
use uljepsavanje;

create table salon(
    velicina varchar(50),
    kvaliteta varchar(50),
    skupoca varchar(50)
 );

 create table djelatnik(
     kvalifikacija varchar(50),
     rad varchar(50),
     iskustvo varchar(50)
 );

 create table korisnik(
     ime varchar(50),
     prezime varchar(50),
     email varchar(50)
 );

create table usluga(
    kvaliteta varchar(50),
    cijena varchar(50),
    isplativost varchar(50)
);

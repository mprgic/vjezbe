# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\urar.sql

drop database if exists urar;
create database urar;
use urar;

create table urar(
    djelatnik varchar(50),
    osoba varchar(50),
    maxsegrta varchar(50)
);

create table sat(
    marka varchar(50),
    cijena varchar(50),
    kvaliteta varchar(50)
);

create table korisnik(
    osoba varchar(50),
    tip varchar(50)
);

create table segrt(
    osoba varchar(50),
    djelatnik varchar(50),
    praksa varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50)
);

 create table djelatnik(
     kvalifikacija varchar(50),
     rad varchar(50),
     iskustvo varchar(50)
 );

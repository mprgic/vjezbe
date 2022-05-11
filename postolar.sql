# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
    djelatnik varchar(50),
    osoba varchar(50),
    maxsegrta varchar(50)
);

create table obuca(
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

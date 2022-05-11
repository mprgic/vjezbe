# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\taksi.sql

drop database if exists taksi;
create database taksi;
use taksi;
 
create table tvrtka(
    naziv varchar(50),
    vrijednost varchar(50),
    brojzaposlenih varchar(50)
);

create table vozilo(
    cijena varchar(50),
    marka varchar(50),
    godiste varchar(50)
);

create table vozac(
    ugovor varchar(50),
    iban varchar(50),
    osoba varchar(50)
);

create table putnik(
    vrijemevoznje varchar(50),
    osoba varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50)
);
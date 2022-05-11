# C:\xampp\mysql\bin\mysql -uroot < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    naziv varchar(50),
    datumpocetka varchar(50),
    datumkraja varchar(50),
    sponzor varchar(50),
    kustos varchar(50),
    djelo varchar(50)
);

create table djelo(
    naziv varchar(50),
    umjetnik varchar(50),
    vlasnik varchar(50),
    vrijednost varchar(50)
);

create table kustos(
    iskustvo varchar(50),
    ugovor varchar(50),
    osoba varchar(50)
);

create table sponzor(
    novac varchar(50),
    dolazak varchar(50),
    osoba varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

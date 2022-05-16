# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11),
    djelatnik int not null,
    segrt int not null,
    korisnik int not null
);

create table obuca(
    sifra int not null primary key auto_increment,
    marka varchar(20) not null,
    cijena decimal(18,2) not null,
    kvaliteta varchar(50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11),
    tip varchar(20) not null,
    obuca int not null
);

create table segrt(
   sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11),
    djelatnik int not null,
    praksa boolean
);

 create table djelatnik(
     sifra int not null primary key auto_increment,
     kvalifikacija varchar(50),
     rad varchar(50),
     iskustvo varchar(50)
 );

alter table postolar add foreign key (djelatnik) references djelatnik(sifra);
alter table postolar add foreign key (segrt) references segrt(sifra);
alter table postolar add foreign key (korisnik) references korisnik(sifra);

alter table korisnik add foreign key (obuca) references obuca(sifra);

alter table segrt add foreign key (djelatnik) references djelatnik(sifra);

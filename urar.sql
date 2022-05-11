# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\urar.sql

drop database if exists urar;
create database urar;
use urar;

create table urar(
    sifra int not null primary key auto_increment,
    djelatnik int not null,
    osoba int not null,
    maxsegrta varchar(20)
);

create table sat(
    sifra int not null primary key auto_increment,
    marka varchar(20) not null,
    cijena decimal(18,2) not null,
    kvaliteta varchar(50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    tip varchar(20) not null,
    sat int not null
);

create table segrt(
    sifra int not null primary key auto_increment,
    osoba int not null,
    djelatnik int not null,
    praksa boolean
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11)
);

 create table djelatnik(
     sifra int not null primary key auto_increment,
     kvalifikacija varchar(50),
     rad varchar(50),
     iskustvo varchar(50)
 );


alter table urar add foreign key (djelatnik) references djelatnik(sifra);
alter table urar add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (osoba) references	osoba(sifra);
alter table korisnik add foreign key (sat) references sat(sifra);

alter table segrt add foreign key (djelatnik) references djelatnik(sifra);
alter table segrt add foreign key (osoba) references osoba(sifra);

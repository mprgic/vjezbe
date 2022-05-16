# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\taksi.sql

drop database if exists taksi;
create database taksi;
use taksi;
 
create table tvrtka(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    vrijednost decimal(18,2),
    vozilo int not null,
    vozac int not null
);

create table vozilo(
    sifra int not null primary key auto_increment,
    cijena decimal not null,
    marka varchar(20) not null,
    godiste datetime not null,
    vozac int not null
);

create table vozac(
    sifra int not null primary key auto_increment,
    ugovor varchar(50),
    iban varchar(50),
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11),
    putnik int not null
);

create table putnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(11),
    pocetakvoznje datetime not null,
    krajvoznje datetime not null
);

alter table tvrtka add foreign key (vozilo) references vozilo(sifra);
alter table tvrtka add foreign key (vozac) references vozac(sifra);

alter table vozilo add foreign key (vozac) references vozac(sifra);

alter table vozac add foreign key (putnik) references putnik(sifra);


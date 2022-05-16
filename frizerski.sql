# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\frizerski.sql

drop database if exists frizerski;
create database frizerski;
use frizerski;

create table salon(
    sifra int not null primary key auto_increment,
    velicina decimal not null,
    djelatnik int not null,
    korisnik int not null,
    usluga int not null
 );

 create table djelatnik(
     sifra int not null primary key auto_increment,
     kvalifikacija varchar(50) not null,
     rad varchar(50) not null,
     iskustvo varchar(50) not null,
     usluga int not null
 );

 create table korisnik(
     sifra int not null primary key auto_increment,
     ime varchar(20),
     prezime varchar(20),
     email varchar(50)
 );

create table usluga(
    sifra int not null primary key auto_increment,
    kvaliteta varchar(50),
    cijena decimal not null,
    isplativost varchar(50) not null
);


alter table salon add foreign key (djelatnik) references djelatnik(sifra);
alter table salon add foreign key (korisnik) references korisnik(sifra);
alter table salon add foreign key (usluga) references usluga(sifra);

alter table djelatnik add foreign key(usluga) references usluga(sifra);

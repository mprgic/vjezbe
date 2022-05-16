# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    datumpocetka datetime not null,
    datumkraja datetime not null,
    sponzor int not null,
    kustos int not null,
    djelo int not null
);

create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    umjetnik varchar(50),
    vlasnik varchar(50),
    vrijednost varchar(50)
);

create table kustos(
    sifra int not null primary key auto_increment,
    iskustvo varchar(50) not null,
    ugovor varchar(50),
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table sponzor(
    sifra int not null primary key auto_increment,
    novac int,
    dolazak datetime,
    ime varchar(20),
    prezime varchar(20),
    oib varchar(11),
    email varchar(50)
);

alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table izlozba add foreign key (djelo) references djelo(sifra);
alter table izlozba add foreign	key (kustos) references kustos(sifra);

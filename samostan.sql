# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table samostan(
    sifra int not null primary key auto_increment,
    lokacija varchar(50) not null,
    naziv varchar(50) not null,
    velicina varchar(50),
    svecenik int not null,
    posao int not null
);

create table svecenik(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    oib varchar(11),
    email varchar(50)
);

create table posao(
    sifra int not null primary key auto_increment,
    vrijempocetka datetime not null,
    vrijemezavrsetka datetime not null,
    vrijednost varchar(50),
    kvaliteta varchar(50)
);

alter table samostan add foreign key (svecenik) references svecenik(sifra);
alter table samostan add foreign key (posao) references posao(sifra);

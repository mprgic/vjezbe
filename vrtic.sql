# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\vrtic.sql

drop database if exists vrtic;
create database vrtic;
use vrtic;

create table vrtic(
    sifra int not null primary key auto_increment,
    velicina varchar(50),
    cijena decimal not null,
    odgajateljica int not null,
    skupina int not null
);

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    maximumdjece varchar(50),
    odgajateljica int not null
);

create table odgajateljica(
    sifra int not null primary key auto_increment,
    iban varchar(11),
    ime varchar (20),
    prezime varchar(20),
    skupina	int not null
);

alter table vrtic add foreign key (odgajateljica) references odgajateljica(sifra);
alter table vrtic add foreign key (skupina) references skupina(sifra);

alter table skupina add foreign key (odgajateljica) references odgajateljica(sifra);

alter table odgajateljica add foreign key (skupina) references skupina(sifra);


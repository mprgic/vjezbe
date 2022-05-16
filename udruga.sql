# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\MihaelPrgic\Documents\GitHub\vjezbe\udruga.sql

drop database if exists udruga;
create database udruga;
use udruga;

create table udruga(
    naziv varchar(50) not null,
    djelatnik int not null,
    sticenik int not null,
    prostor int not null
);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    oib varchar(11),
    email varchar(50),
    sticenik int not null
);

create table sticenik(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    datumrodenja datetime 
);

create table prostor(
    sifra int not null primary key auto_increment,
    velicina varchar(50),
    boja varchar(20),
    najam decimal(18,2)
);

alter table udruga add foreign key (djelatnik) references djelatnik(sifra);
alter table udruga add foreign key (sticenik) references sticenik(sifra);
alter table udruga add foreign key (prostor) references prostor(sifra);

alter table djelatnik add foreign key (sticenik) references sticenik(sifra);

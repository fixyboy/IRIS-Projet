drop database  if exists Parcinfo ;
create database parcinfo ;
use parcinfo;

create table employer (
idemplo int (5) not null auto_increment ,
prenom varchar(50),
nom varchar(50),
departement varchar (50),
primary key(identreprise)
);

create table client (
idclient int (5) not null auto_increment ,
nom varchar(50),
prenom varchar(50),
email varchar(50),
secteur varchar (50),
idemplo int (5) not null,
primary key (idclient),
foreign key (idemplo) references emplyer (idemplo)
);

create table user(
	iduser int(5) not null auto_increment,
	nom varchar(50),
	prenom varchar(50),
	email varchar(50),
	mdp varchar(50),
	role enum("admin", "user"),
	primary key(iduser)
);

insert into user values (null, "Myriam", "Dacine", "a@gmail.com", "123", "admin");
insert into user values (null, "JM", "Helder", "b@gmail.com", "456", "user");
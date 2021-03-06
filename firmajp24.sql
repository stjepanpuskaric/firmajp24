DROP database IF EXISTS firmajp24;
CREATE database firmajp24;
use firmajp24;

CREATE TABLE projekt(
	sifra int NOT NULL PRIMARY KEY auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2)
	);
	
create table programer(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	datumrodenja datetime,
	placa decimal(18,2)
	);
	
create table sudjeluje(
	projekt int not null,
	programer int not null,
	datumpocetka datetime not null,
	datumkraja datetime
	);
	
alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);

insert into projekt (naziv) values
	('Projekt');

insert into programer(ime,prezime) values
	('Stjepan', 'Puškarić');
	
insert into sudjeluje(projekt,programer,datumpocetka) values
	('1','1','2020-12-03');

	



DROP dataabase IF EXISTS firmajp24;
CREATE database firmajp24;
use firmajp24;

CREATE TABLE projekt(
	sifra int NOT NULL PRIMARY KEY auto_increment,
	naziv varchar(50),
	cijena decimal(18,2)
	);
	
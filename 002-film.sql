create table film
(
	FilmId varchar(15) not null
		primary key,
	Titel varchar(45) not null,
	Regissör varchar(45) not null,
	Genre enum('Komedi', 'Skräck', 'Drama', 'Action', 'Thriller', 'Dokumentär', 'Romantik', 'Historia') not null,
	ProduktionsLand varchar(45) not null,
	UtgivningsÅr year not null,
	ÅldersBegränsning int null
);


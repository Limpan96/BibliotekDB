create table bok
(
	ISBN varchar(15) not null
		primary key,
	Titel varchar(100) not null,
	Författare varchar(100) not null,
	ÄmnesOrd enum('Komedi', 'Fantasy', 'Skräck', 'Drama', 'Action', 'Thriller', 'Dokumentär', 'Romantik', 'Historia', 'Självbiografi', 'Fakta') not null,
	Kategori enum('Kurslitteratur', 'Referenslitteratur', 'Tidsskrift', 'Övriga böcker') not null,
	UtgivningsÅr year null
);


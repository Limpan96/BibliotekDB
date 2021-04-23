create table användare
(
	AnvändarId varchar(30) not null
		primary key,
	FörNamn varchar(45) not null,
	EfterNamn varchar(45) not null,
	Telefon varchar(15) not null,
	Adress varchar(45) null,
	Email varchar(100) not null,
	PersonNr varchar(15) not null,
	Ålder int not null,
	Typ enum('Student', 'Forskare', 'Övriga Universitetsanställda', 'Allmänheten') not null,
	AntalLåneObjekt int null
);


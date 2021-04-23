create table fysiskkopia
(
	StreckKod varchar(15) not null
		primary key,
	Plats varchar(15) not null,
	Status enum('Utlånad', 'Reserverad', 'Tillgänglig') not null,
	ÅterlämningsDatum date not null,
	LåneId varchar(15) not null,
	FilmId varchar(15) not null,
	ISBN varchar(15) not null,
	constraint ISBN
		foreign key (ISBN) references bok (ISBN)
			on update cascade on delete cascade,
	constraint LåneId
		foreign key (LåneId) references lån (LåneId)
			on update cascade on delete cascade
);

create index ISBN_idx
	on fysiskkopia (ISBN);

create index LåneId_idx
	on fysiskkopia (LåneId);


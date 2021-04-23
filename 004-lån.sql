create table lån
(
	LåneId varchar(15) not null
		primary key,
	StartDatum date not null,
	AnvändarId varchar(45) not null,
	AntalObjekt int null,
	constraint AnvändarId
		foreign key (AnvändarId) references användare (AnvändarId)
			on update cascade on delete cascade
);

create index AnvändarId_idx
	on lån (AnvändarId);


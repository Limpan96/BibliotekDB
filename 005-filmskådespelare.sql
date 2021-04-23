create table filmskådespelare
(
	SkådespelarId varchar(15) not null,
	FilmId varchar(15) not null,
	primary key (SkådespelarId, FilmId),
	constraint FilmId
		foreign key (FilmId) references film (FilmId)
			on update cascade on delete cascade,
	constraint SkådespelarId
		foreign key (SkådespelarId) references skådespelare (SkådespelarId)
			on update cascade on delete cascade
);

create index FilmId_idx
	on filmskådespelare (FilmId);


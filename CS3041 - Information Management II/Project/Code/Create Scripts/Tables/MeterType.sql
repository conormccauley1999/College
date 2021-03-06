use energycrm;
#drop table if exists MeterType;

create table if not exists MeterType (
	Id int auto_increment primary key,
	UnitId int,
	`Name` varchar(255) not null unique,
    DateCreated timestamp not null,
	DateModified timestamp null,
    constraint FK_MeterType_Unit foreign key (UnitId) references Unit(Id)
);

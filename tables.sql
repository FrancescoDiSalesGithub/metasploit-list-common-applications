create table platform
(

	id varchar,
	name varchar not null,
	category varchar not null,
	description varchar not null,
	
	primary key(id)

);

create table version
(
	id_platform varchar,
	id_version varchar,
	version varchar not null,
	
	primary key(id_version),
	foreign key(id_platform) references platform(id) on delete cascade
	
);

create table vulnerability
(
	cve varchar,
	id_platform varchar,
	id_version varchar,
	name varchar not null,
	metasploit_module varchar,
	
	primary key(cve),
	foreign key(id_platform) references platform(id),
	foreign key(id_version) references version(id_version)
)



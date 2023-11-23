create schema vulnerabilities;


create table vulnerabilities.exploit
(

id serial,
name varchar,
date_solved varchar,
cve varchar,

primary key(id)

);

create table vulnerabilities.operating_system
(
	osid serial,
	exploitid integer,
	name varchar

);

create table vulnerabilities.exploit_operating_system
(
	osid integer,
	exploitid integer,
	
	foreign key(osid) references vulnerabilities.operating_system(osid),
	foreign key(exploitid) references vulnerabilities.exploit(id)

);


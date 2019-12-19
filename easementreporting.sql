drop database if exists emir;
create database emir;
use emir;

create table organization (
id 		int				primary key auto_increment,
name 	varchar(255)	not null,
address	varchar(255)	not null,
city	varchar(255)	not null,
state	varchar(2)		not null,
zip		varchar(5)		not null,
phone	varchar(12)		not null,
fax		varchar(12)		not null,
email	varchar(255)
);

create table user(
id					int				primary key auto_increment,
name				varchar(50)		not null,
organizationId 		varchar(255)	not null,
isMonitor			tinyInt			not null,
isOfficeStaff		tinyInt			not null,
isAdmin				tinyInt			not null

);

create table landowner(
id 		int 			primary key auto_increment,
name	varchar(255)	not null,
address varchar(255)	not null,
city	varchar(255)	not null,
state	varchar(2)		not null,
zip		varchar(5)		not null,
phone	varchar(12),
email	varchar(255)
);

create table easement(
id	int	primary key auto_increment,
name	varchar(255)  not null,
address varchar(255)	not null,
city	varchar(255)	not null,
state	varchar(2)		not null,
zip	varchar(5)		not null,
acres 	int		not null
);

create table compliance(
id	int	primary key auto_increment,
inspectionMethod	varchar(50)	not null,
attendies	varchar(255)	not null,
landUse		varchar(255)	not null,
agUse		tinyint,
modifications	text	not null,
compliant		text	not null,
);


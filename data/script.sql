/*
Created		7. 10. 2015
Modified		2. 1. 2016
Project		
Model		
Company		
Author		
Version		
Database		Oracle 10g 
*/


-- Create Types section


-- Create Tables section


Create table "osoba" (
	"os_cislo" Integer NOT NULL ,
	"meno" Varchar2 (30),
	"priezvisko" Varchar2 (30),
primary key ("os_cislo") 
) 
/

Create table "praca" (
	"id" Integer NOT NULL ,
	"os_oponent" Integer,
	"os_veduci" Integer NOT NULL ,
	"nazov" Varchar2 (30),
	"semester" Varchar2 (30),
	"rok" Varchar2 (30),
	"id_typ" Integer NOT NULL ,
	"os_student" Integer NOT NULL ,
	"os_tutor" Integer,
primary key ("id") 
) 
/

Create table "st_program" (
	"st_odbor" Integer NOT NULL ,
	"st_zameranie" Integer NOT NULL ,
	"popis_odboru" Varchar2 (50),
	"popis_zamerania" Varchar2 (50),
	"obhajoba" Integer,
	"id_fakulty" Integer NOT NULL ,
primary key ("st_odbor","st_zameranie") 
) 
/

Create table "komisie" (
	"id_komisie" Integer NOT NULL ,
	"nazov" Varchar2 (30),
	"miestnost" Varchar2 (30),
	"id_termin" Integer NOT NULL ,
primary key ("id_komisie") 
) 
/

Create table "zap_studenti" (
	"id" Integer NOT NULL ,
	"id_komisie" Integer NOT NULL ,
	"cas_zacatia" Date,
	"cas_konca" Date,
	"stav" Varchar2 (30),
	"znamka" Char (2),
	"kolo" Integer,
	"os_cislo" Integer NOT NULL ,
primary key ("id") 
) 
/

Create table "funkcia" (
	"id_fun" Integer NOT NULL ,
	"popis" Varchar2 (30),
primary key ("id_fun") 
) 
/

Create table "typ_prace" (
	"id_typ" Integer NOT NULL ,
	"popis" Varchar2 (30),
primary key ("id_typ") 
) 
/

Create table "ucitelia" (
	"id_fun" Integer NOT NULL ,
	"id_komisie" Integer NOT NULL ,
	"os_cislo" Integer NOT NULL ,
primary key ("id_fun","id_komisie") 
) 
/

Create table "terminy" (
	"id_termin" Integer NOT NULL ,
	"datum" Date NOT NULL ,
	"cas_zaciatia" Date,
	"cas_konca" Date,
	"prestavka" Date,
primary key ("id_termin") 
) 
/

Create table "fakulty" (
	"id_fakulty" Integer NOT NULL ,
	"nazov" Varchar2 (30),
	"adresa" Varchar2 (30),
primary key ("id_fakulty") 
) 
/

Create table "student" (
	"os_cislo" Integer NOT NULL ,
	"st_odbor" Integer NOT NULL ,
	"st_zameranie" Integer NOT NULL ,
	"rocnik" Char (1) NOT NULL ,
	"st_skupina" Char (6) NOT NULL ,
	"st_program" Varchar2 (30) NOT NULL ,
primary key ("os_cislo") 
) 
/

Create table "ucitel" (
	"os_cislo" Integer NOT NULL ,
	"katedra" Varchar2 (30),
primary key ("os_cislo") 
) 
/


-- Create Indexes section


-- Create Foreign keys section

Alter table "student" add  foreign key ("os_cislo") references "osoba" ("os_cislo") 
/

Alter table "ucitel" add  foreign key ("os_cislo") references "osoba" ("os_cislo") 
/

Alter table "student" add  foreign key ("st_odbor","st_zameranie") references "st_program" ("st_odbor","st_zameranie") 
/

Alter table "zap_studenti" add  foreign key ("id_komisie") references "komisie" ("id_komisie") 
/

Alter table "ucitelia" add  foreign key ("id_komisie") references "komisie" ("id_komisie") 
/

Alter table "ucitelia" add  foreign key ("id_fun") references "funkcia" ("id_fun") 
/

Alter table "praca" add  foreign key ("id_typ") references "typ_prace" ("id_typ") 
/

Alter table "komisie" add  foreign key ("id_termin") references "terminy" ("id_termin") 
/

Alter table "st_program" add  foreign key ("id_fakulty") references "fakulty" ("id_fakulty") 
/

Alter table "praca" add  foreign key ("os_student") references "student" ("os_cislo") 
/

Alter table "zap_studenti" add  foreign key ("os_cislo") references "student" ("os_cislo") 
/

Alter table "praca" add  foreign key ("os_tutor") references "ucitel" ("os_cislo") 
/

Alter table "ucitelia" add  foreign key ("os_cislo") references "ucitel" ("os_cislo") 
/

Alter table "praca" add  foreign key ("os_veduci") references "ucitel" ("os_cislo") 
/

Alter table "praca" add  foreign key ("os_oponent") references "ucitel" ("os_cislo") 
/


-- Create Object Tables section


-- Create XMLType Tables section


-- Create Functions section


-- Create Sequences section


-- Create Packages section


-- Create Synonyms section


-- Create Table comments section


-- Create Attribute comments section



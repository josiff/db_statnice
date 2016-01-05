--------------------------------------------------------
--  File created - Utorok-január-05-2016   
--------------------------------------------------------
DROP TABLE "JOSIF"."FAKULTY" cascade constraints;
DROP TABLE "JOSIF"."FUNKCIA" cascade constraints;
DROP TABLE "JOSIF"."KOMISIE" cascade constraints;
DROP TABLE "JOSIF"."OSOBA" cascade constraints;
DROP TABLE "JOSIF"."PRACA" cascade constraints;
DROP TABLE "JOSIF"."ST_PROGRAM" cascade constraints;
DROP TABLE "JOSIF"."STUDENT" cascade constraints;
DROP TABLE "JOSIF"."TERMINY" cascade constraints;
DROP TABLE "JOSIF"."TYP_PRACE" cascade constraints;
DROP TABLE "JOSIF"."UCITEL" cascade constraints;
DROP TABLE "JOSIF"."UCITELIA" cascade constraints;
DROP TABLE "JOSIF"."ZAP_STUDENTI" cascade constraints;
--------------------------------------------------------
--  DDL for Table FAKULTY
--------------------------------------------------------

  CREATE TABLE "JOSIF"."FAKULTY" 
   (	"ID_FAKULTY" NUMBER(*,0), 
	"NAZOV" VARCHAR2(30 BYTE), 
	"ADRESA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FUNKCIA
--------------------------------------------------------

  CREATE TABLE "JOSIF"."FUNKCIA" 
   (	"ID_FUN" NUMBER(*,0), 
	"POPIS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table KOMISIE
--------------------------------------------------------

  CREATE TABLE "JOSIF"."KOMISIE" 
   (	"ID_KOMISIE" NUMBER(*,0), 
	"NAZOV" VARCHAR2(30 BYTE), 
	"MIESTNOST" VARCHAR2(30 BYTE), 
	"ID_TERMIN" NUMBER(*,0), 
	"ST_ODBOR" NUMBER(*,0), 
	"ST_ZAMERANIE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OSOBA
--------------------------------------------------------

  CREATE TABLE "JOSIF"."OSOBA" 
   (	"OS_CISLO" NUMBER(*,0), 
	"MENO" VARCHAR2(30 BYTE), 
	"PRIEZVISKO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRACA
--------------------------------------------------------

  CREATE TABLE "JOSIF"."PRACA" 
   (	"ID" NUMBER(*,0), 
	"OS_OPONENT" NUMBER(*,0), 
	"OS_VEDUCI" NUMBER(*,0), 
	"NAZOV" VARCHAR2(30 BYTE), 
	"SEMESTER" VARCHAR2(30 BYTE), 
	"ROK" VARCHAR2(30 BYTE), 
	"ID_TYP" NUMBER(*,0), 
	"OS_STUDENT" NUMBER(*,0), 
	"OS_TUTOR" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ST_PROGRAM
--------------------------------------------------------

  CREATE TABLE "JOSIF"."ST_PROGRAM" 
   (	"ST_ODBOR" NUMBER(*,0), 
	"ST_ZAMERANIE" NUMBER(*,0), 
	"POPIS_ODBORU" VARCHAR2(50 BYTE), 
	"POPIS_ZAMERANIA" VARCHAR2(50 BYTE), 
	"OBHAJOBA" NUMBER(*,0), 
	"ID_FAKULTY" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "JOSIF"."STUDENT" 
   (	"OS_CISLO" NUMBER(*,0), 
	"ST_ODBOR" NUMBER(*,0), 
	"ST_ZAMERANIE" NUMBER(*,0), 
	"ROCNIK" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TERMINY
--------------------------------------------------------

  CREATE TABLE "JOSIF"."TERMINY" 
   (	"ID_TERMIN" NUMBER(*,0), 
	"DATUM" DATE, 
	"CAS_ZACIATIA" DATE, 
	"CAS_KONCA" DATE, 
	"PRESTAVKA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TYP_PRACE
--------------------------------------------------------

  CREATE TABLE "JOSIF"."TYP_PRACE" 
   (	"ID_TYP" NUMBER(*,0), 
	"POPIS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table UCITEL
--------------------------------------------------------

  CREATE TABLE "JOSIF"."UCITEL" 
   (	"OS_CISLO" NUMBER(*,0), 
	"KATEDRA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table UCITELIA
--------------------------------------------------------

  CREATE TABLE "JOSIF"."UCITELIA" 
   (	"ID_FUN" NUMBER(*,0), 
	"ID_KOMISIE" NUMBER(*,0), 
	"OS_CISLO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZAP_STUDENTI
--------------------------------------------------------

  CREATE TABLE "JOSIF"."ZAP_STUDENTI" 
   (	"ID" NUMBER(*,0), 
	"ID_KOMISIE" NUMBER(*,0), 
	"CAS_ZACATIA" DATE, 
	"CAS_KONCA" DATE, 
	"STAV" VARCHAR2(30 BYTE), 
	"ZNAMKA" CHAR(2 BYTE), 
	"KOLO" NUMBER(*,0), 
	"OS_CISLO" NUMBER(*,0), 
	"ROK" VARCHAR2(4 BYTE), 
	"SEMESTER" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JOSIF.FAKULTY
SET DEFINE OFF;
Insert into JOSIF.FAKULTY (ID_FAKULTY,NAZOV,ADRESA) values ('1','Fakulta riadenia a informatiky','Zilina');
REM INSERTING into JOSIF.FUNKCIA
SET DEFINE OFF;
Insert into JOSIF.FUNKCIA (ID_FUN,POPIS) values ('1','predseda');
Insert into JOSIF.FUNKCIA (ID_FUN,POPIS) values ('2','tajomnik');
Insert into JOSIF.FUNKCIA (ID_FUN,POPIS) values ('3','clen');
REM INSERTING into JOSIF.KOMISIE
SET DEFINE OFF;
Insert into JOSIF.KOMISIE (ID_KOMISIE,NAZOV,MIESTNOST,ID_TERMIN,ST_ODBOR,ST_ZAMERANIE) values ('1','Prva','A','1','102','0');
Insert into JOSIF.KOMISIE (ID_KOMISIE,NAZOV,MIESTNOST,ID_TERMIN,ST_ODBOR,ST_ZAMERANIE) values ('2','Druha','B','1',null,null);
Insert into JOSIF.KOMISIE (ID_KOMISIE,NAZOV,MIESTNOST,ID_TERMIN,ST_ODBOR,ST_ZAMERANIE) values ('3','Tretia','C','1',null,null);
Insert into JOSIF.KOMISIE (ID_KOMISIE,NAZOV,MIESTNOST,ID_TERMIN,ST_ODBOR,ST_ZAMERANIE) values ('4','Stvrta','D','1',null,null);
Insert into JOSIF.KOMISIE (ID_KOMISIE,NAZOV,MIESTNOST,ID_TERMIN,ST_ODBOR,ST_ZAMERANIE) values ('5','Piata','E','2',null,null);
REM INSERTING into JOSIF.OSOBA
SET DEFINE OFF;
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('100','Callie','Stanton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('101','Lani','Waters');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('102','Quinlan','Frazier');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('103','Sara','Singleton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('104','Brenna','Guerra');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('105','Rhiannon','Mayer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('106','Oliver','Harrell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('107','Jasper','Fowler');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('108','Vladimir','Mitchell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('109','Barrett','Frost');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('110','Keane','Sykes');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('111','Salvador','Graham');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('112','Hermione','Rich');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('113','Hyatt','Merritt');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('114','Paki','Mayer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('115','Holmes','Simon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('116','Samantha','Schwartz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('117','Vivian','Santana');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('118','Jarrod','England');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('119','Dora','Parker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('120','Abraham','Cannon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('121','Damian','Ware');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('122','Tanner','Bonner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('123','Connor','Montgomery');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('124','Mariam','Miles');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('125','Raja','Kidd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('126','Addison','Mcclain');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('127','Ashton','Wall');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('128','Brock','Ewing');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('129','Rahim','Coffey');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('130','Tara','Roach');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('131','Faith','Kirby');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('132','Alice','Holden');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('133','Suki','Bernard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('134','Amelia','Marsh');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('135','Akeem','Flynn');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('136','Rylee','Hale');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('137','Pandora','Hopper');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('138','Carol','Mcconnell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('139','Conan','Weiss');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('140','Callum','Kidd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('141','Bruno','Hodges');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('142','Kelly','Hurley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('143','Stephanie','Dillon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('144','Ivor','Lara');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('145','Britanni','Mccoy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('146','Nathan','Mayer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('147','Tanisha','Bryan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('148','Ann','Bowen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('149','MacKenzie','Munoz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('150','Demetria','Chapman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('151','Benjamin','French');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('152','Taylor','Lopez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('153','Darius','Barnett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('154','Brody','Leonard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('155','Ruby','Herman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('156','Noah','Robbins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('157','Ingrid','Mccall');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('158','Jordan','Simpson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('159','Damon','York');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('160','Abra','Chen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('161','Zia','Davidson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('162','Georgia','Mendoza');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('163','Shafira','Puckett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('164','Portia','Castro');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('165','Hakeem','Holloway');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('166','Uta','Castaneda');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('167','Yvonne','Byers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('168','Vaughan','Bennett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('169','Wendy','Ball');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('170','Debra','Crawford');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('171','Aurora','David');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('172','Desirae','Mccarty');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('173','Hollee','Nelson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('174','Ginger','Norris');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('175','Bradley','Beach');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('176','Reuben','Brock');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('177','Kim','Miranda');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('178','Lillian','Hodges');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('179','Fleur','Gentry');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('180','Rama','Weber');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('181','Wayne','Dotson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('182','Myra','Hester');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('183','Brielle','Bird');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('184','Jonas','Faulkner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('185','Priscilla','Meyers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('186','Cameron','Hamilton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('187','Ursula','Ayala');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('188','Felicia','Benson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('189','Paki','Mooney');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('190','Holmes','Joyce');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('191','Colleen','Gould');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('192','Keegan','Wright');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('193','Larissa','Morin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('194','Alexis','Vaughn');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('195','Hadassah','Warren');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('196','Jamalia','Welch');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('197','Abel','Willis');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('198','Rhea','Bryan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('199','Blake','Mcdaniel');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('200','Jameson','Bennett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('201','Savannah','Downs');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('202','Camden','Finley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('203','Brandon','Higgins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('204','Amanda','Maldonado');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('205','Geraldine','Sears');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('206','Ryan','Decker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('207','Velma','Salinas');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('208','Duncan','Parrish');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('209','Aphrodite','Schneider');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('210','Ciaran','Carlson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('211','Shaeleigh','Dotson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('212','Hermione','Mueller');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('213','Ivana','Boyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('214','Susan','Cooley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('215','Aaron','Atkinson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('216','Patricia','Hartman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('217','Emily','Robbins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('218','Amelia','Hays');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('219','Blaze','Coffey');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('220','Cailin','Frost');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('221','George','Mendoza');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('222','Urielle','Strong');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('223','Tyler','Ashley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('224','Maggy','Freeman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('225','Leo','Barker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('226','Aspen','Hess');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('227','Hyatt','Horne');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('228','Desirae','Richardson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('229','Aurora','Rodriguez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('230','Scarlett','Gonzalez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('231','Vladimir','Sims');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('232','Conan','Russo');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('233','Petra','Berger');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('234','Yolanda','Clayton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('235','Nichole','Christensen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('236','Finn','Reese');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('237','Lynn','Mullen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('238','Gary','Rivers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('239','Ariana','Browning');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('240','Sharon','Decker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('241','Quyn','Walker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('242','Garrison','Acosta');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('243','Darrel','Freeman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('244','Sybil','Kaufman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('245','Walker','Rivers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('246','Kathleen','Daugherty');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('247','Ila','Buckner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('248','Kareem','Russo');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('249','Evangeline','Abbott');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('250','Karly','Chase');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('251','Shafira','Munoz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('252','Orli','Kinney');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('253','Eaton','Donaldson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('254','Lara','Stewart');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('255','Nolan','Kemp');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('256','Yen','Daugherty');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('257','Sade','Nash');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('258','Farrah','Decker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('259','Vivian','Tate');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('260','Quinn','Valenzuela');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('261','Acton','Dillon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('262','Raja','Reilly');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('263','Wesley','Olson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('264','Tamekah','Whitney');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('265','September','Oneal');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('266','Yasir','Baker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('267','Lev','Vang');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('268','Dillon','Mason');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('269','Scott','Watson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('270','Ignatius','Glover');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('271','Aquila','Maynard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('272','Vivien','Bennett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('273','Latifah','Mathews');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('274','Dana','Richards');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('275','Brenna','Garza');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('276','Wallace','Moses');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('277','Micah','Combs');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('278','Hyatt','Rosa');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('279','Hayden','Mayer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('280','Channing','Frost');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('281','Leandra','Donaldson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('282','Cyrus','Matthews');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('283','Chantale','Holland');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('284','Brenna','Mays');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('285','Frances','Huffman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('286','Blaze','Day');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('287','Lacey','Hutchinson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('288','Magee','Sutton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('289','Keiko','Mccoy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('290','Xandra','Pacheco');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('291','Beck','Dyer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('292','Ivan','Wong');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('293','Kylee','Lloyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('294','Haviva','Oconnor');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('295','Grady','Lee');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('296','Malcolm','Howell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('297','Suki','Decker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('298','Jacqueline','Browning');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('299','Fulton','Patel');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('300','Isadora','Garrett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('301','Keelie','Peck');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('302','Sybill','Gillespie');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('303','Edward','Sanchez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('304','Lavinia','Gates');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('305','Patricia','Workman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('306','Ezra','Morales');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('307','Alyssa','Reilly');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('308','Nomlanga','Buckley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('309','Ronan','Berger');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('310','Rose','Nichols');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('311','Oprah','Molina');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('312','Leslie','Chapman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('313','Beck','Romero');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('314','Pamela','Reese');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('315','Amethyst','Peterson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('316','Heather','Marquez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('317','Willow','Hawkins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('318','Buffy','Kirkland');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('319','Jakeem','Mcpherson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('320','Jena','Green');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('321','Rogan','Guerra');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('322','Tucker','Carrillo');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('323','Octavius','Colon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('324','Shad','Snow');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('325','Amena','Lynch');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('326','Gray','Cabrera');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('327','Cameron','Elliott');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('328','Curran','Baldwin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('329','Connor','Soto');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('330','Sonya','Rice');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('331','Keiko','Espinoza');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('332','Quamar','Britt');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('333','Jana','Sims');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('334','Winter','Lowe');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('335','Shad','Russell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('336','Tate','Harrington');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('337','Herrod','Marshall');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('338','Branden','Grant');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('339','Kieran','Compton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('340','Oren','Foley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('341','Jaquelyn','Bruce');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('342','Byron','Frazier');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('343','Jordan','Cotton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('344','Suki','Glover');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('345','Winter','Santana');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('346','Debra','Mullins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('347','Maggy','Hodge');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('348','Marah','Knox');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('349','Maite','Battle');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('350','Kenyon','Owen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('351','Octavia','Buckner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('352','Hermione','Morin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('353','Walter','Lowery');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('354','Yardley','Mosley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('355','Leah','Ortega');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('356','Sandra','Olson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('357','Jermaine','Tate');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('358','Yolanda','Mckenzie');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('359','Meredith','Giles');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('360','Maxine','Pope');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('361','Hyatt','Sanders');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('362','Kevin','Perry');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('363','Britanney','Higgins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('364','Roth','Mejia');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('365','Carol','Faulkner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('366','Kylie','Baldwin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('367','Liberty','Brennan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('368','Lamar','Dillard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('369','Vera','Garrison');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('370','Philip','Woods');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('371','Deacon','Grant');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('372','Francesca','Murphy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('373','Eden','Huber');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('374','Kennedy','Perez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('375','Rosalyn','Guthrie');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('376','Rahim','Morton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('377','Flynn','Mcpherson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('378','Brendan','Kane');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('379','Igor','Rollins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('380','Justina','Booth');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('381','Sylvester','Malone');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('382','Imelda','Mason');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('383','Delilah','Ware');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('384','Elaine','Sampson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('385','Richard','Gaines');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('386','Amena','Merrill');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('387','Cameron','Fletcher');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('388','Keegan','Hartman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('389','Amanda','Marsh');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('390','Bree','Hess');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('391','Lunea','Wong');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('392','Moana','Munoz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('393','Hedy','Case');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('394','Jenette','Guerra');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('395','Kasimir','Houston');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('396','Galena','Hodge');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('397','Ocean','Woodard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('398','Renee','Carter');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('399','Casey','Donovan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('400','Xanthus','Mcfarland');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('401','Timothy','Schmidt');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('402','Jolene','Hendricks');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('403','Sharon','Benjamin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('404','Claudia','Gibbs');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('405','Elaine','Norton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('406','Martha','Gaines');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('407','Merrill','Hendrix');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('408','Chester','Hickman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('409','Cameran','Whitfield');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('410','Plato','Woodard');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('411','Stewart','Bradshaw');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('412','Miranda','Tyler');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('413','Kellie','Brooks');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('414','Andrew','Roth');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('415','Emery','Nunez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('416','Flavia','Donovan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('417','Dacey','Beasley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('418','Lois','Booth');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('419','Ruby','Williams');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('420','Ryan','Boyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('421','Perry','Barlow');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('422','Josephine','Gentry');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('423','Tamara','Walls');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('424','Casey','Maldonado');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('425','Macon','Sosa');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('426','Aquila','English');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('427','Anika','Hansen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('428','Chava','Tran');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('429','Adrian','Gilliam');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('430','Hillary','French');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('431','Brenda','Bass');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('432','Dara','Hoffman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('433','Ruth','Berger');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('434','Harper','Kirby');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('435','Axel','Conrad');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('436','Fulton','Hahn');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('437','Thomas','Carey');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('438','India','Velazquez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('439','Austin','Ayers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('440','Quemby','Wallace');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('441','Jason','Caldwell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('442','Chastity','Knapp');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('443','Kaden','Norris');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('444','Oprah','Nicholson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('445','Zephania','Whitehead');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('446','Ruby','Turner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('447','Demetrius','Shaffer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('448','Imelda','Byrd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('449','Stephanie','Snow');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('450','Martha','Whitley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('451','Risa','Baxter');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('452','Irene','Duncan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('453','Edan','Tate');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('454','Hilary','Cabrera');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('455','Norman','Ball');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('456','Blake','Clements');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('457','Justina','Bright');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('458','Evangeline','Black');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('459','Demetrius','England');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('460','Melissa','Macdonald');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('461','Indigo','Riley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('462','Yuri','Hicks');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('463','Herrod','Hurley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('464','Felix','Bishop');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('465','Lawrence','Potter');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('466','Harlan','Forbes');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('467','Jonas','Herrera');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('468','Nyssa','Hurley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('469','Tad','Vinson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('470','Rama','Hunt');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('471','Lane','Mitchell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('472','Carter','Vance');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('473','Beatrice','Melton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('474','Hyatt','Bright');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('475','Phoebe','Phillips');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('476','Felix','Benson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('477','Geoffrey','Keith');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('478','Merritt','Simmons');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('479','Madeson','Byers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('480','Galena','Branch');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('481','Maxwell','Campbell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('482','Hammett','Hudson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('483','Wesley','Robertson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('484','Jamal','Powell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('485','Morgan','Case');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('486','Brooke','Guerrero');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('487','Karyn','Lloyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('488','Brady','Gould');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('489','Dawn','Noble');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('490','Noel','Roy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('491','Amanda','Fletcher');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('492','Xena','Floyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('493','Hamilton','Mcknight');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('494','Beck','Sharpe');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('495','Lynn','Nieves');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('496','Pandora','Barker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('497','Talon','Ferguson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('498','Patience','Lancaster');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('499','Robert','Kline');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('1','Cody','Olson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('2','Virginia','Booth');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('3','Lance','Sampson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('4','Boris','Horne');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('5','Xanthus','Owens');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('6','Idona','Rose');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('7','Jenna','Watkins');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('8','Haviva','Ray');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('9','Celeste','Austin');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('10','Cora','Contreras');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('11','Finn','Sherman');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('12','Zenaida','Olson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('13','Ocean','Glover');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('14','Kirk','Burch');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('15','Perry','Obrien');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('16','Yuri','Rasmussen');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('17','Kasper','Bonner');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('18','Quamar','Gibbs');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('19','Len','Stanley');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('20','Dara','Gallagher');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('21','Lacey','Vaughan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('22','Alexander','Fulton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('23','Callie','Hayes');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('24','Lesley','Dodson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('25','Akeem','Neal');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('26','Isaiah','Raymond');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('27','Valentine','Harrell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('28','Jerry','Barber');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('29','Leandra','Sampson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('30','Phyllis','Richards');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('31','Doris','Wilkinson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('32','Burke','Richards');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('33','Ciara','Glenn');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('34','Brennan','Bass');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('35','Ayanna','Hanson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('36','Brenda','Gilbert');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('37','Denise','Downs');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('38','Ivan','Mcbride');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('39','Ayanna','Mcneil');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('40','Chanda','Haynes');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('41','Bianca','Daugherty');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('42','Reuben','Bender');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('43','Xyla','Ramirez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('44','Aidan','Wade');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('45','Amber','Sullivan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('46','Tara','Love');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('47','Pascale','Maxwell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('48','Angela','Powell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('49','Irma','Ellison');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('50','Perry','Cruz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('51','Jared','English');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('52','Walker','Reid');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('53','Taylor','Boyd');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('54','Garrison','Carver');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('55','Maxwell','Martinez');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('56','Moses','House');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('57','Ainsley','Little');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('58','Liberty','Kent');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('59','Gage','Carson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('60','Isaac','Murphy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('61','Mikayla','Schwartz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('62','Clarke','Levy');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('63','Miriam','Sandoval');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('64','India','Levine');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('65','Neville','Cantu');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('66','Ashton','Avery');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('67','Winter','Schultz');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('68','Abdul','Sellers');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('69','Orlando','Wyatt');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('70','Germaine','Salinas');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('71','Belle','Wells');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('72','Jack','Burnett');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('73','Hope','Harrell');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('74','Pamela','Barber');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('75','Barbara','Hampton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('76','Joseph','Maldonado');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('77','Frances','Maldonado');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('78','Mark','Dillon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('79','Diana','Horton');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('80','Dara','Moon');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('81','Orla','Hogan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('82','Hayley','Booth');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('83','Kelly','Crane');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('84','Davis','Love');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('85','Scarlett','Meyer');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('86','Zephr','Grimes');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('87','Kelly','Hatfield');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('88','Brock','Hood');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('89','Teegan','Robinson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('90','Aaron','Avila');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('91','Peter','Parker');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('92','Channing','Kinney');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('93','Thor','Heath');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('94','Winter','Malone');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('95','Teegan','Wright');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('96','Mercedes','Patterson');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('97','Donna','Chan');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('98','Eugenia','Curry');
Insert into JOSIF.OSOBA (OS_CISLO,MENO,PRIEZVISKO) values ('99','Ulla','Sloan');
REM INSERTING into JOSIF.PRACA
SET DEFINE OFF;
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('4','95','39',null,'L','2014','1','102','3');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('5','8','98',null,'L','2015','1','108','16');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('7','29','98',null,'L','2015','1','113','93');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('10','29','13',null,'L','2015','1','118','48');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('15','84','65',null,'L','2015','1','123','22');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('17','42','20',null,'L','2015','1','128','12');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('18','11','25',null,'L','2015','1','133','86');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('20','20','1',null,'L','2015','1','138','93');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('23','5','33',null,'L','2015','1','143','10');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('25','18','54',null,'L','2015','1','153','67');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('27','71','82',null,'L','2015','1','158','69');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('28','15','45',null,'L','2015','1','163','42');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('31','94','85',null,'L','2015','1','168','50');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('35','30','89',null,'L','2015','1','173','45');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('36','18','33',null,'L','2015','1','178','82');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('37','2','58',null,'L','2015','1','183','31');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('38','43','47',null,'L','2015','1','188','58');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('39','28','53',null,'L','2014','1','193','45');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('41','90','14',null,'L','2015','1','198','18');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('44','75','89',null,'Z','2015','1','203','4');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('45','2','91',null,'Z','2016','1','208','13');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('47','95','78',null,'L','2016','1','213','88');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('50','39','24',null,'L','2016','1','218','10');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('52','65','48',null,'L','2016','1','238','60');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('53','57','19',null,'L','2016','1','243','85');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('55','89','29',null,'L','2016','1','248','82');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('57','57','76',null,'L','2016','1','253','42');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('61','1','21',null,'L','2016','1','258','66');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('63','9','57',null,'L','2016','1','263','11');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('64','9','72',null,'L','2016','1','268','36');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('66','5','42',null,'L','2016','1','290','7');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('67','35','73',null,'L','2016','1','295','79');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('70','36','45',null,'L','2016','1','300','71');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('72','52','68',null,'L','2016','1','305','74');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('74','61','87',null,'L','2016','1','310','21');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('75','90','58',null,'L','2016','1','315','89');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('77','32','38',null,'L','2016','1','320','31');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('80','11','26',null,'L','2016','1','325','13');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('82','59','95',null,'L','2016','1','330','62');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('84','42','51',null,'L','2016','1','335','44');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('85','53','94',null,'L','2016','1','340','67');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('86','20','72',null,'L','2016','1','345','59');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('87','27','92',null,'L','2016','1','350','5');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('88','47','78',null,'L','2016','1','355','2');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('89','73','65',null,'L','2016','1','360','79');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('90','39','36',null,'L','2016','1','365','27');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('91','33','14',null,'L','2016','1','370','5');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('96','8','23',null,'L','2016','1','375','92');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('97','28','35',null,'L','2016','1','380','80');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('100','99','78',null,'L','2010','1','380','20');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('1','56','50',null,'L','2014','2','104','40');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('2','60','98',null,'L','2014','2','110','16');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('3','70','50',null,'L','2014','2','115','86');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('6','44','6',null,'L','2014','2','120','96');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('8','50','33',null,'L','2014','2','125','98');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('9','42','23',null,'L','2014','2','130','20');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('11','36','66',null,'L','2014','2','135','84');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('12','49','62',null,'L','2014','2','140','38');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('13','42','8',null,'L','2014','2','145','6');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('14','80','87',null,'L','2014','2','150','94');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('16','27','67',null,'L','2014','2','155','60');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('19','13','84',null,'L','2014','2','160','17');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('21','3','35',null,'L','2014','2','165','32');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('22','24','66',null,'L','2014','2','170','68');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('26','26','53',null,'L','2014','2','175','62');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('29','49','25',null,'L','2014','2','180','10');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('30','43','10',null,'L','2014','2','185','62');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('32','79','81',null,'L','2014','2','190','41');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('34','95','94',null,'L','2014','2','200','49');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('40','85','43',null,'L','2014','2','205','23');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('42','79','2',null,'L','2013','2','210','69');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('43','20','15',null,'L','2013','2','215','19');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('46','56','54',null,'L','2013','2','220','73');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('48','27','82',null,'L','2013','2','240','36');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('49','42','73',null,'L','2013','2','245','68');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('51','40','14',null,'L','2013','2','250','63');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('54','14','67',null,'L','2013','2','255','73');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('56','65','64',null,'L','2013','2','260','7');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('58','22','67',null,'L','2013','2','265','47');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('59','93','43',null,'L','2013','2','270','8');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('60','45','82',null,'L','2013','2','292','96');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('62','15','55',null,'L','2013','2','297','23');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('65','6','48',null,'L','2013','2','302','72');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('68','76','71',null,'L','2012','2','307','56');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('69','28','67',null,'L','2012','2','312','13');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('71','33','93',null,'L','2012','2','317','78');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('73','67','65',null,'L','2012','2','322','78');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('76','36','11',null,'L','2012','2','327','95');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('78','46','19',null,'L','2012','2','332','38');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('79','78','74',null,'L','2012','2','337','62');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('81','99','82',null,'L','2012','2','342','68');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('83','60','43',null,'L','2012','2','347','52');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('92','69','17',null,'L','2012','2','352','20');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('93','10','57',null,'L','2012','2','357','23');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('94','36','47',null,'L','2012','2','362','45');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('95','53','51',null,'L','2012','2','367','70');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('98','84','68',null,'L','2012','2','372','61');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('99','93','77',null,'L','2012','2','377','76');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('101','95','39',null,'L','2015','1','102','3');
Insert into JOSIF.PRACA (ID,OS_OPONENT,OS_VEDUCI,NAZOV,SEMESTER,ROK,ID_TYP,OS_STUDENT,OS_TUTOR) values ('102','28','53',null,'L','2015','1','193','45');
REM INSERTING into JOSIF.ST_PROGRAM
SET DEFINE OFF;
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('100','0','Informatika',null,'15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('101','0','Pocitacove inzinierstvo',null,'15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('102','0','Manazment',null,'20','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('200','0','Informacne systemy',null,'15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('200','1','Informacne systemy','Systemy pre podporu rozhodnutie','15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('200','2','Informacne systemy','Aplikovana informatika','15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('200','3','Informacne systemy','Informaco-komunikacne systemy','15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('201','0','Informacny manazment',null,'15','1');
Insert into JOSIF.ST_PROGRAM (ST_ODBOR,ST_ZAMERANIE,POPIS_ODBORU,POPIS_ZAMERANIA,OBHAJOBA,ID_FAKULTY) values ('202','0','Pocitacove inzinierstvo',null,'15','1');
REM INSERTING into JOSIF.STUDENT
SET DEFINE OFF;
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('100','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('106','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('111','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('116','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('121','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('126','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('131','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('136','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('141','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('146','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('151','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('156','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('161','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('166','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('171','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('176','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('181','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('186','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('191','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('196','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('201','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('206','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('211','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('216','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('221','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('241','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('246','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('251','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('256','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('261','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('266','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('271','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('293','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('298','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('303','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('308','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('313','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('318','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('323','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('328','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('333','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('338','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('343','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('348','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('353','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('358','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('363','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('368','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('373','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('378','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('383','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('388','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('393','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('398','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('403','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('408','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('413','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('418','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('423','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('428','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('433','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('438','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('443','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('448','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('453','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('458','101','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('463','200','3','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('468','102','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('473','201','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('478','200','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('483','202','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('488','200','1','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('493','100','0','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('498','200','2','1');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('101','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('107','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('112','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('117','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('122','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('127','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('132','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('137','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('142','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('147','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('152','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('157','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('162','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('167','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('172','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('177','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('182','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('187','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('192','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('197','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('202','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('207','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('212','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('217','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('237','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('242','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('247','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('252','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('257','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('262','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('267','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('272','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('294','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('299','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('304','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('309','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('314','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('319','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('324','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('329','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('334','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('339','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('344','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('349','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('354','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('359','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('364','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('369','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('374','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('379','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('384','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('389','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('394','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('399','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('404','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('409','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('414','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('419','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('424','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('429','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('434','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('439','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('444','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('449','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('454','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('459','102','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('464','201','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('469','200','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('474','202','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('479','200','1','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('484','100','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('489','200','2','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('494','101','0','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('499','200','3','2');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('102','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('108','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('113','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('118','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('123','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('128','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('133','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('138','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('143','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('148','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('153','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('158','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('163','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('168','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('173','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('178','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('183','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('188','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('193','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('198','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('203','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('208','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('213','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('218','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('238','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('243','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('248','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('253','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('258','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('263','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('268','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('290','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('295','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('300','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('305','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('310','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('315','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('320','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('325','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('330','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('335','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('340','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('345','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('350','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('355','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('360','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('365','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('370','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('375','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('380','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('385','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('390','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('395','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('400','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('405','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('410','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('415','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('420','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('425','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('430','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('435','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('440','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('445','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('450','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('455','201','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('460','200','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('465','202','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('470','200','1','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('475','100','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('480','200','2','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('485','101','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('490','200','3','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('495','102','0','3');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('103','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('109','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('114','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('119','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('124','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('129','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('134','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('139','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('144','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('149','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('154','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('159','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('164','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('169','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('174','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('179','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('184','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('189','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('194','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('199','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('204','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('209','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('214','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('219','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('239','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('244','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('249','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('254','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('259','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('264','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('269','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('291','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('296','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('301','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('306','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('311','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('316','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('321','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('326','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('331','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('336','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('341','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('346','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('351','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('356','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('361','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('366','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('371','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('376','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('381','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('386','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('391','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('396','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('401','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('406','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('411','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('416','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('421','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('426','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('431','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('436','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('441','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('446','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('451','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('456','202','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('461','200','1','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('466','100','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('471','200','2','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('476','101','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('481','200','3','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('486','102','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('491','201','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('496','200','0','4');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('104','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('110','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('115','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('120','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('125','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('130','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('135','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('140','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('145','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('150','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('155','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('160','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('165','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('170','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('175','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('180','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('185','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('190','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('195','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('200','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('205','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('210','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('215','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('220','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('240','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('245','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('250','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('255','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('260','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('265','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('270','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('292','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('297','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('302','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('307','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('312','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('317','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('322','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('327','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('332','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('337','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('342','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('347','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('352','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('357','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('362','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('367','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('372','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('377','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('382','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('387','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('392','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('397','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('402','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('407','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('412','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('417','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('422','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('427','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('432','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('437','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('442','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('447','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('452','200','1','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('457','100','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('462','200','2','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('467','101','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('472','200','3','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('477','102','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('482','201','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('487','200','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('492','202','0','5');
Insert into JOSIF.STUDENT (OS_CISLO,ST_ODBOR,ST_ZAMERANIE,ROCNIK) values ('497','200','1','5');
REM INSERTING into JOSIF.TERMINY
SET DEFINE OFF;
Insert into JOSIF.TERMINY (ID_TERMIN,DATUM,CAS_ZACIATIA,CAS_KONCA,PRESTAVKA) values ('1',to_date('08.01.16','DD.MM.RR'),to_date('08.01.16','DD.MM.RR'),to_date('08.01.16','DD.MM.RR'),null);
Insert into JOSIF.TERMINY (ID_TERMIN,DATUM,CAS_ZACIATIA,CAS_KONCA,PRESTAVKA) values ('2',to_date('11.01.16','DD.MM.RR'),to_date('11.01.16','DD.MM.RR'),to_date('11.01.16','DD.MM.RR'),null);
REM INSERTING into JOSIF.TYP_PRACE
SET DEFINE OFF;
Insert into JOSIF.TYP_PRACE (ID_TYP,POPIS) values ('1','Bakalarska');
Insert into JOSIF.TYP_PRACE (ID_TYP,POPIS) values ('2','Diplomova');
REM INSERTING into JOSIF.UCITEL
SET DEFINE OFF;
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('1','Gar ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('2','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('3','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('4','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('5','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('6','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('7','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('8','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('9','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('10','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('11','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('12','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('13','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('14','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('15','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('16','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('17','KMME');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('18','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('19','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('20','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('21','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('22','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('23','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('24','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('25','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('26','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('27','KST ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('28','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('29','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('30','Gar ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('31','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('32','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('33','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('34','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('35','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('36','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('37','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('38','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('39','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('40','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('41','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('42','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('43','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('44','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('45','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('46','KMME');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('47','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('48','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('49','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('50','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('51','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('52','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('53','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('54','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('55','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('56','KST ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('57','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('58','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('59','Gar ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('60','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('61','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('62','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('63','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('64','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('65','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('66','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('67','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('68','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('69','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('70','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('71','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('72','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('73','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('74','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('75','KMME');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('76','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('77','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('78','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('79','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('80','EX  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('81','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('82','KMT ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('83','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('84','KME ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('85','KST ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('86','KIS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('87','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('88','Gar ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('89','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('90','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('91','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('92','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('93','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('94','KDS ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('95','KTK ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('96','KMM ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('97','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('98','KI  ');
Insert into JOSIF.UCITEL (OS_CISLO,KATEDRA) values ('99','KTK ');
REM INSERTING into JOSIF.UCITELIA
SET DEFINE OFF;
Insert into JOSIF.UCITELIA (ID_FUN,ID_KOMISIE,OS_CISLO) values ('1','1','39');
Insert into JOSIF.UCITELIA (ID_FUN,ID_KOMISIE,OS_CISLO) values ('2','2','98');
Insert into JOSIF.UCITELIA (ID_FUN,ID_KOMISIE,OS_CISLO) values ('3','3','29');
Insert into JOSIF.UCITELIA (ID_FUN,ID_KOMISIE,OS_CISLO) values ('1','4','53');
Insert into JOSIF.UCITELIA (ID_FUN,ID_KOMISIE,OS_CISLO) values ('1','5','53');
REM INSERTING into JOSIF.ZAP_STUDENTI
SET DEFINE OFF;
Insert into JOSIF.ZAP_STUDENTI (ID,ID_KOMISIE,CAS_ZACATIA,CAS_KONCA,STAV,ZNAMKA,KOLO,OS_CISLO,ROK,SEMESTER) values ('31','1',to_date('11.01.14','DD.MM.RR'),to_date('11.01.14','DD.MM.RR'),null,null,'1','193','2014','L');
Insert into JOSIF.ZAP_STUDENTI (ID,ID_KOMISIE,CAS_ZACATIA,CAS_KONCA,STAV,ZNAMKA,KOLO,OS_CISLO,ROK,SEMESTER) values ('32','1',to_date('19.05.15','DD.MM.RR'),to_date('19.05.15','DD.MM.RR'),null,null,'2','193','2025','L');
Insert into JOSIF.ZAP_STUDENTI (ID,ID_KOMISIE,CAS_ZACATIA,CAS_KONCA,STAV,ZNAMKA,KOLO,OS_CISLO,ROK,SEMESTER) values ('45','4',to_date('08.01.16','DD.MM.RR'),to_date('08.01.16','DD.MM.RR'),null,null,'1','193','2015','L');
Insert into JOSIF.ZAP_STUDENTI (ID,ID_KOMISIE,CAS_ZACATIA,CAS_KONCA,STAV,ZNAMKA,KOLO,OS_CISLO,ROK,SEMESTER) values ('44','1',to_date('08.01.16','DD.MM.RR'),to_date('08.01.16','DD.MM.RR'),null,null,'1','102','2015','L');
--------------------------------------------------------
--  DDL for Index SYS_C009580
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009580" ON "JOSIF"."FAKULTY" ("ID_FAKULTY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009569
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009569" ON "JOSIF"."FUNKCIA" ("ID_FUN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009563
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009563" ON "JOSIF"."KOMISIE" ("ID_KOMISIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009551
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009551" ON "JOSIF"."OSOBA" ("OS_CISLO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009556
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009556" ON "JOSIF"."PRACA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009560
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009560" ON "JOSIF"."ST_PROGRAM" ("ST_ODBOR", "ST_ZAMERANIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009587
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009587" ON "JOSIF"."STUDENT" ("OS_CISLO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009578
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009578" ON "JOSIF"."TERMINY" ("ID_TERMIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009571
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009571" ON "JOSIF"."TYP_PRACE" ("ID_TYP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009589
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009589" ON "JOSIF"."UCITEL" ("OS_CISLO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009575
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009575" ON "JOSIF"."UCITELIA" ("ID_FUN", "ID_KOMISIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009567
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009567" ON "JOSIF"."ZAP_STUDENTI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FAKULTY
--------------------------------------------------------

  ALTER TABLE "JOSIF"."FAKULTY" MODIFY ("ID_FAKULTY" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."FAKULTY" ADD PRIMARY KEY ("ID_FAKULTY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FUNKCIA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."FUNKCIA" MODIFY ("ID_FUN" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."FUNKCIA" ADD PRIMARY KEY ("ID_FUN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KOMISIE
--------------------------------------------------------

  ALTER TABLE "JOSIF"."KOMISIE" MODIFY ("ID_KOMISIE" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."KOMISIE" MODIFY ("ID_TERMIN" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."KOMISIE" ADD PRIMARY KEY ("ID_KOMISIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OSOBA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."OSOBA" MODIFY ("OS_CISLO" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."OSOBA" ADD PRIMARY KEY ("OS_CISLO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRACA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."PRACA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."PRACA" MODIFY ("OS_VEDUCI" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."PRACA" MODIFY ("ID_TYP" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."PRACA" MODIFY ("OS_STUDENT" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."PRACA" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ST_PROGRAM
--------------------------------------------------------

  ALTER TABLE "JOSIF"."ST_PROGRAM" MODIFY ("ST_ODBOR" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ST_PROGRAM" MODIFY ("ST_ZAMERANIE" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ST_PROGRAM" MODIFY ("ID_FAKULTY" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ST_PROGRAM" ADD PRIMARY KEY ("ST_ODBOR", "ST_ZAMERANIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "JOSIF"."STUDENT" MODIFY ("OS_CISLO" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."STUDENT" MODIFY ("ST_ODBOR" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."STUDENT" MODIFY ("ST_ZAMERANIE" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."STUDENT" MODIFY ("ROCNIK" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."STUDENT" ADD PRIMARY KEY ("OS_CISLO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TERMINY
--------------------------------------------------------

  ALTER TABLE "JOSIF"."TERMINY" MODIFY ("ID_TERMIN" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."TERMINY" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."TERMINY" ADD PRIMARY KEY ("ID_TERMIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYP_PRACE
--------------------------------------------------------

  ALTER TABLE "JOSIF"."TYP_PRACE" MODIFY ("ID_TYP" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."TYP_PRACE" ADD PRIMARY KEY ("ID_TYP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UCITEL
--------------------------------------------------------

  ALTER TABLE "JOSIF"."UCITEL" MODIFY ("OS_CISLO" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."UCITEL" ADD PRIMARY KEY ("OS_CISLO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UCITELIA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."UCITELIA" MODIFY ("ID_FUN" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."UCITELIA" MODIFY ("ID_KOMISIE" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."UCITELIA" MODIFY ("OS_CISLO" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."UCITELIA" ADD PRIMARY KEY ("ID_FUN", "ID_KOMISIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAP_STUDENTI
--------------------------------------------------------

  ALTER TABLE "JOSIF"."ZAP_STUDENTI" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ZAP_STUDENTI" MODIFY ("ID_KOMISIE" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ZAP_STUDENTI" MODIFY ("OS_CISLO" NOT NULL ENABLE);
  ALTER TABLE "JOSIF"."ZAP_STUDENTI" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KOMISIE
--------------------------------------------------------

  ALTER TABLE "JOSIF"."KOMISIE" ADD CONSTRAINT "KOMISIE_FK1" FOREIGN KEY ("ST_ODBOR", "ST_ZAMERANIE")
	  REFERENCES "JOSIF"."ST_PROGRAM" ("ST_ODBOR", "ST_ZAMERANIE") ENABLE;
  ALTER TABLE "JOSIF"."KOMISIE" ADD FOREIGN KEY ("ID_TERMIN")
	  REFERENCES "JOSIF"."TERMINY" ("ID_TERMIN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."PRACA" ADD FOREIGN KEY ("ID_TYP")
	  REFERENCES "JOSIF"."TYP_PRACE" ("ID_TYP") ENABLE;
  ALTER TABLE "JOSIF"."PRACA" ADD FOREIGN KEY ("OS_STUDENT")
	  REFERENCES "JOSIF"."STUDENT" ("OS_CISLO") ENABLE;
  ALTER TABLE "JOSIF"."PRACA" ADD FOREIGN KEY ("OS_TUTOR")
	  REFERENCES "JOSIF"."UCITEL" ("OS_CISLO") ENABLE;
  ALTER TABLE "JOSIF"."PRACA" ADD FOREIGN KEY ("OS_VEDUCI")
	  REFERENCES "JOSIF"."UCITEL" ("OS_CISLO") ENABLE;
  ALTER TABLE "JOSIF"."PRACA" ADD FOREIGN KEY ("OS_OPONENT")
	  REFERENCES "JOSIF"."UCITEL" ("OS_CISLO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ST_PROGRAM
--------------------------------------------------------

  ALTER TABLE "JOSIF"."ST_PROGRAM" ADD FOREIGN KEY ("ID_FAKULTY")
	  REFERENCES "JOSIF"."FAKULTY" ("ID_FAKULTY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "JOSIF"."STUDENT" ADD FOREIGN KEY ("OS_CISLO")
	  REFERENCES "JOSIF"."OSOBA" ("OS_CISLO") ENABLE;
  ALTER TABLE "JOSIF"."STUDENT" ADD FOREIGN KEY ("ST_ODBOR", "ST_ZAMERANIE")
	  REFERENCES "JOSIF"."ST_PROGRAM" ("ST_ODBOR", "ST_ZAMERANIE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UCITEL
--------------------------------------------------------

  ALTER TABLE "JOSIF"."UCITEL" ADD FOREIGN KEY ("OS_CISLO")
	  REFERENCES "JOSIF"."OSOBA" ("OS_CISLO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UCITELIA
--------------------------------------------------------

  ALTER TABLE "JOSIF"."UCITELIA" ADD FOREIGN KEY ("ID_KOMISIE")
	  REFERENCES "JOSIF"."KOMISIE" ("ID_KOMISIE") ENABLE;
  ALTER TABLE "JOSIF"."UCITELIA" ADD FOREIGN KEY ("ID_FUN")
	  REFERENCES "JOSIF"."FUNKCIA" ("ID_FUN") ENABLE;
  ALTER TABLE "JOSIF"."UCITELIA" ADD FOREIGN KEY ("OS_CISLO")
	  REFERENCES "JOSIF"."UCITEL" ("OS_CISLO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAP_STUDENTI
--------------------------------------------------------

  ALTER TABLE "JOSIF"."ZAP_STUDENTI" ADD FOREIGN KEY ("ID_KOMISIE")
	  REFERENCES "JOSIF"."KOMISIE" ("ID_KOMISIE") ENABLE;
  ALTER TABLE "JOSIF"."ZAP_STUDENTI" ADD FOREIGN KEY ("OS_CISLO")
	  REFERENCES "JOSIF"."STUDENT" ("OS_CISLO") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ZAP_STUD_TRIGER_INC_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSIF"."ZAP_STUD_TRIGER_INC_ID" 
BEFORE INSERT ON zap_studenti
FOR EACH ROW
DECLARE
  next_id NUMBER;
BEGIN
  IF :new.id IS NULL OR :new.id = 0 THEN
    SELECT zap_st_seq_inc_id.nextval INTO next_id FROM dual;
    :new.id := next_id;
  END IF;
END;
/
ALTER TRIGGER "JOSIF"."ZAP_STUD_TRIGER_INC_ID" ENABLE;

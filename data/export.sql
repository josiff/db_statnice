--------------------------------------------------------
--  File created - Sobota-január-02-2016   
--------------------------------------------------------
DROP TABLE funkcia cascade constraints;
DROP TABLE fakulty cascade constraints;
DROP TABLE komisie cascade constraints;
DROP TABLE osoba cascade constraints;
DROP TABLE praca cascade constraints;
DROP TABLE st_program cascade constraints;
DROP TABLE student cascade constraints;
DROP TABLE terminy cascade constraints;
DROP TABLE typ_prace cascade constraints;
DROP TABLE ucitel cascade constraints;
DROP TABLE ucitelia cascade constraints;
DROP TABLE zap_studenti cascade constraints;
--------------------------------------------------------
--  DDL for Table funkcia
--------------------------------------------------------

  CREATE TABLE funkcia 
   (	id_fun NUMBER(*,0), 
	popis VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table fakulty
--------------------------------------------------------

  CREATE TABLE fakulty 
   (	id_fakulty NUMBER(*,0), 
	nazov VARCHAR2(30 BYTE), 
	adresa VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table komisie
--------------------------------------------------------

  CREATE TABLE komisie 
   (	id_komisie NUMBER(*,0), 
	nazov VARCHAR2(30 BYTE), 
	miestnost VARCHAR2(30 BYTE), 
	id_termin NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table osoba
--------------------------------------------------------

  CREATE TABLE osoba 
   (	os_cislo NUMBER(*,0), 
	meno VARCHAR2(30 BYTE), 
	priezvisko VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table praca
--------------------------------------------------------

  CREATE TABLE praca 
   (	id NUMBER(*,0), 
	os_oponent NUMBER(*,0), 
	os_veduci NUMBER(*,0), 
	nazov VARCHAR2(30 BYTE), 
	semester VARCHAR2(30 BYTE), 
	rok VARCHAR2(30 BYTE), 
	id_typ NUMBER(*,0), 
	os_student NUMBER(*,0), 
	os_tutor NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table st_program
--------------------------------------------------------

  CREATE TABLE st_program 
   (	st_odbor NUMBER(*,0), 
	st_zameranie NUMBER(*,0), 
	popis_odboru VARCHAR2(50 BYTE), 
	popis_zamerania VARCHAR2(50 BYTE), 
	obhajoba NUMBER(*,0), 
	id_fakulty NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table student
--------------------------------------------------------

  CREATE TABLE student 
   (	os_cislo NUMBER(*,0), 
	st_odbor NUMBER(*,0), 
	st_zameranie NUMBER(*,0), 
	rocnik CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table terminy
--------------------------------------------------------

  CREATE TABLE terminy 
   (	id_termin NUMBER(*,0), 
	datum DATE, 
	cas_zaciatia DATE, 
	cas_konca DATE, 
	prestavka DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table typ_prace
--------------------------------------------------------

  CREATE TABLE typ_prace 
   (	id_typ NUMBER(*,0), 
	popis VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ucitel
--------------------------------------------------------

  CREATE TABLE ucitel 
   (	os_cislo NUMBER(*,0), 
	katedra VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ucitelia
--------------------------------------------------------

  CREATE TABLE ucitelia 
   (	id_fun NUMBER(*,0), 
	id_komisie NUMBER(*,0), 
	os_cislo NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table zap_studenti
--------------------------------------------------------

  CREATE TABLE zap_studenti 
   (	id NUMBER(*,0), 
	id_komisie NUMBER(*,0), 
	cas_zacatia DATE, 
	cas_konca DATE, 
	stav VARCHAR2(30 BYTE), 
	znamka CHAR(2 BYTE), 
	kolo NUMBER(*,0), 
	os_cislo NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into funkcia
SET DEFINE OFF;
Insert into funkcia (id_fun,popis) values ('1','predseda');
Insert into funkcia (id_fun,popis) values ('2','tajomnik');
REM INSERTING into fakulty
SET DEFINE OFF;
Insert into fakulty (id_fakulty,nazov,adresa) values ('1','Fakulta riadenia a informatiky','Zilina');
REM INSERTING into JOSIF."komisie"
SET DEFINE OFF;
REM INSERTING into osoba
SET DEFINE OFF;
Insert into osoba (os_cislo,meno,priezvisko) values ('100','Callie','Stanton');
Insert into osoba (os_cislo,meno,priezvisko) values ('101','Lani','Waters');
Insert into osoba (os_cislo,meno,priezvisko) values ('102','Quinlan','Frazier');
Insert into osoba (os_cislo,meno,priezvisko) values ('103','Sara','Singleton');
Insert into osoba (os_cislo,meno,priezvisko) values ('104','Brenna','Guerra');
Insert into osoba (os_cislo,meno,priezvisko) values ('105','Rhiannon','Mayer');
Insert into osoba (os_cislo,meno,priezvisko) values ('106','Oliver','Harrell');
Insert into osoba (os_cislo,meno,priezvisko) values ('107','Jasper','Fowler');
Insert into osoba (os_cislo,meno,priezvisko) values ('108','Vladimir','Mitchell');
Insert into osoba (os_cislo,meno,priezvisko) values ('109','Barrett','Frost');
Insert into osoba (os_cislo,meno,priezvisko) values ('110','Keane','Sykes');
Insert into osoba (os_cislo,meno,priezvisko) values ('111','Salvador','Graham');
Insert into osoba (os_cislo,meno,priezvisko) values ('112','Hermione','Rich');
Insert into osoba (os_cislo,meno,priezvisko) values ('113','Hyatt','Merritt');
Insert into osoba (os_cislo,meno,priezvisko) values ('114','Paki','Mayer');
Insert into osoba (os_cislo,meno,priezvisko) values ('115','Holmes','Simon');
Insert into osoba (os_cislo,meno,priezvisko) values ('116','Samantha','Schwartz');
Insert into osoba (os_cislo,meno,priezvisko) values ('117','Vivian','Santana');
Insert into osoba (os_cislo,meno,priezvisko) values ('118','Jarrod','England');
Insert into osoba (os_cislo,meno,priezvisko) values ('119','Dora','Parker');
Insert into osoba (os_cislo,meno,priezvisko) values ('120','Abraham','Cannon');
Insert into osoba (os_cislo,meno,priezvisko) values ('121','Damian','Ware');
Insert into osoba (os_cislo,meno,priezvisko) values ('122','Tanner','Bonner');
Insert into osoba (os_cislo,meno,priezvisko) values ('123','Connor','Montgomery');
Insert into osoba (os_cislo,meno,priezvisko) values ('124','Mariam','Miles');
Insert into osoba (os_cislo,meno,priezvisko) values ('125','Raja','Kidd');
Insert into osoba (os_cislo,meno,priezvisko) values ('126','Addison','Mcclain');
Insert into osoba (os_cislo,meno,priezvisko) values ('127','Ashton','Wall');
Insert into osoba (os_cislo,meno,priezvisko) values ('128','Brock','Ewing');
Insert into osoba (os_cislo,meno,priezvisko) values ('129','Rahim','Coffey');
Insert into osoba (os_cislo,meno,priezvisko) values ('130','Tara','Roach');
Insert into osoba (os_cislo,meno,priezvisko) values ('131','Faith','Kirby');
Insert into osoba (os_cislo,meno,priezvisko) values ('132','Alice','Holden');
Insert into osoba (os_cislo,meno,priezvisko) values ('133','Suki','Bernard');
Insert into osoba (os_cislo,meno,priezvisko) values ('134','Amelia','Marsh');
Insert into osoba (os_cislo,meno,priezvisko) values ('135','Akeem','Flynn');
Insert into osoba (os_cislo,meno,priezvisko) values ('136','Rylee','Hale');
Insert into osoba (os_cislo,meno,priezvisko) values ('137','Pandora','Hopper');
Insert into osoba (os_cislo,meno,priezvisko) values ('138','Carol','Mcconnell');
Insert into osoba (os_cislo,meno,priezvisko) values ('139','Conan','Weiss');
Insert into osoba (os_cislo,meno,priezvisko) values ('140','Callum','Kidd');
Insert into osoba (os_cislo,meno,priezvisko) values ('141','Bruno','Hodges');
Insert into osoba (os_cislo,meno,priezvisko) values ('142','Kelly','Hurley');
Insert into osoba (os_cislo,meno,priezvisko) values ('143','Stephanie','Dillon');
Insert into osoba (os_cislo,meno,priezvisko) values ('144','Ivor','Lara');
Insert into osoba (os_cislo,meno,priezvisko) values ('145','Britanni','Mccoy');
Insert into osoba (os_cislo,meno,priezvisko) values ('146','Nathan','Mayer');
Insert into osoba (os_cislo,meno,priezvisko) values ('147','Tanisha','Bryan');
Insert into osoba (os_cislo,meno,priezvisko) values ('148','Ann','Bowen');
Insert into osoba (os_cislo,meno,priezvisko) values ('149','MacKenzie','Munoz');
Insert into osoba (os_cislo,meno,priezvisko) values ('150','Demetria','Chapman');
Insert into osoba (os_cislo,meno,priezvisko) values ('151','Benjamin','French');
Insert into osoba (os_cislo,meno,priezvisko) values ('152','Taylor','Lopez');
Insert into osoba (os_cislo,meno,priezvisko) values ('153','Darius','Barnett');
Insert into osoba (os_cislo,meno,priezvisko) values ('154','Brody','Leonard');
Insert into osoba (os_cislo,meno,priezvisko) values ('155','Ruby','Herman');
Insert into osoba (os_cislo,meno,priezvisko) values ('156','Noah','Robbins');
Insert into osoba (os_cislo,meno,priezvisko) values ('157','Ingrid','Mccall');
Insert into osoba (os_cislo,meno,priezvisko) values ('158','Jordan','Simpson');
Insert into osoba (os_cislo,meno,priezvisko) values ('159','Damon','York');
Insert into osoba (os_cislo,meno,priezvisko) values ('160','Abra','Chen');
Insert into osoba (os_cislo,meno,priezvisko) values ('161','Zia','Davidson');
Insert into osoba (os_cislo,meno,priezvisko) values ('162','Georgia','Mendoza');
Insert into osoba (os_cislo,meno,priezvisko) values ('163','Shafira','Puckett');
Insert into osoba (os_cislo,meno,priezvisko) values ('164','Portia','Castro');
Insert into osoba (os_cislo,meno,priezvisko) values ('165','Hakeem','Holloway');
Insert into osoba (os_cislo,meno,priezvisko) values ('166','Uta','Castaneda');
Insert into osoba (os_cislo,meno,priezvisko) values ('167','Yvonne','Byers');
Insert into osoba (os_cislo,meno,priezvisko) values ('168','Vaughan','Bennett');
Insert into osoba (os_cislo,meno,priezvisko) values ('169','Wendy','Ball');
Insert into osoba (os_cislo,meno,priezvisko) values ('170','Debra','Crawford');
Insert into osoba (os_cislo,meno,priezvisko) values ('171','Aurora','David');
Insert into osoba (os_cislo,meno,priezvisko) values ('172','Desirae','Mccarty');
Insert into osoba (os_cislo,meno,priezvisko) values ('173','Hollee','Nelson');
Insert into osoba (os_cislo,meno,priezvisko) values ('174','Ginger','Norris');
Insert into osoba (os_cislo,meno,priezvisko) values ('175','Bradley','Beach');
Insert into osoba (os_cislo,meno,priezvisko) values ('176','Reuben','Brock');
Insert into osoba (os_cislo,meno,priezvisko) values ('177','Kim','Miranda');
Insert into osoba (os_cislo,meno,priezvisko) values ('178','Lillian','Hodges');
Insert into osoba (os_cislo,meno,priezvisko) values ('179','Fleur','Gentry');
Insert into osoba (os_cislo,meno,priezvisko) values ('180','Rama','Weber');
Insert into osoba (os_cislo,meno,priezvisko) values ('181','Wayne','Dotson');
Insert into osoba (os_cislo,meno,priezvisko) values ('182','Myra','Hester');
Insert into osoba (os_cislo,meno,priezvisko) values ('183','Brielle','Bird');
Insert into osoba (os_cislo,meno,priezvisko) values ('184','Jonas','Faulkner');
Insert into osoba (os_cislo,meno,priezvisko) values ('185','Priscilla','Meyers');
Insert into osoba (os_cislo,meno,priezvisko) values ('186','Cameron','Hamilton');
Insert into osoba (os_cislo,meno,priezvisko) values ('187','Ursula','Ayala');
Insert into osoba (os_cislo,meno,priezvisko) values ('188','Felicia','Benson');
Insert into osoba (os_cislo,meno,priezvisko) values ('189','Paki','Mooney');
Insert into osoba (os_cislo,meno,priezvisko) values ('190','Holmes','Joyce');
Insert into osoba (os_cislo,meno,priezvisko) values ('191','Colleen','Gould');
Insert into osoba (os_cislo,meno,priezvisko) values ('192','Keegan','Wright');
Insert into osoba (os_cislo,meno,priezvisko) values ('193','Larissa','Morin');
Insert into osoba (os_cislo,meno,priezvisko) values ('194','Alexis','Vaughn');
Insert into osoba (os_cislo,meno,priezvisko) values ('195','Hadassah','Warren');
Insert into osoba (os_cislo,meno,priezvisko) values ('196','Jamalia','Welch');
Insert into osoba (os_cislo,meno,priezvisko) values ('197','Abel','Willis');
Insert into osoba (os_cislo,meno,priezvisko) values ('198','Rhea','Bryan');
Insert into osoba (os_cislo,meno,priezvisko) values ('199','Blake','Mcdaniel');
Insert into osoba (os_cislo,meno,priezvisko) values ('200','Jameson','Bennett');
Insert into osoba (os_cislo,meno,priezvisko) values ('201','Savannah','Downs');
Insert into osoba (os_cislo,meno,priezvisko) values ('202','Camden','Finley');
Insert into osoba (os_cislo,meno,priezvisko) values ('203','Brandon','Higgins');
Insert into osoba (os_cislo,meno,priezvisko) values ('204','Amanda','Maldonado');
Insert into osoba (os_cislo,meno,priezvisko) values ('205','Geraldine','Sears');
Insert into osoba (os_cislo,meno,priezvisko) values ('206','Ryan','Decker');
Insert into osoba (os_cislo,meno,priezvisko) values ('207','Velma','Salinas');
Insert into osoba (os_cislo,meno,priezvisko) values ('208','Duncan','Parrish');
Insert into osoba (os_cislo,meno,priezvisko) values ('209','Aphrodite','Schneider');
Insert into osoba (os_cislo,meno,priezvisko) values ('210','Ciaran','Carlson');
Insert into osoba (os_cislo,meno,priezvisko) values ('211','Shaeleigh','Dotson');
Insert into osoba (os_cislo,meno,priezvisko) values ('212','Hermione','Mueller');
Insert into osoba (os_cislo,meno,priezvisko) values ('213','Ivana','Boyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('214','Susan','Cooley');
Insert into osoba (os_cislo,meno,priezvisko) values ('215','Aaron','Atkinson');
Insert into osoba (os_cislo,meno,priezvisko) values ('216','Patricia','Hartman');
Insert into osoba (os_cislo,meno,priezvisko) values ('217','Emily','Robbins');
Insert into osoba (os_cislo,meno,priezvisko) values ('218','Amelia','Hays');
Insert into osoba (os_cislo,meno,priezvisko) values ('219','Blaze','Coffey');
Insert into osoba (os_cislo,meno,priezvisko) values ('220','Cailin','Frost');
Insert into osoba (os_cislo,meno,priezvisko) values ('221','George','Mendoza');
Insert into osoba (os_cislo,meno,priezvisko) values ('222','Urielle','Strong');
Insert into osoba (os_cislo,meno,priezvisko) values ('223','Tyler','Ashley');
Insert into osoba (os_cislo,meno,priezvisko) values ('224','Maggy','Freeman');
Insert into osoba (os_cislo,meno,priezvisko) values ('225','Leo','Barker');
Insert into osoba (os_cislo,meno,priezvisko) values ('226','Aspen','Hess');
Insert into osoba (os_cislo,meno,priezvisko) values ('227','Hyatt','Horne');
Insert into osoba (os_cislo,meno,priezvisko) values ('228','Desirae','Richardson');
Insert into osoba (os_cislo,meno,priezvisko) values ('229','Aurora','Rodriguez');
Insert into osoba (os_cislo,meno,priezvisko) values ('230','Scarlett','Gonzalez');
Insert into osoba (os_cislo,meno,priezvisko) values ('231','Vladimir','Sims');
Insert into osoba (os_cislo,meno,priezvisko) values ('232','Conan','Russo');
Insert into osoba (os_cislo,meno,priezvisko) values ('233','Petra','Berger');
Insert into osoba (os_cislo,meno,priezvisko) values ('234','Yolanda','Clayton');
Insert into osoba (os_cislo,meno,priezvisko) values ('235','Nichole','Christensen');
Insert into osoba (os_cislo,meno,priezvisko) values ('236','Finn','Reese');
Insert into osoba (os_cislo,meno,priezvisko) values ('237','Lynn','Mullen');
Insert into osoba (os_cislo,meno,priezvisko) values ('238','Gary','Rivers');
Insert into osoba (os_cislo,meno,priezvisko) values ('239','Ariana','Browning');
Insert into osoba (os_cislo,meno,priezvisko) values ('240','Sharon','Decker');
Insert into osoba (os_cislo,meno,priezvisko) values ('241','Quyn','Walker');
Insert into osoba (os_cislo,meno,priezvisko) values ('242','Garrison','Acosta');
Insert into osoba (os_cislo,meno,priezvisko) values ('243','Darrel','Freeman');
Insert into osoba (os_cislo,meno,priezvisko) values ('244','Sybil','Kaufman');
Insert into osoba (os_cislo,meno,priezvisko) values ('245','Walker','Rivers');
Insert into osoba (os_cislo,meno,priezvisko) values ('246','Kathleen','Daugherty');
Insert into osoba (os_cislo,meno,priezvisko) values ('247','Ila','Buckner');
Insert into osoba (os_cislo,meno,priezvisko) values ('248','Kareem','Russo');
Insert into osoba (os_cislo,meno,priezvisko) values ('249','Evangeline','Abbott');
Insert into osoba (os_cislo,meno,priezvisko) values ('250','Karly','Chase');
Insert into osoba (os_cislo,meno,priezvisko) values ('251','Shafira','Munoz');
Insert into osoba (os_cislo,meno,priezvisko) values ('252','Orli','Kinney');
Insert into osoba (os_cislo,meno,priezvisko) values ('253','Eaton','Donaldson');
Insert into osoba (os_cislo,meno,priezvisko) values ('254','Lara','Stewart');
Insert into osoba (os_cislo,meno,priezvisko) values ('255','Nolan','Kemp');
Insert into osoba (os_cislo,meno,priezvisko) values ('256','Yen','Daugherty');
Insert into osoba (os_cislo,meno,priezvisko) values ('257','Sade','Nash');
Insert into osoba (os_cislo,meno,priezvisko) values ('258','Farrah','Decker');
Insert into osoba (os_cislo,meno,priezvisko) values ('259','Vivian','Tate');
Insert into osoba (os_cislo,meno,priezvisko) values ('260','Quinn','Valenzuela');
Insert into osoba (os_cislo,meno,priezvisko) values ('261','Acton','Dillon');
Insert into osoba (os_cislo,meno,priezvisko) values ('262','Raja','Reilly');
Insert into osoba (os_cislo,meno,priezvisko) values ('263','Wesley','Olson');
Insert into osoba (os_cislo,meno,priezvisko) values ('264','Tamekah','Whitney');
Insert into osoba (os_cislo,meno,priezvisko) values ('265','September','Oneal');
Insert into osoba (os_cislo,meno,priezvisko) values ('266','Yasir','Baker');
Insert into osoba (os_cislo,meno,priezvisko) values ('267','Lev','Vang');
Insert into osoba (os_cislo,meno,priezvisko) values ('268','Dillon','Mason');
Insert into osoba (os_cislo,meno,priezvisko) values ('269','Scott','Watson');
Insert into osoba (os_cislo,meno,priezvisko) values ('270','Ignatius','Glover');
Insert into osoba (os_cislo,meno,priezvisko) values ('271','Aquila','Maynard');
Insert into osoba (os_cislo,meno,priezvisko) values ('272','Vivien','Bennett');
Insert into osoba (os_cislo,meno,priezvisko) values ('273','Latifah','Mathews');
Insert into osoba (os_cislo,meno,priezvisko) values ('274','Dana','Richards');
Insert into osoba (os_cislo,meno,priezvisko) values ('275','Brenna','Garza');
Insert into osoba (os_cislo,meno,priezvisko) values ('276','Wallace','Moses');
Insert into osoba (os_cislo,meno,priezvisko) values ('277','Micah','Combs');
Insert into osoba (os_cislo,meno,priezvisko) values ('278','Hyatt','Rosa');
Insert into osoba (os_cislo,meno,priezvisko) values ('279','Hayden','Mayer');
Insert into osoba (os_cislo,meno,priezvisko) values ('280','Channing','Frost');
Insert into osoba (os_cislo,meno,priezvisko) values ('281','Leandra','Donaldson');
Insert into osoba (os_cislo,meno,priezvisko) values ('282','Cyrus','Matthews');
Insert into osoba (os_cislo,meno,priezvisko) values ('283','Chantale','Holland');
Insert into osoba (os_cislo,meno,priezvisko) values ('284','Brenna','Mays');
Insert into osoba (os_cislo,meno,priezvisko) values ('285','Frances','Huffman');
Insert into osoba (os_cislo,meno,priezvisko) values ('286','Blaze','Day');
Insert into osoba (os_cislo,meno,priezvisko) values ('287','Lacey','Hutchinson');
Insert into osoba (os_cislo,meno,priezvisko) values ('288','Magee','Sutton');
Insert into osoba (os_cislo,meno,priezvisko) values ('289','Keiko','Mccoy');
Insert into osoba (os_cislo,meno,priezvisko) values ('290','Xandra','Pacheco');
Insert into osoba (os_cislo,meno,priezvisko) values ('291','Beck','Dyer');
Insert into osoba (os_cislo,meno,priezvisko) values ('292','Ivan','Wong');
Insert into osoba (os_cislo,meno,priezvisko) values ('293','Kylee','Lloyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('294','Haviva','Oconnor');
Insert into osoba (os_cislo,meno,priezvisko) values ('295','Grady','Lee');
Insert into osoba (os_cislo,meno,priezvisko) values ('296','Malcolm','Howell');
Insert into osoba (os_cislo,meno,priezvisko) values ('297','Suki','Decker');
Insert into osoba (os_cislo,meno,priezvisko) values ('298','Jacqueline','Browning');
Insert into osoba (os_cislo,meno,priezvisko) values ('299','Fulton','Patel');
Insert into osoba (os_cislo,meno,priezvisko) values ('300','Isadora','Garrett');
Insert into osoba (os_cislo,meno,priezvisko) values ('301','Keelie','Peck');
Insert into osoba (os_cislo,meno,priezvisko) values ('302','Sybill','Gillespie');
Insert into osoba (os_cislo,meno,priezvisko) values ('303','Edward','Sanchez');
Insert into osoba (os_cislo,meno,priezvisko) values ('304','Lavinia','Gates');
Insert into osoba (os_cislo,meno,priezvisko) values ('305','Patricia','Workman');
Insert into osoba (os_cislo,meno,priezvisko) values ('306','Ezra','Morales');
Insert into osoba (os_cislo,meno,priezvisko) values ('307','Alyssa','Reilly');
Insert into osoba (os_cislo,meno,priezvisko) values ('308','Nomlanga','Buckley');
Insert into osoba (os_cislo,meno,priezvisko) values ('309','Ronan','Berger');
Insert into osoba (os_cislo,meno,priezvisko) values ('310','Rose','Nichols');
Insert into osoba (os_cislo,meno,priezvisko) values ('311','Oprah','Molina');
Insert into osoba (os_cislo,meno,priezvisko) values ('312','Leslie','Chapman');
Insert into osoba (os_cislo,meno,priezvisko) values ('313','Beck','Romero');
Insert into osoba (os_cislo,meno,priezvisko) values ('314','Pamela','Reese');
Insert into osoba (os_cislo,meno,priezvisko) values ('315','Amethyst','Peterson');
Insert into osoba (os_cislo,meno,priezvisko) values ('316','Heather','Marquez');
Insert into osoba (os_cislo,meno,priezvisko) values ('317','Willow','Hawkins');
Insert into osoba (os_cislo,meno,priezvisko) values ('318','Buffy','Kirkland');
Insert into osoba (os_cislo,meno,priezvisko) values ('319','Jakeem','Mcpherson');
Insert into osoba (os_cislo,meno,priezvisko) values ('320','Jena','Green');
Insert into osoba (os_cislo,meno,priezvisko) values ('321','Rogan','Guerra');
Insert into osoba (os_cislo,meno,priezvisko) values ('322','Tucker','Carrillo');
Insert into osoba (os_cislo,meno,priezvisko) values ('323','Octavius','Colon');
Insert into osoba (os_cislo,meno,priezvisko) values ('324','Shad','Snow');
Insert into osoba (os_cislo,meno,priezvisko) values ('325','Amena','Lynch');
Insert into osoba (os_cislo,meno,priezvisko) values ('326','Gray','Cabrera');
Insert into osoba (os_cislo,meno,priezvisko) values ('327','Cameron','Elliott');
Insert into osoba (os_cislo,meno,priezvisko) values ('328','Curran','Baldwin');
Insert into osoba (os_cislo,meno,priezvisko) values ('329','Connor','Soto');
Insert into osoba (os_cislo,meno,priezvisko) values ('330','Sonya','Rice');
Insert into osoba (os_cislo,meno,priezvisko) values ('331','Keiko','Espinoza');
Insert into osoba (os_cislo,meno,priezvisko) values ('332','Quamar','Britt');
Insert into osoba (os_cislo,meno,priezvisko) values ('333','Jana','Sims');
Insert into osoba (os_cislo,meno,priezvisko) values ('334','Winter','Lowe');
Insert into osoba (os_cislo,meno,priezvisko) values ('335','Shad','Russell');
Insert into osoba (os_cislo,meno,priezvisko) values ('336','Tate','Harrington');
Insert into osoba (os_cislo,meno,priezvisko) values ('337','Herrod','Marshall');
Insert into osoba (os_cislo,meno,priezvisko) values ('338','Branden','Grant');
Insert into osoba (os_cislo,meno,priezvisko) values ('339','Kieran','Compton');
Insert into osoba (os_cislo,meno,priezvisko) values ('340','Oren','Foley');
Insert into osoba (os_cislo,meno,priezvisko) values ('341','Jaquelyn','Bruce');
Insert into osoba (os_cislo,meno,priezvisko) values ('342','Byron','Frazier');
Insert into osoba (os_cislo,meno,priezvisko) values ('343','Jordan','Cotton');
Insert into osoba (os_cislo,meno,priezvisko) values ('344','Suki','Glover');
Insert into osoba (os_cislo,meno,priezvisko) values ('345','Winter','Santana');
Insert into osoba (os_cislo,meno,priezvisko) values ('346','Debra','Mullins');
Insert into osoba (os_cislo,meno,priezvisko) values ('347','Maggy','Hodge');
Insert into osoba (os_cislo,meno,priezvisko) values ('348','Marah','Knox');
Insert into osoba (os_cislo,meno,priezvisko) values ('349','Maite','Battle');
Insert into osoba (os_cislo,meno,priezvisko) values ('350','Kenyon','Owen');
Insert into osoba (os_cislo,meno,priezvisko) values ('351','Octavia','Buckner');
Insert into osoba (os_cislo,meno,priezvisko) values ('352','Hermione','Morin');
Insert into osoba (os_cislo,meno,priezvisko) values ('353','Walter','Lowery');
Insert into osoba (os_cislo,meno,priezvisko) values ('354','Yardley','Mosley');
Insert into osoba (os_cislo,meno,priezvisko) values ('355','Leah','Ortega');
Insert into osoba (os_cislo,meno,priezvisko) values ('356','Sandra','Olson');
Insert into osoba (os_cislo,meno,priezvisko) values ('357','Jermaine','Tate');
Insert into osoba (os_cislo,meno,priezvisko) values ('358','Yolanda','Mckenzie');
Insert into osoba (os_cislo,meno,priezvisko) values ('359','Meredith','Giles');
Insert into osoba (os_cislo,meno,priezvisko) values ('360','Maxine','Pope');
Insert into osoba (os_cislo,meno,priezvisko) values ('361','Hyatt','Sanders');
Insert into osoba (os_cislo,meno,priezvisko) values ('362','Kevin','Perry');
Insert into osoba (os_cislo,meno,priezvisko) values ('363','Britanney','Higgins');
Insert into osoba (os_cislo,meno,priezvisko) values ('364','Roth','Mejia');
Insert into osoba (os_cislo,meno,priezvisko) values ('365','Carol','Faulkner');
Insert into osoba (os_cislo,meno,priezvisko) values ('366','Kylie','Baldwin');
Insert into osoba (os_cislo,meno,priezvisko) values ('367','Liberty','Brennan');
Insert into osoba (os_cislo,meno,priezvisko) values ('368','Lamar','Dillard');
Insert into osoba (os_cislo,meno,priezvisko) values ('369','Vera','Garrison');
Insert into osoba (os_cislo,meno,priezvisko) values ('370','Philip','Woods');
Insert into osoba (os_cislo,meno,priezvisko) values ('371','Deacon','Grant');
Insert into osoba (os_cislo,meno,priezvisko) values ('372','Francesca','Murphy');
Insert into osoba (os_cislo,meno,priezvisko) values ('373','Eden','Huber');
Insert into osoba (os_cislo,meno,priezvisko) values ('374','Kennedy','Perez');
Insert into osoba (os_cislo,meno,priezvisko) values ('375','Rosalyn','Guthrie');
Insert into osoba (os_cislo,meno,priezvisko) values ('376','Rahim','Morton');
Insert into osoba (os_cislo,meno,priezvisko) values ('377','Flynn','Mcpherson');
Insert into osoba (os_cislo,meno,priezvisko) values ('378','Brendan','Kane');
Insert into osoba (os_cislo,meno,priezvisko) values ('379','Igor','Rollins');
Insert into osoba (os_cislo,meno,priezvisko) values ('380','Justina','Booth');
Insert into osoba (os_cislo,meno,priezvisko) values ('381','Sylvester','Malone');
Insert into osoba (os_cislo,meno,priezvisko) values ('382','Imelda','Mason');
Insert into osoba (os_cislo,meno,priezvisko) values ('383','Delilah','Ware');
Insert into osoba (os_cislo,meno,priezvisko) values ('384','Elaine','Sampson');
Insert into osoba (os_cislo,meno,priezvisko) values ('385','Richard','Gaines');
Insert into osoba (os_cislo,meno,priezvisko) values ('386','Amena','Merrill');
Insert into osoba (os_cislo,meno,priezvisko) values ('387','Cameron','Fletcher');
Insert into osoba (os_cislo,meno,priezvisko) values ('388','Keegan','Hartman');
Insert into osoba (os_cislo,meno,priezvisko) values ('389','Amanda','Marsh');
Insert into osoba (os_cislo,meno,priezvisko) values ('390','Bree','Hess');
Insert into osoba (os_cislo,meno,priezvisko) values ('391','Lunea','Wong');
Insert into osoba (os_cislo,meno,priezvisko) values ('392','Moana','Munoz');
Insert into osoba (os_cislo,meno,priezvisko) values ('393','Hedy','Case');
Insert into osoba (os_cislo,meno,priezvisko) values ('394','Jenette','Guerra');
Insert into osoba (os_cislo,meno,priezvisko) values ('395','Kasimir','Houston');
Insert into osoba (os_cislo,meno,priezvisko) values ('396','Galena','Hodge');
Insert into osoba (os_cislo,meno,priezvisko) values ('397','Ocean','Woodard');
Insert into osoba (os_cislo,meno,priezvisko) values ('398','Renee','Carter');
Insert into osoba (os_cislo,meno,priezvisko) values ('399','Casey','Donovan');
Insert into osoba (os_cislo,meno,priezvisko) values ('400','Xanthus','Mcfarland');
Insert into osoba (os_cislo,meno,priezvisko) values ('401','Timothy','Schmidt');
Insert into osoba (os_cislo,meno,priezvisko) values ('402','Jolene','Hendricks');
Insert into osoba (os_cislo,meno,priezvisko) values ('403','Sharon','Benjamin');
Insert into osoba (os_cislo,meno,priezvisko) values ('404','Claudia','Gibbs');
Insert into osoba (os_cislo,meno,priezvisko) values ('405','Elaine','Norton');
Insert into osoba (os_cislo,meno,priezvisko) values ('406','Martha','Gaines');
Insert into osoba (os_cislo,meno,priezvisko) values ('407','Merrill','Hendrix');
Insert into osoba (os_cislo,meno,priezvisko) values ('408','Chester','Hickman');
Insert into osoba (os_cislo,meno,priezvisko) values ('409','Cameran','Whitfield');
Insert into osoba (os_cislo,meno,priezvisko) values ('410','Plato','Woodard');
Insert into osoba (os_cislo,meno,priezvisko) values ('411','Stewart','Bradshaw');
Insert into osoba (os_cislo,meno,priezvisko) values ('412','Miranda','Tyler');
Insert into osoba (os_cislo,meno,priezvisko) values ('413','Kellie','Brooks');
Insert into osoba (os_cislo,meno,priezvisko) values ('414','Andrew','Roth');
Insert into osoba (os_cislo,meno,priezvisko) values ('415','Emery','Nunez');
Insert into osoba (os_cislo,meno,priezvisko) values ('416','Flavia','Donovan');
Insert into osoba (os_cislo,meno,priezvisko) values ('417','Dacey','Beasley');
Insert into osoba (os_cislo,meno,priezvisko) values ('418','Lois','Booth');
Insert into osoba (os_cislo,meno,priezvisko) values ('419','Ruby','Williams');
Insert into osoba (os_cislo,meno,priezvisko) values ('420','Ryan','Boyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('421','Perry','Barlow');
Insert into osoba (os_cislo,meno,priezvisko) values ('422','Josephine','Gentry');
Insert into osoba (os_cislo,meno,priezvisko) values ('423','Tamara','Walls');
Insert into osoba (os_cislo,meno,priezvisko) values ('424','Casey','Maldonado');
Insert into osoba (os_cislo,meno,priezvisko) values ('425','Macon','Sosa');
Insert into osoba (os_cislo,meno,priezvisko) values ('426','Aquila','English');
Insert into osoba (os_cislo,meno,priezvisko) values ('427','Anika','Hansen');
Insert into osoba (os_cislo,meno,priezvisko) values ('428','Chava','Tran');
Insert into osoba (os_cislo,meno,priezvisko) values ('429','Adrian','Gilliam');
Insert into osoba (os_cislo,meno,priezvisko) values ('430','Hillary','French');
Insert into osoba (os_cislo,meno,priezvisko) values ('431','Brenda','Bass');
Insert into osoba (os_cislo,meno,priezvisko) values ('432','Dara','Hoffman');
Insert into osoba (os_cislo,meno,priezvisko) values ('433','Ruth','Berger');
Insert into osoba (os_cislo,meno,priezvisko) values ('434','Harper','Kirby');
Insert into osoba (os_cislo,meno,priezvisko) values ('435','Axel','Conrad');
Insert into osoba (os_cislo,meno,priezvisko) values ('436','Fulton','Hahn');
Insert into osoba (os_cislo,meno,priezvisko) values ('437','Thomas','Carey');
Insert into osoba (os_cislo,meno,priezvisko) values ('438','India','Velazquez');
Insert into osoba (os_cislo,meno,priezvisko) values ('439','Austin','Ayers');
Insert into osoba (os_cislo,meno,priezvisko) values ('440','Quemby','Wallace');
Insert into osoba (os_cislo,meno,priezvisko) values ('441','Jason','Caldwell');
Insert into osoba (os_cislo,meno,priezvisko) values ('442','Chastity','Knapp');
Insert into osoba (os_cislo,meno,priezvisko) values ('443','Kaden','Norris');
Insert into osoba (os_cislo,meno,priezvisko) values ('444','Oprah','Nicholson');
Insert into osoba (os_cislo,meno,priezvisko) values ('445','Zephania','Whitehead');
Insert into osoba (os_cislo,meno,priezvisko) values ('446','Ruby','Turner');
Insert into osoba (os_cislo,meno,priezvisko) values ('447','Demetrius','Shaffer');
Insert into osoba (os_cislo,meno,priezvisko) values ('448','Imelda','Byrd');
Insert into osoba (os_cislo,meno,priezvisko) values ('449','Stephanie','Snow');
Insert into osoba (os_cislo,meno,priezvisko) values ('450','Martha','Whitley');
Insert into osoba (os_cislo,meno,priezvisko) values ('451','Risa','Baxter');
Insert into osoba (os_cislo,meno,priezvisko) values ('452','Irene','Duncan');
Insert into osoba (os_cislo,meno,priezvisko) values ('453','Edan','Tate');
Insert into osoba (os_cislo,meno,priezvisko) values ('454','Hilary','Cabrera');
Insert into osoba (os_cislo,meno,priezvisko) values ('455','Norman','Ball');
Insert into osoba (os_cislo,meno,priezvisko) values ('456','Blake','Clements');
Insert into osoba (os_cislo,meno,priezvisko) values ('457','Justina','Bright');
Insert into osoba (os_cislo,meno,priezvisko) values ('458','Evangeline','Black');
Insert into osoba (os_cislo,meno,priezvisko) values ('459','Demetrius','England');
Insert into osoba (os_cislo,meno,priezvisko) values ('460','Melissa','Macdonald');
Insert into osoba (os_cislo,meno,priezvisko) values ('461','Indigo','Riley');
Insert into osoba (os_cislo,meno,priezvisko) values ('462','Yuri','Hicks');
Insert into osoba (os_cislo,meno,priezvisko) values ('463','Herrod','Hurley');
Insert into osoba (os_cislo,meno,priezvisko) values ('464','Felix','Bishop');
Insert into osoba (os_cislo,meno,priezvisko) values ('465','Lawrence','Potter');
Insert into osoba (os_cislo,meno,priezvisko) values ('466','Harlan','Forbes');
Insert into osoba (os_cislo,meno,priezvisko) values ('467','Jonas','Herrera');
Insert into osoba (os_cislo,meno,priezvisko) values ('468','Nyssa','Hurley');
Insert into osoba (os_cislo,meno,priezvisko) values ('469','Tad','Vinson');
Insert into osoba (os_cislo,meno,priezvisko) values ('470','Rama','Hunt');
Insert into osoba (os_cislo,meno,priezvisko) values ('471','Lane','Mitchell');
Insert into osoba (os_cislo,meno,priezvisko) values ('472','Carter','Vance');
Insert into osoba (os_cislo,meno,priezvisko) values ('473','Beatrice','Melton');
Insert into osoba (os_cislo,meno,priezvisko) values ('474','Hyatt','Bright');
Insert into osoba (os_cislo,meno,priezvisko) values ('475','Phoebe','Phillips');
Insert into osoba (os_cislo,meno,priezvisko) values ('476','Felix','Benson');
Insert into osoba (os_cislo,meno,priezvisko) values ('477','Geoffrey','Keith');
Insert into osoba (os_cislo,meno,priezvisko) values ('478','Merritt','Simmons');
Insert into osoba (os_cislo,meno,priezvisko) values ('479','Madeson','Byers');
Insert into osoba (os_cislo,meno,priezvisko) values ('480','Galena','Branch');
Insert into osoba (os_cislo,meno,priezvisko) values ('481','Maxwell','Campbell');
Insert into osoba (os_cislo,meno,priezvisko) values ('482','Hammett','Hudson');
Insert into osoba (os_cislo,meno,priezvisko) values ('483','Wesley','Robertson');
Insert into osoba (os_cislo,meno,priezvisko) values ('484','Jamal','Powell');
Insert into osoba (os_cislo,meno,priezvisko) values ('485','Morgan','Case');
Insert into osoba (os_cislo,meno,priezvisko) values ('486','Brooke','Guerrero');
Insert into osoba (os_cislo,meno,priezvisko) values ('487','Karyn','Lloyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('488','Brady','Gould');
Insert into osoba (os_cislo,meno,priezvisko) values ('489','Dawn','Noble');
Insert into osoba (os_cislo,meno,priezvisko) values ('490','Noel','Roy');
Insert into osoba (os_cislo,meno,priezvisko) values ('491','Amanda','Fletcher');
Insert into osoba (os_cislo,meno,priezvisko) values ('492','Xena','Floyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('493','Hamilton','Mcknight');
Insert into osoba (os_cislo,meno,priezvisko) values ('494','Beck','Sharpe');
Insert into osoba (os_cislo,meno,priezvisko) values ('495','Lynn','Nieves');
Insert into osoba (os_cislo,meno,priezvisko) values ('496','Pandora','Barker');
Insert into osoba (os_cislo,meno,priezvisko) values ('497','Talon','Ferguson');
Insert into osoba (os_cislo,meno,priezvisko) values ('498','Patience','Lancaster');
Insert into osoba (os_cislo,meno,priezvisko) values ('499','Robert','Kline');
Insert into osoba (os_cislo,meno,priezvisko) values ('1','Cody','Olson');
Insert into osoba (os_cislo,meno,priezvisko) values ('2','Virginia','Booth');
Insert into osoba (os_cislo,meno,priezvisko) values ('3','Lance','Sampson');
Insert into osoba (os_cislo,meno,priezvisko) values ('4','Boris','Horne');
Insert into osoba (os_cislo,meno,priezvisko) values ('5','Xanthus','Owens');
Insert into osoba (os_cislo,meno,priezvisko) values ('6','Idona','Rose');
Insert into osoba (os_cislo,meno,priezvisko) values ('7','Jenna','Watkins');
Insert into osoba (os_cislo,meno,priezvisko) values ('8','Haviva','Ray');
Insert into osoba (os_cislo,meno,priezvisko) values ('9','Celeste','Austin');
Insert into osoba (os_cislo,meno,priezvisko) values ('10','Cora','Contreras');
Insert into osoba (os_cislo,meno,priezvisko) values ('11','Finn','Sherman');
Insert into osoba (os_cislo,meno,priezvisko) values ('12','Zenaida','Olson');
Insert into osoba (os_cislo,meno,priezvisko) values ('13','Ocean','Glover');
Insert into osoba (os_cislo,meno,priezvisko) values ('14','Kirk','Burch');
Insert into osoba (os_cislo,meno,priezvisko) values ('15','Perry','Obrien');
Insert into osoba (os_cislo,meno,priezvisko) values ('16','Yuri','Rasmussen');
Insert into osoba (os_cislo,meno,priezvisko) values ('17','Kasper','Bonner');
Insert into osoba (os_cislo,meno,priezvisko) values ('18','Quamar','Gibbs');
Insert into osoba (os_cislo,meno,priezvisko) values ('19','Len','Stanley');
Insert into osoba (os_cislo,meno,priezvisko) values ('20','Dara','Gallagher');
Insert into osoba (os_cislo,meno,priezvisko) values ('21','Lacey','Vaughan');
Insert into osoba (os_cislo,meno,priezvisko) values ('22','Alexander','Fulton');
Insert into osoba (os_cislo,meno,priezvisko) values ('23','Callie','Hayes');
Insert into osoba (os_cislo,meno,priezvisko) values ('24','Lesley','Dodson');
Insert into osoba (os_cislo,meno,priezvisko) values ('25','Akeem','Neal');
Insert into osoba (os_cislo,meno,priezvisko) values ('26','Isaiah','Raymond');
Insert into osoba (os_cislo,meno,priezvisko) values ('27','Valentine','Harrell');
Insert into osoba (os_cislo,meno,priezvisko) values ('28','Jerry','Barber');
Insert into osoba (os_cislo,meno,priezvisko) values ('29','Leandra','Sampson');
Insert into osoba (os_cislo,meno,priezvisko) values ('30','Phyllis','Richards');
Insert into osoba (os_cislo,meno,priezvisko) values ('31','Doris','Wilkinson');
Insert into osoba (os_cislo,meno,priezvisko) values ('32','Burke','Richards');
Insert into osoba (os_cislo,meno,priezvisko) values ('33','Ciara','Glenn');
Insert into osoba (os_cislo,meno,priezvisko) values ('34','Brennan','Bass');
Insert into osoba (os_cislo,meno,priezvisko) values ('35','Ayanna','Hanson');
Insert into osoba (os_cislo,meno,priezvisko) values ('36','Brenda','Gilbert');
Insert into osoba (os_cislo,meno,priezvisko) values ('37','Denise','Downs');
Insert into osoba (os_cislo,meno,priezvisko) values ('38','Ivan','Mcbride');
Insert into osoba (os_cislo,meno,priezvisko) values ('39','Ayanna','Mcneil');
Insert into osoba (os_cislo,meno,priezvisko) values ('40','Chanda','Haynes');
Insert into osoba (os_cislo,meno,priezvisko) values ('41','Bianca','Daugherty');
Insert into osoba (os_cislo,meno,priezvisko) values ('42','Reuben','Bender');
Insert into osoba (os_cislo,meno,priezvisko) values ('43','Xyla','Ramirez');
Insert into osoba (os_cislo,meno,priezvisko) values ('44','Aidan','Wade');
Insert into osoba (os_cislo,meno,priezvisko) values ('45','Amber','Sullivan');
Insert into osoba (os_cislo,meno,priezvisko) values ('46','Tara','Love');
Insert into osoba (os_cislo,meno,priezvisko) values ('47','Pascale','Maxwell');
Insert into osoba (os_cislo,meno,priezvisko) values ('48','Angela','Powell');
Insert into osoba (os_cislo,meno,priezvisko) values ('49','Irma','Ellison');
Insert into osoba (os_cislo,meno,priezvisko) values ('50','Perry','Cruz');
Insert into osoba (os_cislo,meno,priezvisko) values ('51','Jared','English');
Insert into osoba (os_cislo,meno,priezvisko) values ('52','Walker','Reid');
Insert into osoba (os_cislo,meno,priezvisko) values ('53','Taylor','Boyd');
Insert into osoba (os_cislo,meno,priezvisko) values ('54','Garrison','Carver');
Insert into osoba (os_cislo,meno,priezvisko) values ('55','Maxwell','Martinez');
Insert into osoba (os_cislo,meno,priezvisko) values ('56','Moses','House');
Insert into osoba (os_cislo,meno,priezvisko) values ('57','Ainsley','Little');
Insert into osoba (os_cislo,meno,priezvisko) values ('58','Liberty','Kent');
Insert into osoba (os_cislo,meno,priezvisko) values ('59','Gage','Carson');
Insert into osoba (os_cislo,meno,priezvisko) values ('60','Isaac','Murphy');
Insert into osoba (os_cislo,meno,priezvisko) values ('61','Mikayla','Schwartz');
Insert into osoba (os_cislo,meno,priezvisko) values ('62','Clarke','Levy');
Insert into osoba (os_cislo,meno,priezvisko) values ('63','Miriam','Sandoval');
Insert into osoba (os_cislo,meno,priezvisko) values ('64','India','Levine');
Insert into osoba (os_cislo,meno,priezvisko) values ('65','Neville','Cantu');
Insert into osoba (os_cislo,meno,priezvisko) values ('66','Ashton','Avery');
Insert into osoba (os_cislo,meno,priezvisko) values ('67','Winter','Schultz');
Insert into osoba (os_cislo,meno,priezvisko) values ('68','Abdul','Sellers');
Insert into osoba (os_cislo,meno,priezvisko) values ('69','Orlando','Wyatt');
Insert into osoba (os_cislo,meno,priezvisko) values ('70','Germaine','Salinas');
Insert into osoba (os_cislo,meno,priezvisko) values ('71','Belle','Wells');
Insert into osoba (os_cislo,meno,priezvisko) values ('72','Jack','Burnett');
Insert into osoba (os_cislo,meno,priezvisko) values ('73','Hope','Harrell');
Insert into osoba (os_cislo,meno,priezvisko) values ('74','Pamela','Barber');
Insert into osoba (os_cislo,meno,priezvisko) values ('75','Barbara','Hampton');
Insert into osoba (os_cislo,meno,priezvisko) values ('76','Joseph','Maldonado');
Insert into osoba (os_cislo,meno,priezvisko) values ('77','Frances','Maldonado');
Insert into osoba (os_cislo,meno,priezvisko) values ('78','Mark','Dillon');
Insert into osoba (os_cislo,meno,priezvisko) values ('79','Diana','Horton');
Insert into osoba (os_cislo,meno,priezvisko) values ('80','Dara','Moon');
Insert into osoba (os_cislo,meno,priezvisko) values ('81','Orla','Hogan');
Insert into osoba (os_cislo,meno,priezvisko) values ('82','Hayley','Booth');
Insert into osoba (os_cislo,meno,priezvisko) values ('83','Kelly','Crane');
Insert into osoba (os_cislo,meno,priezvisko) values ('84','Davis','Love');
Insert into osoba (os_cislo,meno,priezvisko) values ('85','Scarlett','Meyer');
Insert into osoba (os_cislo,meno,priezvisko) values ('86','Zephr','Grimes');
Insert into osoba (os_cislo,meno,priezvisko) values ('87','Kelly','Hatfield');
Insert into osoba (os_cislo,meno,priezvisko) values ('88','Brock','Hood');
Insert into osoba (os_cislo,meno,priezvisko) values ('89','Teegan','Robinson');
Insert into osoba (os_cislo,meno,priezvisko) values ('90','Aaron','Avila');
Insert into osoba (os_cislo,meno,priezvisko) values ('91','Peter','Parker');
Insert into osoba (os_cislo,meno,priezvisko) values ('92','Channing','Kinney');
Insert into osoba (os_cislo,meno,priezvisko) values ('93','Thor','Heath');
Insert into osoba (os_cislo,meno,priezvisko) values ('94','Winter','Malone');
Insert into osoba (os_cislo,meno,priezvisko) values ('95','Teegan','Wright');
Insert into osoba (os_cislo,meno,priezvisko) values ('96','Mercedes','Patterson');
Insert into osoba (os_cislo,meno,priezvisko) values ('97','Donna','Chan');
Insert into osoba (os_cislo,meno,priezvisko) values ('98','Eugenia','Curry');
Insert into osoba (os_cislo,meno,priezvisko) values ('99','Ulla','Sloan');
REM INSERTING into praca
SET DEFINE OFF;
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('4','95','39',null,'L','2015','1','102','3');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('5','8','98',null,'L','2015','1','108','16');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('7','29','98',null,'L','2015','1','113','93');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('10','29','13',null,'L','2015','1','118','48');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('15','84','65',null,'L','2015','1','123','22');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('17','42','20',null,'L','2015','1','128','12');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('18','11','25',null,'L','2015','1','133','86');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('20','20','1',null,'L','2015','1','138','93');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('23','5','33',null,'L','2015','1','143','10');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('25','18','54',null,'L','2015','1','153','67');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('27','71','82',null,'L','2015','1','158','69');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('28','15','45',null,'L','2015','1','163','42');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('31','94','85',null,'L','2015','1','168','50');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('35','30','89',null,'L','2015','1','173','45');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('36','18','33',null,'L','2015','1','178','82');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('37','2','58',null,'L','2015','1','183','31');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('38','43','47',null,'L','2015','1','188','58');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('39','28','53',null,'L','2015','1','193','45');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('41','90','14',null,'L','2015','1','198','18');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('44','75','89',null,'Z','2015','1','203','4');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('45','2','91',null,'Z','2016','1','208','13');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('47','95','78',null,'L','2016','1','213','88');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('50','39','24',null,'L','2016','1','218','10');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('52','65','48',null,'L','2016','1','238','60');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('53','57','19',null,'L','2016','1','243','85');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('55','89','29',null,'L','2016','1','248','82');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('57','57','76',null,'L','2016','1','253','42');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('61','1','21',null,'L','2016','1','258','66');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('63','9','57',null,'L','2016','1','263','11');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('64','9','72',null,'L','2016','1','268','36');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('66','5','42',null,'L','2016','1','290','7');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('67','35','73',null,'L','2016','1','295','79');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('70','36','45',null,'L','2016','1','300','71');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('72','52','68',null,'L','2016','1','305','74');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('74','61','87',null,'L','2016','1','310','21');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('75','90','58',null,'L','2016','1','315','89');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('77','32','38',null,'L','2016','1','320','31');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('80','11','26',null,'L','2016','1','325','13');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('82','59','95',null,'L','2016','1','330','62');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('84','42','51',null,'L','2016','1','335','44');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('85','53','94',null,'L','2016','1','340','67');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('86','20','72',null,'L','2016','1','345','59');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('87','27','92',null,'L','2016','1','350','5');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('88','47','78',null,'L','2016','1','355','2');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('89','73','65',null,'L','2016','1','360','79');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('90','39','36',null,'L','2016','1','365','27');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('91','33','14',null,'L','2016','1','370','5');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('96','8','23',null,'L','2016','1','375','92');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('97','28','35',null,'L','2016','1','380','80');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('100','99','78',null,'L','2010','1','380','20');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('1','56','50',null,'L','2014','2','104','40');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('2','60','98',null,'L','2014','2','110','16');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('3','70','50',null,'L','2014','2','115','86');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('6','44','6',null,'L','2014','2','120','96');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('8','50','33',null,'L','2014','2','125','98');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('9','42','23',null,'L','2014','2','130','20');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('11','36','66',null,'L','2014','2','135','84');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('12','49','62',null,'L','2014','2','140','38');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('13','42','8',null,'L','2014','2','145','6');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('14','80','87',null,'L','2014','2','150','94');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('16','27','67',null,'L','2014','2','155','60');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('19','13','84',null,'L','2014','2','160','17');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('21','3','35',null,'L','2014','2','165','32');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('22','24','66',null,'L','2014','2','170','68');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('26','26','53',null,'L','2014','2','175','62');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('29','49','25',null,'L','2014','2','180','10');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('30','43','10',null,'L','2014','2','185','62');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('32','79','81',null,'L','2014','2','190','41');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('34','95','94',null,'L','2014','2','200','49');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('40','85','43',null,'L','2014','2','205','23');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('42','79','2',null,'L','2013','2','210','69');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('43','20','15',null,'L','2013','2','215','19');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('46','56','54',null,'L','2013','2','220','73');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('48','27','82',null,'L','2013','2','240','36');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('49','42','73',null,'L','2013','2','245','68');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('51','40','14',null,'L','2013','2','250','63');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('54','14','67',null,'L','2013','2','255','73');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('56','65','64',null,'L','2013','2','260','7');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('58','22','67',null,'L','2013','2','265','47');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('59','93','43',null,'L','2013','2','270','8');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('60','45','82',null,'L','2013','2','292','96');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('62','15','55',null,'L','2013','2','297','23');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('65','6','48',null,'L','2013','2','302','72');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('68','76','71',null,'L','2012','2','307','56');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('69','28','67',null,'L','2012','2','312','13');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('71','33','93',null,'L','2012','2','317','78');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('73','67','65',null,'L','2012','2','322','78');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('76','36','11',null,'L','2012','2','327','95');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('78','46','19',null,'L','2012','2','332','38');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('79','78','74',null,'L','2012','2','337','62');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('81','99','82',null,'L','2012','2','342','68');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('83','60','43',null,'L','2012','2','347','52');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('92','69','17',null,'L','2012','2','352','20');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('93','10','57',null,'L','2012','2','357','23');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('94','36','47',null,'L','2012','2','362','45');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('95','53','51',null,'L','2012','2','367','70');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('98','84','68',null,'L','2012','2','372','61');
Insert into praca (id,os_oponent,os_veduci,nazov,semester,rok,id_typ,os_student,os_tutor) values ('99','93','77',null,'L','2012','2','377','76');
REM INSERTING into st_program
SET DEFINE OFF;
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('100','0','Informatika',null,'15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('101','0','Pocitacove inzinierstvo',null,'15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('102','0','Manazment',null,'15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('200','0','Informacne systemy',null,'15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('200','1','Informacne systemy','Systemy pre podporu rozhodnutie','15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('200','2','Informacne systemy','Aplikovana informatika','15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('200','3','Informacne systemy','Informaco-komunikacne systemy','15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('201','0','Informacny manazment',null,'15','1');
Insert into st_program (st_odbor,st_zameranie,popis_odboru,popis_zamerania,obhajoba,id_fakulty) values ('202','0','Pocitacove inzinierstvo',null,'15','1');
REM INSERTING into student
SET DEFINE OFF;
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('100','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('106','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('111','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('116','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('121','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('126','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('131','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('136','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('141','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('146','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('151','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('156','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('161','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('166','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('171','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('176','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('181','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('186','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('191','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('196','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('201','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('206','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('211','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('216','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('221','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('241','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('246','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('251','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('256','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('261','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('266','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('271','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('293','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('298','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('303','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('308','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('313','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('318','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('323','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('328','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('333','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('338','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('343','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('348','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('353','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('358','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('363','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('368','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('373','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('378','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('383','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('388','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('393','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('398','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('403','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('408','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('413','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('418','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('423','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('428','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('433','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('438','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('443','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('448','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('453','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('458','101','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('463','200','3','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('468','102','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('473','201','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('478','200','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('483','202','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('488','200','1','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('493','100','0','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('498','200','2','1');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('101','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('107','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('112','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('117','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('122','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('127','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('132','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('137','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('142','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('147','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('152','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('157','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('162','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('167','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('172','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('177','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('182','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('187','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('192','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('197','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('202','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('207','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('212','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('217','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('237','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('242','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('247','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('252','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('257','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('262','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('267','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('272','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('294','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('299','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('304','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('309','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('314','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('319','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('324','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('329','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('334','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('339','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('344','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('349','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('354','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('359','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('364','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('369','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('374','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('379','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('384','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('389','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('394','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('399','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('404','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('409','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('414','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('419','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('424','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('429','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('434','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('439','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('444','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('449','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('454','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('459','102','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('464','201','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('469','200','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('474','202','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('479','200','1','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('484','100','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('489','200','2','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('494','101','0','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('499','200','3','2');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('102','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('108','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('113','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('118','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('123','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('128','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('133','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('138','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('143','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('148','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('153','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('158','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('163','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('168','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('173','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('178','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('183','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('188','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('193','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('198','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('203','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('208','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('213','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('218','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('238','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('243','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('248','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('253','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('258','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('263','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('268','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('290','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('295','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('300','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('305','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('310','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('315','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('320','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('325','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('330','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('335','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('340','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('345','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('350','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('355','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('360','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('365','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('370','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('375','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('380','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('385','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('390','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('395','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('400','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('405','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('410','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('415','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('420','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('425','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('430','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('435','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('440','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('445','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('450','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('455','201','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('460','200','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('465','202','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('470','200','1','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('475','100','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('480','200','2','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('485','101','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('490','200','3','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('495','102','0','3');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('103','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('109','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('114','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('119','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('124','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('129','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('134','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('139','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('144','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('149','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('154','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('159','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('164','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('169','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('174','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('179','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('184','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('189','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('194','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('199','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('204','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('209','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('214','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('219','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('239','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('244','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('249','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('254','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('259','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('264','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('269','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('291','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('296','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('301','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('306','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('311','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('316','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('321','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('326','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('331','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('336','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('341','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('346','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('351','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('356','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('361','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('366','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('371','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('376','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('381','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('386','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('391','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('396','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('401','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('406','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('411','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('416','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('421','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('426','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('431','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('436','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('441','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('446','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('451','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('456','202','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('461','200','1','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('466','100','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('471','200','2','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('476','101','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('481','200','3','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('486','102','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('491','201','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('496','200','0','4');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('104','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('110','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('115','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('120','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('125','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('130','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('135','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('140','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('145','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('150','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('155','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('160','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('165','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('170','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('175','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('180','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('185','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('190','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('195','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('200','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('205','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('210','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('215','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('220','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('240','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('245','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('250','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('255','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('260','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('265','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('270','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('292','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('297','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('302','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('307','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('312','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('317','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('322','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('327','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('332','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('337','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('342','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('347','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('352','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('357','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('362','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('367','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('372','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('377','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('382','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('387','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('392','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('397','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('402','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('407','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('412','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('417','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('422','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('427','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('432','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('437','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('442','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('447','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('452','200','1','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('457','100','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('462','200','2','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('467','101','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('472','200','3','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('477','102','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('482','201','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('487','200','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('492','202','0','5');
Insert into student (os_cislo,st_odbor,st_zameranie,rocnik) values ('497','200','1','5');
REM INSERTING into terminy
SET DEFINE OFF;
REM INSERTING into typ_prace
SET DEFINE OFF;
Insert into typ_prace (id_typ,popis) values ('1','Bakalarska');
Insert into typ_prace (id_typ,popis) values ('2','Diplomova');
REM INSERTING into ucitel
SET DEFINE OFF;
Insert into ucitel (os_cislo,katedra) values ('1','Gar ');
Insert into ucitel (os_cislo,katedra) values ('2','KI  ');
Insert into ucitel (os_cislo,katedra) values ('3','KMM ');
Insert into ucitel (os_cislo,katedra) values ('4','KMM ');
Insert into ucitel (os_cislo,katedra) values ('5','KI  ');
Insert into ucitel (os_cislo,katedra) values ('6','KDS ');
Insert into ucitel (os_cislo,katedra) values ('7','KDS ');
Insert into ucitel (os_cislo,katedra) values ('8','KTK ');
Insert into ucitel (os_cislo,katedra) values ('9','KMM ');
Insert into ucitel (os_cislo,katedra) values ('10','KI  ');
Insert into ucitel (os_cislo,katedra) values ('11','KI  ');
Insert into ucitel (os_cislo,katedra) values ('12','KTK ');
Insert into ucitel (os_cislo,katedra) values ('13','KTK ');
Insert into ucitel (os_cislo,katedra) values ('14','KTK ');
Insert into ucitel (os_cislo,katedra) values ('15','KMT ');
Insert into ucitel (os_cislo,katedra) values ('16','KDS ');
Insert into ucitel (os_cislo,katedra) values ('17','KMME');
Insert into ucitel (os_cislo,katedra) values ('18','EX  ');
Insert into ucitel (os_cislo,katedra) values ('19','KIS ');
Insert into ucitel (os_cislo,katedra) values ('20','KI  ');
Insert into ucitel (os_cislo,katedra) values ('21','KMT ');
Insert into ucitel (os_cislo,katedra) values ('22','EX  ');
Insert into ucitel (os_cislo,katedra) values ('23','KIS ');
Insert into ucitel (os_cislo,katedra) values ('24','KMT ');
Insert into ucitel (os_cislo,katedra) values ('25','KME ');
Insert into ucitel (os_cislo,katedra) values ('26','KME ');
Insert into ucitel (os_cislo,katedra) values ('27','KST ');
Insert into ucitel (os_cislo,katedra) values ('28','KIS ');
Insert into ucitel (os_cislo,katedra) values ('29','KMM ');
Insert into ucitel (os_cislo,katedra) values ('30','Gar ');
Insert into ucitel (os_cislo,katedra) values ('31','KI  ');
Insert into ucitel (os_cislo,katedra) values ('32','KMM ');
Insert into ucitel (os_cislo,katedra) values ('33','KMM ');
Insert into ucitel (os_cislo,katedra) values ('34','KI  ');
Insert into ucitel (os_cislo,katedra) values ('35','KDS ');
Insert into ucitel (os_cislo,katedra) values ('36','KDS ');
Insert into ucitel (os_cislo,katedra) values ('37','KTK ');
Insert into ucitel (os_cislo,katedra) values ('38','KMM ');
Insert into ucitel (os_cislo,katedra) values ('39','KI  ');
Insert into ucitel (os_cislo,katedra) values ('40','KI  ');
Insert into ucitel (os_cislo,katedra) values ('41','KTK ');
Insert into ucitel (os_cislo,katedra) values ('42','KTK ');
Insert into ucitel (os_cislo,katedra) values ('43','KTK ');
Insert into ucitel (os_cislo,katedra) values ('44','KMT ');
Insert into ucitel (os_cislo,katedra) values ('45','KDS ');
Insert into ucitel (os_cislo,katedra) values ('46','KMME');
Insert into ucitel (os_cislo,katedra) values ('47','EX  ');
Insert into ucitel (os_cislo,katedra) values ('48','KIS ');
Insert into ucitel (os_cislo,katedra) values ('49','KI  ');
Insert into ucitel (os_cislo,katedra) values ('50','KMT ');
Insert into ucitel (os_cislo,katedra) values ('51','EX  ');
Insert into ucitel (os_cislo,katedra) values ('52','KIS ');
Insert into ucitel (os_cislo,katedra) values ('53','KMT ');
Insert into ucitel (os_cislo,katedra) values ('54','KME ');
Insert into ucitel (os_cislo,katedra) values ('55','KME ');
Insert into ucitel (os_cislo,katedra) values ('56','KST ');
Insert into ucitel (os_cislo,katedra) values ('57','KIS ');
Insert into ucitel (os_cislo,katedra) values ('58','KMM ');
Insert into ucitel (os_cislo,katedra) values ('59','Gar ');
Insert into ucitel (os_cislo,katedra) values ('60','KI  ');
Insert into ucitel (os_cislo,katedra) values ('61','KMM ');
Insert into ucitel (os_cislo,katedra) values ('62','KMM ');
Insert into ucitel (os_cislo,katedra) values ('63','KI  ');
Insert into ucitel (os_cislo,katedra) values ('64','KDS ');
Insert into ucitel (os_cislo,katedra) values ('65','KDS ');
Insert into ucitel (os_cislo,katedra) values ('66','KTK ');
Insert into ucitel (os_cislo,katedra) values ('67','KMM ');
Insert into ucitel (os_cislo,katedra) values ('68','KI  ');
Insert into ucitel (os_cislo,katedra) values ('69','KI  ');
Insert into ucitel (os_cislo,katedra) values ('70','KTK ');
Insert into ucitel (os_cislo,katedra) values ('71','KTK ');
Insert into ucitel (os_cislo,katedra) values ('72','KTK ');
Insert into ucitel (os_cislo,katedra) values ('73','KMT ');
Insert into ucitel (os_cislo,katedra) values ('74','KDS ');
Insert into ucitel (os_cislo,katedra) values ('75','KMME');
Insert into ucitel (os_cislo,katedra) values ('76','EX  ');
Insert into ucitel (os_cislo,katedra) values ('77','KIS ');
Insert into ucitel (os_cislo,katedra) values ('78','KI  ');
Insert into ucitel (os_cislo,katedra) values ('79','KMT ');
Insert into ucitel (os_cislo,katedra) values ('80','EX  ');
Insert into ucitel (os_cislo,katedra) values ('81','KIS ');
Insert into ucitel (os_cislo,katedra) values ('82','KMT ');
Insert into ucitel (os_cislo,katedra) values ('83','KME ');
Insert into ucitel (os_cislo,katedra) values ('84','KME ');
Insert into ucitel (os_cislo,katedra) values ('85','KST ');
Insert into ucitel (os_cislo,katedra) values ('86','KIS ');
Insert into ucitel (os_cislo,katedra) values ('87','KMM ');
Insert into ucitel (os_cislo,katedra) values ('88','Gar ');
Insert into ucitel (os_cislo,katedra) values ('89','KI  ');
Insert into ucitel (os_cislo,katedra) values ('90','KMM ');
Insert into ucitel (os_cislo,katedra) values ('91','KMM ');
Insert into ucitel (os_cislo,katedra) values ('92','KI  ');
Insert into ucitel (os_cislo,katedra) values ('93','KDS ');
Insert into ucitel (os_cislo,katedra) values ('94','KDS ');
Insert into ucitel (os_cislo,katedra) values ('95','KTK ');
Insert into ucitel (os_cislo,katedra) values ('96','KMM ');
Insert into ucitel (os_cislo,katedra) values ('97','KI  ');
Insert into ucitel (os_cislo,katedra) values ('98','KI  ');
Insert into ucitel (os_cislo,katedra) values ('99','KTK ');
REM INSERTING into ucitelia
SET DEFINE OFF;
REM INSERTING into JOSIF."zap_studenti"
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C009569
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009569" ON funkcia (id_fun) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009580
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009580" ON fakulty (id_fakulty) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009563
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009563" ON komisie (id_komisie) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009551
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009551" ON osoba (os_cislo) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009556
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009556" ON praca (id) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009560
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009560" ON st_program (st_odbor, st_zameranie) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009587
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009587" ON student (os_cislo) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009578
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009578" ON terminy (id_termin) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009571
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009571" ON typ_prace (id_typ) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009589
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009589" ON ucitel (os_cislo) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009575
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009575" ON ucitelia (id_fun, id_komisie) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009567
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOSIF"."SYS_C009567" ON zap_studenti (id) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table funkcia
--------------------------------------------------------

  ALTER TABLE funkcia ADD PRIMARY KEY (id_fun)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE funkcia MODIFY (id_fun NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table fakulty
--------------------------------------------------------

  ALTER TABLE fakulty ADD PRIMARY KEY (id_fakulty)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE fakulty MODIFY (id_fakulty NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table komisie
--------------------------------------------------------

  ALTER TABLE komisie ADD PRIMARY KEY (id_komisie)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE komisie MODIFY (id_termin NOT NULL ENABLE);
  ALTER TABLE komisie MODIFY (id_komisie NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table osoba
--------------------------------------------------------

  ALTER TABLE osoba ADD PRIMARY KEY (os_cislo)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE osoba MODIFY (os_cislo NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table praca
--------------------------------------------------------

  ALTER TABLE praca ADD PRIMARY KEY (id)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE praca MODIFY (os_student NOT NULL ENABLE);
  ALTER TABLE praca MODIFY (id_typ NOT NULL ENABLE);
  ALTER TABLE praca MODIFY (os_veduci NOT NULL ENABLE);
  ALTER TABLE praca MODIFY (id NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table st_program
--------------------------------------------------------

  ALTER TABLE st_program ADD PRIMARY KEY (st_odbor, st_zameranie)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE st_program MODIFY (id_fakulty NOT NULL ENABLE);
  ALTER TABLE st_program MODIFY (st_zameranie NOT NULL ENABLE);
  ALTER TABLE st_program MODIFY (st_odbor NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table student
--------------------------------------------------------

  ALTER TABLE student ADD PRIMARY KEY (os_cislo)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE student MODIFY (rocnik NOT NULL ENABLE);
  ALTER TABLE student MODIFY (st_zameranie NOT NULL ENABLE);
  ALTER TABLE student MODIFY (st_odbor NOT NULL ENABLE);
  ALTER TABLE student MODIFY (os_cislo NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table terminy
--------------------------------------------------------

  ALTER TABLE terminy ADD PRIMARY KEY (id_termin)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE terminy MODIFY (datum NOT NULL ENABLE);
  ALTER TABLE terminy MODIFY (id_termin NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table typ_prace
--------------------------------------------------------

  ALTER TABLE typ_prace ADD PRIMARY KEY (id_typ)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE typ_prace MODIFY (id_typ NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ucitel
--------------------------------------------------------

  ALTER TABLE ucitel ADD PRIMARY KEY (os_cislo)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE ucitel MODIFY (os_cislo NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ucitelia
--------------------------------------------------------

  ALTER TABLE ucitelia ADD PRIMARY KEY (id_fun, id_komisie)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE ucitelia MODIFY (os_cislo NOT NULL ENABLE);
  ALTER TABLE ucitelia MODIFY (id_komisie NOT NULL ENABLE);
  ALTER TABLE ucitelia MODIFY (id_fun NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table zap_studenti
--------------------------------------------------------

  ALTER TABLE zap_studenti ADD PRIMARY KEY (id)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE zap_studenti MODIFY (os_cislo NOT NULL ENABLE);
  ALTER TABLE zap_studenti MODIFY (id_komisie NOT NULL ENABLE);
  ALTER TABLE zap_studenti MODIFY (id NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table komisie
--------------------------------------------------------

  ALTER TABLE komisie ADD FOREIGN KEY (id_termin)
	  REFERENCES terminy (id_termin) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table praca
--------------------------------------------------------

  ALTER TABLE praca ADD FOREIGN KEY (id_typ)
	  REFERENCES typ_prace (id_typ) ENABLE;
  ALTER TABLE praca ADD FOREIGN KEY (os_student)
	  REFERENCES student (os_cislo) ENABLE;
  ALTER TABLE praca ADD FOREIGN KEY (os_tutor)
	  REFERENCES ucitel (os_cislo) ENABLE;
  ALTER TABLE praca ADD FOREIGN KEY (os_veduci)
	  REFERENCES ucitel (os_cislo) ENABLE;
  ALTER TABLE praca ADD FOREIGN KEY (os_oponent)
	  REFERENCES ucitel (os_cislo) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table st_program
--------------------------------------------------------

  ALTER TABLE st_program ADD FOREIGN KEY (id_fakulty)
	  REFERENCES fakulty (id_fakulty) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table student
--------------------------------------------------------

  ALTER TABLE student ADD FOREIGN KEY (os_cislo)
	  REFERENCES osoba (os_cislo) ENABLE;
  ALTER TABLE student ADD FOREIGN KEY (st_odbor, st_zameranie)
	  REFERENCES st_program (st_odbor, st_zameranie) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ucitel
--------------------------------------------------------

  ALTER TABLE ucitel ADD FOREIGN KEY (os_cislo)
	  REFERENCES osoba (os_cislo) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ucitelia
--------------------------------------------------------

  ALTER TABLE ucitelia ADD FOREIGN KEY (id_komisie)
	  REFERENCES komisie (id_komisie) ENABLE;
  ALTER TABLE ucitelia ADD FOREIGN KEY (id_fun)
	  REFERENCES funkcia (id_fun) ENABLE;
  ALTER TABLE ucitelia ADD FOREIGN KEY (os_cislo)
	  REFERENCES ucitel (os_cislo) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table zap_studenti
--------------------------------------------------------

  ALTER TABLE zap_studenti ADD FOREIGN KEY (id_komisie)
	  REFERENCES komisie (id_komisie) ENABLE;
  ALTER TABLE zap_studenti ADD FOREIGN KEY (os_cislo)
	  REFERENCES student (os_cislo) ENABLE;

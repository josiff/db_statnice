--------------------------------------------------------
--  File created - Sobota-január-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FINDKOMISIU1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."FINDKOMISIU1" (
    /*metoda hlada komisiu podla podmienok prveho kola pridelovania*/
    p_student   INT,
    p_os_veduci INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  l_do     VARCHAR2(2);
  l_od     VARCHAR2(2) := GETSEMESTERI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN              = tm.ID_TERMIN)
    WHERE uc.OS_CISLO             = p_os_veduci
    AND uc.ID_FUN                 = 1
    AND km.ST_ODBOR               = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.datum, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok, 1) THEN
      l_result := true;
      /*dbms_output.put_line('zapisany' );*/
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END ;

/
--------------------------------------------------------
--  DDL for Function FINDKOMISIU2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."FINDKOMISIU2" (
    /*metoda hlada komisiu podla podmienok druheho kola pridelovania*/
    p_student   INT,
    p_os_veduci INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  l_do     VARCHAR2(2);
  l_od     VARCHAR2(2) := GETSEMESTERI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN              = tm.ID_TERMIN)
    WHERE uc.OS_CISLO             = p_os_veduci
    AND uc.ID_FUN                IN (2,3)
    AND km.ST_ODBOR               = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.datum, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok, 2) THEN
      l_result := true;
      /*dbms_output.put_line('zapisany' );*/
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END ;

/
--------------------------------------------------------
--  DDL for Function FINDKOMISIU3
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."FINDKOMISIU3" (
    /*metoda hlada komisiu podla podmienok tretieho kola pridelovania*/
    p_student   INT,
    p_os_tutor  INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  l_do     VARCHAR2(2);
  l_od     VARCHAR2(2) := GETSEMESTERI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN              = tm.ID_TERMIN)
    WHERE uc.OS_CISLO             = p_os_tutor
    AND uc.ID_FUN                IN (2,3)
    AND km.ST_ODBOR               = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.datum, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok, 3) THEN
      l_result := true;
      /*dbms_output.put_line('zapisany' );*/
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END ;

/
--------------------------------------------------------
--  DDL for Function FINDKOMISIU4
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."FINDKOMISIU4" (
    /*metoda hlada komisiu podla podmienok po tretom kole (4kolo - posledne) kola pridelovania*/
    p_student   INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  l_do     VARCHAR2(2);
  l_od     VARCHAR2(2) := GETSEMESTERI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN              = tm.ID_TERMIN)
    WHERE km.ST_ODBOR             = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.datum, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok, 4) THEN
      l_result := true;
      /*dbms_output.put_line('zapisany' );*/
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END ;

/
--------------------------------------------------------
--  DDL for Function GETKOMISIA1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETKOMISIA1" (
    /*metoda testuje ci ucitel je predseda v komisi*/
    p_odbor       INT,
    p_zameranie   INT,
    p_ucitel      INT,
    p_rok         VARCHAR2,
    p_semester    VARCHAR2,
    p_prevKomisia INT)
  RETURN CLOB
AS
  l_result CLOB := NULL;
  l_do VARCHAR2(2) ;
  l_od VARCHAR2(2) := getSemesterI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT km.ID_KOMISIE AS komisia
    FROM komisie km
    JOIN TERMINY tm
    ON (km.ID_TERMIN = tm.ID_TERMIN)
    JOIN UCITELIA uc
    ON (uc.ID_KOMISIE             = km.ID_KOMISIE)
    WHERE km.ST_ODBOR             = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.DATUM, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do
    AND uc.ID_FUN                IN (1)
    AND uc.OS_CISLO               = p_ucitel
    AND km.id_komisie            <> p_prevKomisia;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    l_result    := WRITEZAPSTUDENT(ou_rec.komisia);
    IF l_result IS NOT NULL THEN
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END GETKOMISIA1;

/
--------------------------------------------------------
--  DDL for Function GETKOMISIA2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETKOMISIA2" (
    /*metoda testuje ci ucitel je clen alebo tajomnik v komisi*/
    p_odbor       INT,
    p_zameranie   INT,
    p_ucitel      INT,
    p_rok         VARCHAR2,
    p_semester    VARCHAR2,
    p_prevKomisia INT)
  RETURN CLOB
AS
  l_result CLOB := NULL;
  l_do VARCHAR2(2) ;
  l_od VARCHAR2(2) := getSemesterI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT km.ID_KOMISIE AS komisia
    FROM komisie km
    JOIN TERMINY tm
    ON (km.ID_TERMIN = tm.ID_TERMIN)
    JOIN UCITELIA uc
    ON (uc.ID_KOMISIE             = km.ID_KOMISIE)
    WHERE km.ST_ODBOR             = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.DATUM, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do
    AND uc.ID_FUN                IN (2,3)
    AND uc.OS_CISLO               = p_ucitel
    AND km.id_komisie            <> p_prevKomisia;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    l_result    := WRITEZAPSTUDENT(ou_rec.komisia);
    IF l_result IS NOT NULL THEN
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END GETKOMISIA2;

/
--------------------------------------------------------
--  DDL for Function GETKOMISIA3
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETKOMISIA3" (
    /*metoda posledne kolo pridelovania komisie pre potreby hladania nahradnika*/
    p_odbor       INT,
    p_zameranie   INT,
    p_rok         VARCHAR2,
    p_semester    VARCHAR2,
    p_prevKomisia INT)
  RETURN CLOB
AS
  l_result CLOB := NULL;
  l_do VARCHAR2(2) ;
  l_od VARCHAR2(2) := getSemesterI(p_semester, l_do);
  CURSOR cur1
  IS
    SELECT km.ID_KOMISIE AS komisia
    FROM komisie km
    JOIN TERMINY tm
    ON (km.ID_TERMIN = tm.ID_TERMIN)
    JOIN UCITELIA uc
    ON (uc.ID_KOMISIE             = km.ID_KOMISIE)
    WHERE km.ST_ODBOR             = p_odbor
    AND km.ST_ZAMERANIE           = p_zameranie
    AND TO_CHAR(tm.DATUM, 'YYYY') = p_rok
    AND TO_CHAR(tm.datum, 'MM')  >= l_od
    AND TO_CHAR(tm.datum, 'MM')  <= l_do
    AND km.id_komisie            <> p_prevKomisia;
BEGIN
  dbms_output.put_line(l_do || ' ' || l_od);
  FOR ou_rec IN cur1
    LOOP  
    l_result    := WRITEZAPSTUDENT(ou_rec.komisia);
    IF l_result IS NOT NULL THEN
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END GETKOMISIA3;

/
--------------------------------------------------------
--  DDL for Function GETROCNIK
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETROCNIK" (
/*metoda vrati rocnik podla stupna*/
    P_STUPEN IN INT )
  RETURN NUMBER
AS
BEGIN
  RETURN
  CASE p_stupen
  WHEN 1 THEN
    3
  WHEN 2 THEN
    4
  END;
END GETROCNIK;

/
--------------------------------------------------------
--  DDL for Function GETSEMESTERCH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSEMESTERCH" 
/*metoda podla datumu vrati ci je to letny alebo zimny semester*/
(
  P_DATE IN DATE 
) RETURN CHAR AS 
BEGIN
  RETURN case when to_char(p_date, 'MM') < '06' then 'L' else 'Z' end;
END GETSEMESTERCH;

/
--------------------------------------------------------
--  DDL for Function GETSEMESTERI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSEMESTERI" 
  /*metoda podla pismena vrati mesiace pre dany semester*/
  (
    P_SEMESTER IN CHAR,
    p_do OUT VARCHAR2 )
  RETURN VARCHAR2
AS
  l_od VARCHAR2(2);
BEGIN
  l_od :=
  CASE p_semester
  WHEN 'L' THEN
    '01'
  ELSE
    '06'
  END;
p_do :=
CASE p_semester
WHEN 'L' THEN
  '06'
ELSE
  '12'
END;
RETURN l_od;
END GETSEMESTERI;

/
--------------------------------------------------------
--  DDL for Function GETSTART
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSTART" (
/*metoda generuje casy zacatia skusky a konca skusky*/
    p_student  INT,
    p_zaciatok DATE,
    p_koniec   DATE,
    p_end OUT DATE )
  RETURN DATE
IS
  l_lastDate DATE;
  l_obhajoba INT;
BEGIN
  BEGIN
    SELECT sp.obhajoba
    INTO l_obhajoba
    FROM st_program sp
    JOIN student st
    ON (sp.ST_ODBOR     = st.st_odbor
    AND sp.ST_ZAMERANIE = st.st_zameranie)
    WHERE st.os_cislo   = p_student;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    /*ak som nic nenasiel porad vraciam null*/
    l_lastDate := NULL;
  END;
l_lastDate                          := p_zaciatok + l_obhajoba/(24*60);
IF TO_CHAR(l_lastDate, 'HH24:MI')    > '11:30' AND TO_CHAR(l_lastDate, 'HH24:MI') < '12:30' THEN
  l_lastDate                        := p_zaciatok + 60/(24*60);
  p_end                             := l_lastDate + l_obhajoba/(24*60);
elsif TO_CHAR(l_lastDate, 'HH24:MI') > TO_CHAR(p_koniec, 'HH24:MI') THEN
  l_lastDate                        := NULL;
ELSE
  l_lastDate := p_zaciatok;
  p_end      := l_lastDate + l_obhajoba/(24*60);
END IF;
RETURN l_lastDate;
END;

/
--------------------------------------------------------
--  DDL for Function GETSTAT2DIFF
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSTAT2DIFF" (
/*metoda vypocita rozdiel oproti predchadzajucemu obdobiu k statistike 2*/
    p_ROK         IN VARCHAR2 ,
    p_fakulta     IN INT,
    p_PROGRAM     IN INT ,
    p_ZAMERANIE   IN INT ,
    p_lastHodnota IN INT,
    p_rocnik      IN INT)
  RETURN NUMBER
AS
  l_result NUMBER :=0;
  CURSOR cur1
  IS
    SELECT sp.ID_FAKULTY   AS fakulta,
      COUNT(sp.ID_FAKULTY) AS pocet,
      pr.rok                                                                   AS rok,
      rank() OVER (ORDER BY sp.ID_FAKULTY, pr.rok DESC, sp.ID_FAKULTY, pr.rok) AS rank
    FROM student st
    JOIN ZAP_STUDENTI zs
    ON(st.OS_CISLO = zs.OS_CISLO)
    JOIN praca pr
    ON (st.OS_CISLO = pr.OS_STUDENT)
    JOIN ST_PROGRAM sp
    ON (st.ST_ODBOR     = sp.ST_ODBOR
    AND st.ST_ZAMERANIE = sp.ST_ZAMERANIE)
    WHERE pr.ROK        = zs.ROK
    AND pr.SEMESTER     = zs.SEMESTER
    AND st.ST_ZAMERANIE = p_ZAMERANIE
    AND st.ST_ODBOR     = p_PROGRAM
    AND st.ROCNIK       = p_rocnik
    AND zs.ZNAMKA      IS NOT NULL
    AND zs.ZNAMKA      <> 'Fx'
    AND sp.ID_FAKULTY    = p_fakulta
    AND pr.ROK          = p_ROK
    GROUP BY sp.ID_FAKULTY,
      pr.rok;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    l_result := (ou_rec.pocet - p_lastHodnota)/ABS (p_lastHodnota) * 100;
  END LOOP;
RETURN l_result;
END GETSTAT2DIFF;

/
--------------------------------------------------------
--  DDL for Function GETSTAT3DIFF
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSTAT3DIFF" (
/*metoda vypocita rozdiel oproti predchadzajucemu obdobiu k statistike 3*/
    p_ROK         IN VARCHAR2 ,
    p_VEDUCI      IN INT,
    p_PROGRAM   IN INT ,
    p_ZAMERANIE IN INT ,
    p_lastHodnota IN INT,
    p_rocnik IN INT)
  RETURN NUMBER
AS
  l_result NUMBER :=0;
  CURSOR cur1
  IS
    SELECT pr.OS_VEDUCI                                                      AS veduci,
      COUNT(pr.os_veduci)                                                    AS pocet,
      pr.rok                                                                 AS rok,
      rank() OVER (ORDER BY pr.OS_VEDUCI, pr.rok DESC, pr.OS_VEDUCI, pr.rok) AS rank
    FROM student st
    JOIN ZAP_STUDENTI zs
    ON(st.OS_CISLO = zs.OS_CISLO)
    JOIN praca pr
    ON (st.OS_CISLO  = pr.OS_STUDENT)
    WHERE pr.ROK     = zs.ROK
    AND pr.SEMESTER  = zs.SEMESTER
    AND st.ST_ZAMERANIE = p_ZAMERANIE
    AND st.ST_ODBOR     = p_PROGRAM
    AND st.ROCNIK    = p_rocnik
    AND zs.ZNAMKA   IS NOT NULL
    AND zs.ZNAMKA   <> 'Fx'
    AND pr.OS_VEDUCI = p_veduci
    AND pr.ROK       = p_ROK
    GROUP BY pr.OS_VEDUCI,
      pr.rok;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    l_result := (ou_rec.pocet - p_lastHodnota)/ABS (p_lastHodnota) * 100;
  END LOOP;
RETURN l_result;
END GETSTAT3DIFF;

/
--------------------------------------------------------
--  DDL for Function WRITEZAPSTUDENT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."WRITEZAPSTUDENT" (
/*vypise zaspisaneho studenta metoda sa vyuziva pri hladani nahradnika*/
    P_KOMISIA IN INT )
  RETURN CLOB
AS
  l_result CLOB := null;
  CURSOR cur1
  IS
    SELECT os.OS_CISLO AS os_cislo,
      os.meno          AS meno,
      os.priezvisko    AS priezvisko,
      zs.id_komisie    AS komisia
    FROM ZAP_STUDENTI zs
    JOIN osoba os
    ON (zs.OS_CISLO     = os.OS_CISLO)
    WHERE zs.ID_KOMISIE = p_komisia;
BEGIN
  
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.os_cislo || ' ' || ou_rec.meno || ' ' || ou_rec.priezvisko || ' ' || ' ' || ou_rec.komisia);
    l_result := (ou_rec.os_cislo || ' ' || ou_rec.meno || ' ' || ou_rec.priezvisko || ' ' || ' ' || ou_rec.komisia);
    EXIT;
  END LOOP;
RETURN l_result;
END WRITEZAPSTUDENT;

/
--------------------------------------------------------
--  DDL for Function ZAPISSTUDENTA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."ZAPISSTUDENTA" (
/*metoda zapise studenta do na statnice*/
    p_student  INT,
    p_komisia  INT,
    p_cas_od   DATE,
    p_cas_do   DATE,
    p_semester VARCHAR2,
    p_rok      VARCHAR2,
    p_kolo     INT)
  RETURN BOOLEAN
IS
  l_result   BOOLEAN := false;
  sql_stmt   VARCHAR2(1000);
  l_lastDate DATE;
  l_endDate  DATE;
BEGIN
  BEGIN
    SELECT z.CAS_KONCA
    INTO l_lastDate
    FROM ZAP_STUDENTI z
    WHERE z.ID =
      (SELECT MAX(zs.ID)
      FROM ZAP_STUDENTI zs
      WHERE zs.ROK      = p_rok
      AND zs.SEMESTER   = p_semester
      AND zs.ID_KOMISIE = p_komisia
      );
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    l_lastDate := NULL;
  END;
sql_stmt      :='insert into zap_studenti(id_komisie, cas_zacatia, cas_konca, kolo, os_cislo, rok, semester)';
sql_stmt      := sql_stmt ||' values(:1,:2,:3,:4,:5,:6,:7) ';
IF l_lastDate IS NULL THEN
  l_lastDate  := GetStart(p_student, p_cas_od, p_cas_do, l_endDate);
  l_result    := true;
ELSE
  l_lastDate    := GetStart(p_student, l_lastDate, p_cas_do, l_endDate);
  l_result      := true;
  IF l_lastDate IS NULL THEN
    l_result    := false;
    RETURN l_result;
  END IF;
END IF;
EXECUTE IMMEDIATE sql_stmt USING p_komisia,
l_lastDate,
l_endDate,
p_kolo,
p_student,
p_rok,
p_semester;
dbms_output.put_line(TO_CHAR(l_lastDate, 'HH24:MI:SS') || 'cas konca');
RETURN l_result;
END;

/

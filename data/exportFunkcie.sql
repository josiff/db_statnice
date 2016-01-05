--------------------------------------------------------
--  File created - Utorok-január-05-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FINDKOMISIU1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."FINDKOMISIU1" (
    p_student   INT,
    p_os_veduci INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN    = tm.ID_TERMIN)
    WHERE uc.OS_CISLO   = p_os_veduci
    AND uc.ID_FUN       = 1
    AND km.ST_ODBOR     = p_odbor
    AND km.ST_ZAMERANIE = p_zameranie;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok) THEN
      l_result := true;
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
    p_student   INT,
    p_os_veduci INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN    = tm.ID_TERMIN)
    WHERE uc.OS_CISLO   = p_os_veduci
    AND uc.ID_FUN      IN (2,3)
    AND km.ST_ODBOR     = p_odbor
    AND km.ST_ZAMERANIE = p_zameranie;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok) THEN
      l_result := true;
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
    p_student   INT,
    p_os_tutor  INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN    = tm.ID_TERMIN)
    WHERE uc.OS_CISLO   = p_os_tutor
    AND uc.ID_FUN      IN (2,3)
    AND km.ST_ODBOR     = p_odbor
    AND km.ST_ZAMERANIE = p_zameranie;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok) THEN
      l_result := true;
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
    p_student   INT,
    p_odbor     INT,
    p_zameranie INT,
    p_semester  VARCHAR2,
    p_rok       VARCHAR2)
  RETURN BOOLEAN
IS
  l_result BOOLEAN:= false;
  CURSOR cur1
  IS
    SELECT uc.ID_KOMISIE AS komisia,
      tm.CAS_ZACIATIA    AS od,
      tm.CAS_KONCA       AS DO
    FROM UCITELIA uc
    JOIN KOMISIE km
    ON (uc.ID_KOMISIE = km.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN    = tm.ID_TERMIN)
    WHERE km.ST_ODBOR   = p_odbor
    AND km.ST_ZAMERANIE = p_zameranie;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia || ' ' || ou_rec.od || ' ' || ou_rec.do );
    IF ZapisStudenta(p_student, ou_rec.komisia, ou_rec.od, ou_rec.do, p_semester, p_rok) THEN
      l_result := true;
      EXIT;
    END IF;
  END LOOP;
RETURN l_result;
END ;

/
--------------------------------------------------------
--  DDL for Function GETSTART
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."GETSTART" (
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
--  DDL for Function ZAPISSTUDENTA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSIF"."ZAPISSTUDENTA" (
    p_student  INT,
    p_komisia  INT,
    p_cas_od   DATE,
    p_cas_do   DATE,
    p_semester VARCHAR2,
    p_rok      VARCHAR2)
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
  IF l_lastDate IS NULL THEN
    RETURN l_result;
  END IF;
END IF;
EXECUTE IMMEDIATE sql_stmt USING p_komisia,
l_lastDate,
l_endDate,
1,
p_student,
p_rok,
p_semester;
dbms_output.put_line(TO_CHAR(l_lastDate, 'HH24:MI:SS') || 'cas konca');
RETURN l_result;
END;

/

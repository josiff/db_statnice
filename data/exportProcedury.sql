--------------------------------------------------------
--  File created - Sobota-január-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure DOPLNSTUDENTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."DOPLNSTUDENTA" 
/*metoda dodatocne doplni studenta do komisie*/
(
  P_STUDENT IN INT 
, p_KOMISIA IN INT 
) AS 

l_semester char;
l_result boolean;

cursor cur1 is 
select tm.CAS_ZACIATIA as od, tm.CAS_KONCA as do from KOMISIE km 
join TERMINY tm on (km.ID_TERMIN = tm.ID_TERMIN)
where km.ID_KOMISIE = p_komisia;

BEGIN
  
  
  
  for ou_rec in cur1
  Loop
    
    l_semester := getSemesterCh(ou_rec.od);
    l_result := ZapisStudenta(p_student, p_komisia, ou_rec.od, ou_rec.do, l_semester, (to_char(ou_rec.od, 'YYYY')-1), 4);
     
  End loop;
END DOPLNSTUDENTA;

/
--------------------------------------------------------
--  DDL for Procedure FIXTIME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."FIXTIME" (
/*metoda opravi casy v skupine aby nevznikali okna medzi studentami*/
   p_KOMISIA IN INT )
AS
  l_start DATE;
  l_end   DATE;
  l_ii    INT :=1;
  CURSOR cur1
  IS
    SELECT tm.CAS_ZACIATIA AS od,
      tm.CAS_KONCA         AS DO,
      zp.OS_CISLO          AS student
    FROM ZAP_STUDENTI zp
    JOIN komisie km
    ON (km.ID_KOMISIE = zp.ID_KOMISIE)
    JOIN TERMINY tm
    ON (km.ID_TERMIN    = tm.ID_TERMIN)
    WHERE zp.ID_KOMISIE = p_komisia;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    IF l_ii    = 1 THEN
      l_start := getStart(ou_rec.student, ou_rec.od, ou_rec.do, l_end);
    ELSE
      l_start := getStart(ou_rec.student, l_end, ou_rec.do, l_end);
    END IF;
    UPDATE zap_studenti zs
    SET zs.CAS_ZACATIA = l_start,
      zs.cas_konca     = l_end
    WHERE zs.OS_CISLO  = ou_rec.student;
    l_ii              := l_ii + 1;
  END LOOP;
END FIXTIME;

/
--------------------------------------------------------
--  DDL for Procedure GETOTHENRKOMISIU
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETOTHENRKOMISIU" (
    /*metoda hlada pre studenta nahradnika za ktoreho by ho bolo mozne vymenit*/
    P_STUDENT  IN INT,
    p_rok      IN VARCHAR2,
    p_semester IN VARCHAR2,
    p_out OUT CLOB)
AS
  CURSOR cur1
  IS
    SELECT zs.ID_KOMISIE AS komisia,
      pr.OS_VEDUCI       AS veduci,
      pr.OS_OPONENT      AS oponent,
      st.ST_ODBOR        AS odbor,
      st.ST_ZAMERANIE    AS zameranie
    FROM ZAP_STUDENTI zs
    JOIN praca pr
    ON(pr.OS_STUDENT = zs.OS_CISLO)
    JOIN student st
    ON(zs.OS_CISLO    = st.OS_CISLO)
    WHERE zs.OS_CISLO = P_STUDENT
    AND zs.rok        = pr.ROK
    AND zs.SEMESTER   = pr.SEMESTER
    AND zs.ROK        = p_rok
    AND zs.SEMESTER   = p_semester;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.komisia);
    p_out    := GETKOMISIA1(ou_rec.odbor, ou_rec.zameranie,ou_rec.veduci, p_rok, p_semester, ou_rec.komisia) ;
    IF p_out IS NOT NULL THEN
      EXIT;
    END IF;
    p_out    := GETKOMISIA2(ou_rec.odbor, ou_rec.zameranie,ou_rec.veduci, p_rok, p_semester, ou_rec.komisia) ;
    IF p_out IS NOT NULL THEN
      EXIT;
    END IF;
    p_out    := GETKOMISIA2(ou_rec.odbor, ou_rec.zameranie,ou_rec.oponent, p_rok, p_semester, ou_rec.komisia) ;
    IF p_out IS NOT NULL THEN
      EXIT;
    END IF;
    p_out    := GETKOMISIA3(ou_rec.odbor, ou_rec.zameranie, p_rok, p_semester, ou_rec.komisia) ;
    IF p_out IS NOT NULL THEN
      EXIT;
    END IF;
  END LOOP;
END GETOTHENRKOMISIU;

/
--------------------------------------------------------
--  DDL for Procedure GETSTATISTIC1
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETSTATISTIC1" (
    /*metoda vrati prvu statistiku obhajene prace za katedru*/
    p_STUPEN    IN INT ,
    p_PROGRAM   IN INT ,
    p_ZAMERANIE IN INT ,
    p_rok       IN VARCHAR2,
    p_out OUT CLOB)
AS
  l_rocnik INT := GETROCNIK(p_stupen);
  CURSOR cur1
  IS
    SELECT uc.KATEDRA   AS katedra,
      COUNT(uc.KATEDRA) AS pocet
    FROM student st
    JOIN ZAP_STUDENTI zs
    ON(st.OS_CISLO = zs.OS_CISLO)
    JOIN praca pr
    ON (st.OS_CISLO = pr.OS_STUDENT)
    JOIN ucitel uc
    ON (pr.OS_OPONENT   = uc.OS_CISLO
    OR pr.OS_VEDUCI     = uc.OS_CISLO)
    WHERE st.ROCNIK     = l_rocnik
    AND zs.ZNAMKA      IS NOT NULL
    AND zs.ZNAMKA      <> 'Fx'
    AND pr.rok          = p_rok
    AND zs.rok          = pr.rok
    AND st.ST_ODBOR     = p_PROGRAM
    AND st.ST_ZAMERANIE = p_ZAMERANIE
    GROUP BY uc.KATEDRA;
BEGIN
  dbms_output.put_line('Katedra' || '     ' || 'Pocet');
  p_out := ('Katedra' || '     ' || 'Pocet') || chr(10);
  FOR ou_rec IN cur1
  LOOP
    dbms_output.put_line(ou_rec.katedra || '         ' || ou_rec.pocet);
    p_out := p_out || (ou_rec.katedra || '         ' || ou_rec.pocet) || chr(10);
  END LOOP;
END GETSTATISTIC1;

/
--------------------------------------------------------
--  DDL for Procedure GETSTATISTIC2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETSTATISTIC2" (
    /*metoda vracia druhu statistiku - obhajene prace za fakultu*/
    p_STUPEN    IN INT ,
    p_PROGRAM   IN INT ,
    p_ZAMERANIE IN INT ,
    p_rok       IN VARCHAR2,
    p_out OUT VARCHAR2)
AS
  l_rank    INT := 1;
  l_sum     INT := 0;
  l_rok     VARCHAR2(4);
  l_diff    NUMBER:=0;
  l_fakulta INT;
  l_rocnik  INT := GETROCNIK(p_stupen);
  CURSOR cur1
  IS
    SELECT sp.ID_FAKULTY   AS fakulta,
      COUNT(sp.ID_FAKULTY) AS pocet,
      pr.SEMESTER,
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
    AND st.ROCNIK       = l_rocnik
    AND st.ST_ZAMERANIE = p_ZAMERANIE
    AND st.ST_ODBOR     = p_PROGRAM
    AND pr.rok          = p_rok
    AND zs.ZNAMKA      IS NOT NULL
    AND zs.ZNAMKA      <> 'Fx'
    GROUP BY sp.ID_FAKULTY,
      pr.rok,
      pr.semester;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    IF l_rank   = ou_rec.rank THEN
      l_sum    := l_sum + ou_rec.pocet;
      l_rok    := ou_rec.rok;
      l_fakulta:= ou_rec.fakulta;
    ELSE
      dbms_output.put_line( 'spolu za rok ' || l_rok || ': ' || l_sum);
      dbms_output.put_line( '----------------------------------------');
      p_out  := p_out || ( 'spolu za rok ' || l_rok || ': ' || l_sum) || chr(10);
      p_out  := p_out || ( '----------------------------------------') || chr(10);
      l_diff := GETSTAT2DIFF((p_rok-1), l_fakulta,p_program, p_zameranie, l_sum, l_rocnik);
      dbms_output.put_line( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' );
      dbms_output.put_line( '=========================================');
      p_out    := p_out || ( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' ) || chr(10);
      p_out    := p_out || ( '=========================================') || chr(10);
      l_rank   := ou_rec.rank;
      l_rok    := ou_rec.rok;
      l_sum    := ou_rec.pocet;
      l_fakulta:= ou_rec.fakulta;
    END IF;
    dbms_output.put_line( ou_rec.fakulta || ' ' || ou_rec.semester || ' ' || ou_rec.pocet || ' ' || ou_rec.rok);
    p_out := p_out || ( ou_rec.fakulta || ' ' || ou_rec.semester || ' ' || ou_rec.pocet || ' ' || ou_rec.rok) || chr(10);
  END LOOP;
  IF l_sum <> 0 THEN
    dbms_output.put_line( 'spolu za rok ' || l_rok || ': ' || l_sum);
    dbms_output.put_line( '----------------------------------------');
    p_out  := p_out || ( 'spolu za rok ' || l_rok || ': ' || l_sum) || chr(10);
    p_out  := p_out || ( '----------------------------------------') || chr(10);
    l_diff := GETSTAT2DIFF((p_rok-1), l_fakulta,p_program, p_zameranie, l_sum, l_rocnik);
    dbms_output.put_line( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' );
    dbms_output.put_line( '=========================================');
    p_out := p_out || ( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' ) || chr(10);
    p_out := p_out || ( '=========================================') || chr(10);
  ELSE
    dbms_output.put_line( 'nic sa nenaslo');
    p_out := p_out || ( 'nic sa nenaslo') || chr(10);
  END IF;
END GETSTATISTIC2;

/
--------------------------------------------------------
--  DDL for Procedure GETSTATISTIC3
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETSTATISTIC3" (
    /*metoda vracia 3 statistiku - obhajene prace podla veducich*/
    p_STUPEN    IN INT ,
    p_PROGRAM   IN INT ,
    p_ZAMERANIE IN INT ,
    p_rok       IN VARCHAR2,
    p_out OUT CLOB)
AS
  l_rank   INT := 1;
  l_sum    INT := 0;
  l_rok    VARCHAR2(4);
  l_diff   NUMBER:=0;
  l_veduci INT;
  l_rocnik INT := GETROCNIK(p_stupen);
  CURSOR cur1
  IS
    SELECT pr.OS_VEDUCI                                                      AS veduci,
      COUNT(pr.os_veduci)                                                    AS pocet,
      pr.SEMESTER                                                            AS semester,
      pr.rok                                                                 AS rok,
      rank() OVER (ORDER BY pr.OS_VEDUCI, pr.rok DESC, pr.OS_VEDUCI, pr.rok) AS rank
    FROM student st
    JOIN ZAP_STUDENTI zs
    ON(st.OS_CISLO = zs.OS_CISLO)
    JOIN praca pr
    ON (st.OS_CISLO     = pr.OS_STUDENT)
    WHERE pr.ROK        = zs.ROK
    AND pr.SEMESTER     = zs.SEMESTER
    AND st.ROCNIK       = l_rocnik
    AND st.ST_ZAMERANIE = p_ZAMERANIE
    AND st.ST_ODBOR     = p_PROGRAM
    AND pr.rok          = p_rok
    AND zs.ZNAMKA      IS NOT NULL
    AND zs.ZNAMKA      <> 'Fx'
    GROUP BY pr.OS_VEDUCI,
      pr.rok,
      pr.semester;
BEGIN
  FOR ou_rec IN cur1
  LOOP
    IF l_rank  = ou_rec.rank THEN
      l_sum   := l_sum + ou_rec.pocet;
      l_rok   := ou_rec.rok;
      l_veduci:= ou_rec.veduci;
    ELSE
      dbms_output.put_line( 'spolu za rok ' || l_rok || ': ' || l_sum);
      dbms_output.put_line( '----------------------------------------');
      p_out  := p_out || ( 'spolu za rok ' || l_rok || ': ' || l_sum) || chr(10);
      p_out  := p_out || ( '----------------------------------------') || chr(10);
      l_diff := GETSTAT3DIFF((p_rok-1), l_veduci,p_program, p_zameranie, l_sum, l_rocnik);
      dbms_output.put_line( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' );
      dbms_output.put_line( '=========================================');
      p_out   := p_out || ( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' ) || chr(10);
      p_out   := p_out || ( '=========================================') || chr(10);
      l_rank  := ou_rec.rank;
      l_rok   := ou_rec.rok;
      l_sum   := ou_rec.pocet;
      l_veduci:= ou_rec.veduci;
    END IF;
    dbms_output.put_line( ou_rec.veduci || ' ' || ou_rec.semester || ' ' || ou_rec.pocet || ' ' || ou_rec.rok);
    p_out := p_out || ( ou_rec.veduci || ' ' || ou_rec.semester || ' ' || ou_rec.pocet || ' ' || ou_rec.rok) || chr(10);
  END LOOP;
  IF l_sum <> 0 THEN
    dbms_output.put_line( 'spolu za rok ' || l_rok || ': ' || l_sum);
    dbms_output.put_line( '----------------------------------------');
    p_out  := p_out || ( 'spolu za rok ' || l_rok || ': ' || l_sum) || chr(10);
    p_out  := p_out || ( '----------------------------------------') || chr(10);
    l_diff := GETSTAT3DIFF((p_rok-1), l_veduci,p_program, p_zameranie, l_sum, l_rocnik);
    dbms_output.put_line( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' );
    dbms_output.put_line( '=========================================');
    p_out := p_out || ( 'minule obdobie: ' || TO_CHAR(l_diff, '99.99') || '%' ) || chr(10);
    p_out := p_out || ( '=========================================') || chr(10);
  ELSE
    dbms_output.put_line( 'nic sa nenaslo');
    p_out := p_out || ( 'nic sa nenaslo') || chr(10);
  END IF;
END GETSTATISTIC3;

/
--------------------------------------------------------
--  DDL for Procedure GETSTUDENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETSTUDENTS" (
/*metoda najde studentov ktory mozu ist v danom roku na skusky a prideli ich do komisie*/
    p_kolo INT)
AS
  l_result BOOLEAN;
  CURSOR cur1
  IS
    SELECT pr.OS_STUDENT AS student,
      pr.ROK             AS rok,
      pr.SEMESTER        AS semester,
      pr.OS_VEDUCI       AS veduci,
      pr.OS_TUTOR        AS tutor,
      st.ST_ODBOR        AS odbor,
      st.ST_ZAMERANIE    AS zameranie
    FROM praca pr
    JOIN STUDENT st
    ON (st.OS_CISLO = pr.OS_STUDENT)
    WHERE pr.ROK    = to_char(sysdate, 'YYYY')
    AND pr.SEMESTER = GETSEMESTERCH(sysdate)
    AND NOT EXISTS
      (SELECT 'x'
      FROM ZAP_STUDENTI zs
      WHERE zs.OS_CISLO = pr.OS_STUDENT
      AND zs.ROK        = pr.ROK
      AND zs.SEMESTER   = pr.SEMESTER
      )
  ORDER BY pr.OS_STUDENT;
BEGIN
  CASE p_kolo
  WHEN 1 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu1(ou_rec.student, ou_rec.veduci, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('*******************');
      END IF;
    END LOOP;
  WHEN 2 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu1(ou_rec.student, ou_rec.veduci, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('*******************');
      END IF;
    END LOOP;
  WHEN 3 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu1(ou_rec.student, ou_rec.tutor, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('*******************');
      END IF;
    END LOOP;
  WHEN 4 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu4(ou_rec.student, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('*******************');
      END IF;
    END LOOP;
  END CASE;
END GetStudents;

/
--------------------------------------------------------
--  DDL for Procedure CHANGEGROUP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."CHANGEGROUP" (
    P_FIRST    IN INT ,
    P_FKOMISIA IN INT ,
    P_SECOND   IN INT ,
    P_SKOMISIA IN VARCHAR2 )
AS
  l_fId INT;
  l_sid INT;
  CURSOR cur_f
  IS
    SELECT zs.ID AS f_id
    FROM ZAP_STUDENTI zs
    WHERE zs.ID_KOMISIE = P_FKOMISIA
    AND zs.OS_CISLO     = P_FIRST;
  CURSOR cur_s
  IS
    SELECT zs.ID AS s_id
    FROM ZAP_STUDENTI zs
    WHERE zs.ID_KOMISIE = P_SKOMISIA
    AND zs.OS_CISLO     = P_SECOND;
BEGIN
  FOR ou_f IN cur_f
  LOOP
    l_fid := ou_f.f_id;
  END LOOP;
  FOR ou_s IN cur_s
  LOOP
    l_sid := ou_s.s_id;
  END LOOP;
  UPDATE zap_studenti zs SET zs.OS_CISLO = p_second WHERE zs.ID = l_fId;
  UPDATE zap_studenti zs SET zs.OS_CISLO = P_FIRST WHERE zs.ID = l_sId;
END CHANGEGROUP;

/
--------------------------------------------------------
--  DDL for Procedure MAIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."MAIN" AS 
l_out clob;
BEGIN
 /*GETOTHENRKOMISIU(138);*/
 
  /*GETSTATISTIC3(1,200,0, '2015', l_out);*/
  /*SYS.DBMS_OUTPUT.PUT_LINE(l_out);*/
  GETOTHENRKOMISIU(193, '2015', 'L', l_out);
 
  /*DOPLNSTUDENTA(104, 1);*/
  /*VYRADSTUDENTA(108,3);*/
  
  /*CHANGEINGROUP(128, '21:00', 3);*/
  
  /*FIXTIME(1);*/
     
  SYS.DBMS_OUTPUT.PUT_LINE(l_out);
  
  
  
END MAIN;

/
--------------------------------------------------------
--  DDL for Procedure MOVETIME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."MOVETIME" (
/*metoda ktora pousnie studenta na dany cas v ramci skupiny(komisie)*/
    P_FIRST   IN INT ,
    p_time    IN VARCHAR2,
    p_komisia IN INT)
AS
  l_firstId   INT := NULL;
  l_secondId  INT := NULL;
  l_nahradnik INT := NULL;
  l_obhajoba  INT :=0;
  l_date      DATE;
  CURSOR cur_first
  IS
    SELECT zs.id AS skupina,
    (to_char(zs.cas_konca, 'MI') - to_char(zs.cas_zacatia, 'MI')) as obhajoba,
    zs.CAS_ZACATIA AS od
    FROM ZAP_STUDENTI zs
    WHERE zs.OS_CISLO = P_FIRST
    AND zs.id_komisie = p_komisia;
  CURSOR cur_second
  IS
    SELECT zp.id     AS skupina,      
      zp.os_cislo    AS student
    FROM ZAP_STUDENTI zp
    WHERE TO_CHAR(zp.CAS_ZACATIA, 'HH24:MI') = p_time
    AND zp.id_komisie                        = p_komisia;
BEGIN
  FOR ou_first IN cur_first
  LOOP
    l_firstId := ou_first.skupina;
    l_obhajoba := to_number(ou_first.obhajoba);
    l_date := ou_first.od;
  END LOOP;
  FOR ou_second IN cur_second
  LOOP
    l_secondId  := ou_second.skupina;
    l_nahradnik := ou_second.student;
  END LOOP;
  IF (l_firstId IS NOT NULL) AND (l_secondid IS NOT NULL) THEN
    dbms_output.put_line(p_first || ' ' || l_secondid );
    UPDATE zap_studenti zp SET zp.os_cislo = p_first WHERE zp.id = l_secondId;
    dbms_output.put_line(l_nahradnik || ' ' || l_firstid );
    UPDATE zap_studenti zp SET zp.os_cislo = l_nahradnik WHERE zp.id = l_firstId;
  elsif (l_firstId IS NOT NULL) AND (l_secondid IS NULL) THEN
      dbms_output.put_line(TO_char(l_date, 'DD.MM.YYYY') );
    l_date         := to_date(TO_char(l_date, 'YYYY-MM-DD') || p_time, 'YYYY-MM-DD HH24:MI:SS');
    vyradStudenta(p_first, p_komisia);
    fixtime(p_komisia);
    INSERT
    INTO zap_studenti
      (
        id_komisie,
        cas_zacatia,
        cas_konca,
        os_cislo,
        rok,
        semester
      )
      VALUES
      (
        p_komisia,
        l_date,
        (l_date + l_obhajoba/(24*60)),
        P_FIRST,
        to_char(l_date, 'YYYY'),
        GETSEMESTERCH(l_date));
  END IF;
END MOVETIME;

/
--------------------------------------------------------
--  DDL for Procedure RUNGENERATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."RUNGENERATE" 
/*metoda spusta generovaie studentov do komisi*/
AS
BEGIN
  dbms_output.put_line('-prve kolo ------------------');
  GETSTUDENTS(1);
  dbms_output.put_line('-druhe kolo ------------------');
  GETSTUDENTS(2);
  dbms_output.put_line('-tretie kolo ------------------');
  GETSTUDENTS(3);
  dbms_output.put_line('-stvrte kolo ------------------');
  GETSTUDENTS(4);
  
  
  
  
  
  
END RUNGENERATE;

/
--------------------------------------------------------
--  DDL for Procedure VYRADSTUDENTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."VYRADSTUDENTA" 
/*metoda vymaze studenta z komisie*/
(
  P_student IN INT,
  p_komisia in INT
) AS 
BEGIN
  DELETE FROM ZAP_STUDENTI zp where zp.OS_CISLO = p_student
  and zp.id_komisie = p_komisia;
  FIXTIME(p_komisia);
END VYRADSTUDENTA;

/

--------------------------------------------------------
--  File created - Utorok-január-05-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure GETSTUDENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSIF"."GETSTUDENTS" (
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
    WHERE pr.ROK    = 2015
    AND pr.SEMESTER = 'L'
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
        dbms_output.put_line('-------------------');
      END IF;
    END LOOP;
  WHEN 2 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu1(ou_rec.student, ou_rec.veduci, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('-------------------');
      END IF;
    END LOOP;
  WHEN 3 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu1(ou_rec.student, ou_rec.tutor, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('-------------------');
      END IF;
    END LOOP;
  WHEN 4 THEN
    FOR ou_rec IN cur1
    LOOP
      dbms_output.put_line(ou_rec.student || ' ' || ou_rec.rok || ' ' || ou_rec.semester || ' ' || ou_rec.veduci || ' ' || ou_rec.odbor || ' ' || ou_rec.zameranie );
      l_result := FindKomisiu4(ou_rec.student, ou_rec.odbor, ou_rec.zameranie, ou_rec.semester, ou_rec.rok);
      IF l_result THEN
        dbms_output.put_line('-------------------');
      END IF;
    END LOOP;
  END CASE;
END GetStudents;

/

/*vypis prac ktore maju byt obhajovane*/
/*select * from praca pr
join student st on(st.OS_CISLO = pr.OS_STUDENT)
where pr.semester = 'L'
and st.ROCNIK = 3 
and st.ST_ODBOR = 100 and st.ST_ZAMERANIE = 0;


select * from praca pr 
join student st ON(pr.OS_STUDENT = st.os_cislo)
where st.ST_ODBOR = 102 and st.ST_ZAMERANIE = 0;


/*1 kolo*/
select km.ID_KOMISIE, to_char(tm.CAS_ZACIATIA, 'DD.MM.YYYY HH:MM'), pr.OS_STUDENT,sp.ST_ODBOR, sp.ST_ZAMERANIE, sp.OBHAJOBA from praca pr 
join ucitelia uc on(pr.OS_VEDUCI = uc.OS_CISLO)
join komisie km on(km.ID_KOMISIE = uc.ID_KOMISIE)
join terminy tm on(tm.ID_TERMIN = km.ID_TERMIN)
join student st on(st.OS_CISLO = pr.OS_STUDENT)
join st_program sp on (sp.ST_ODBOR = st.ST_ODBOR AND sp.ST_ZAMERANIE = st.ST_ZAMERANIE)
join ucitel u on(uc.os_cislo = u.os_cislo)
where u.ST_ODBOR = sp.ST_ODBOR and u.ST_ZAMERANIE = sp.ST_ZAMERANIE and 
uc.ID_FUN = 1;

select ID_KOMISIE, to_char(CAS_ZACATIA, 'HH24:MI:SS'), to_char( CAS_KONCA , 'HH24:MI:SS') from zap_studenti order by  ID_KOMISIE, CAS_KONCA DESC;


select  pr.OS_STUDENT as student, pr.ROK as rok, pr.SEMESTER as semester, pr.OS_VEDUCI as veduci, st.ST_ODBOR as odbor, st.ST_ZAMERANIE as zameranie from praca pr
join STUDENT st on (st.OS_CISLO = pr.OS_STUDENT)
where pr.ROK = 2015 and pr.SEMESTER = 'L'
and NOT EXISTS (select 'x' from ZAP_STUDENTI zs
where zs.OS_CISLO = pr.OS_STUDENT
and zs.ROK = pr.ROK and zs.SEMESTER = pr.SEMESTER)  order by pr.OS_STUDENT;

select uc.ID_KOMISIE as komisia, tm.CAS_ZACIATIA as od, tm.CAS_KONCA as do from UCITEL u
join UCITELIA uc on(u.OS_CISLO = uc.OS_CISLO)
join KOMISIE km on (uc.ID_KOMISIE = km.ID_KOMISIE)
join TERMINY tm on (km.ID_TERMIN = tm.ID_TERMIN)
where u.OS_CISLO = 53 and uc.ID_FUN = 1
and u.ST_ODBOR = 102 and u.ST_ZAMERANIE = 0;




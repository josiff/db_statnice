/*vypis prac ktore maju byt obhajovane*/
select pr.nazov as naz, os.MENO as meno, os.PRIEZVISKO as priez, pr.OS_VEDUCI as veduci, pr.OS_OPONENT as oponent, pr.OS_TUTOR as tutor  from praca pr
join student st on(st.OS_CISLO = pr.OS_STUDENT)
join osoba os on (pr.os_student = os.OS_CISLO )
where pr.semester = 'L'
and st.ROCNIK = case 1 when 1 then 3 when 2 then 5 end 
and pr.ROK = to_char(sysdate, 'YYYY')
and st.ST_ODBOR = 200;


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

select zs.id, zs.ID_KOMISIE, to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY HH24:MI:SS'), to_char( zs.CAS_KONCA , 'HH24:MI:SS'), zs.KOLO, zs.OS_CISLO from zap_studenti zs
where zs.ROK = '2016' and zs.semester = 'L'
order by zs.ID_KOMISIE, zs.CAS_ZACATIA;


select  pr.OS_STUDENT as student, pr.ROK as rok, pr.SEMESTER as semester, pr.OS_VEDUCI as veduci, st.ST_ODBOR as odbor, st.ST_ZAMERANIE as zameranie from praca pr
join STUDENT st on (st.OS_CISLO = pr.OS_STUDENT)
where pr.ROK = '2016' and pr.SEMESTER = 'L'
and NOT EXISTS (select 'x' from ZAP_STUDENTI zs
where zs.OS_CISLO = pr.OS_STUDENT
and zs.ROK = pr.ROK and zs.SEMESTER = pr.SEMESTER)  order by st.ST_ODBOR, st.st_zameranie;

select uc.ID_KOMISIE as komisia, tm.CAS_ZACIATIA as od, tm.CAS_KONCA as do from  UCITELIA uc 
join KOMISIE km on (uc.ID_KOMISIE = km.ID_KOMISIE)
join TERMINY tm on (km.ID_TERMIN = tm.ID_TERMIN)
where uc.OS_CISLO = 53 and uc.ID_FUN = 1
and km.ST_ODBOR = 102 and km.ST_ZAMERANIE = 0;

/*ucitelia kedy sa maju kam dostavit*/
select op.MENO, op.PRIEZVISKO, km.NAZOV as komisia, km.MIESTNOST,to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS') as zaciatok, to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec, (s.MENO || ' ' || s.PRIEZVISKO) as student,
pr.NAZOV, (case when op.os_cislo = pr.os_oponent then 'oponent' else 'veduci' end)as rola from zap_studenti zs
join praca pr on (pr.OS_STUDENT = zs.OS_CISLO)
join osoba s on (s.OS_CISLO = zs.OS_CISLO)
join KOMISIE km on(km.ID_KOMISIE = zs.ID_KOMISIE)
join osoba op on (op.OS_CISLO = pr.OS_OPONENT or op.OS_CISLO = pr.OS_VEDUCI)
where pr.ROK = zs.rok and zs.rok = '2015' 
and pr.SEMESTER = zs.SEMESTER and zs.SEMESTER = 'L'
order by op.PRIEZVISKO, op.meno;




/*prve kolo priradenia*/

select os.meno as meno, os.priezvisko as priez,to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS')  as zaciatok, to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec, km.ID_KOMISIE as komisia, km.MIESTNOST as miestnost from OSOBA os
join ZAP_STUDENTI zs on (zs.OS_CISLO = os.OS_CISLO)
join komisie km on (km.id_komisie = zs.ID_KOMISIE)
where zs.KOLO = 1 and zs.ROK = '2015' and zs.SEMESTER = 'L';


/*nepodarilo sa priradit do komiesie ani po 3 kole prièom veduci alebo oponent je èlen komisie*/

select distinct(pr.id),os.MENO, os.PRIEZVISKO from praca pr
join ucitelia uc on(uc.OS_CISLO = pr.OS_OPONENT or uc.OS_CISLO = pr.OS_VEDUCI)
join STUDENT st on (pr.OS_STUDENT = st.OS_CISLO)
join KOMISIE km on (uc.ID_KOMISIE = km.ID_KOMISIE)
join TERMINY tm on (tm.ID_TERMIN = km.ID_TERMIN)
join OSOBA os on (os.OS_CISLO = pr.OS_STUDENT)
where pr.ROK = '2015' and pr.SEMESTER = 'L'
and TO_CHAR(tm.DATUM, 'YYYY') = '2015'
and uc.ID_FUN = 3 and st.ST_ODBOR = km.ST_ODBOR 
and st.ST_ZAMERANIE = km.ST_ZAMERANIE;



/*statistiaka 1*/
select uc.KATEDRA, count(uc.KATEDRA) from student st
join ZAP_STUDENTI zs on(st.OS_CISLO = zs.OS_CISLO)
join praca pr on (st.OS_CISLO = pr.OS_STUDENT)
join ucitel uc on (pr.OS_OPONENT = uc.OS_CISLO or pr.OS_VEDUCI = uc.OS_CISLO)
where st.ROCNIK = 3 and zs.ZNAMKA is not Null and zs.ZNAMKA <> 'Fx'
and pr.rok = '2015' and zs.rok = pr.rok and st.ST_ODBOR = 200 and st.ST_ZAMERANIE = 0
group by uc.KATEDRA;

/*vzor*/
create table sales (person,city,sales)
as
select 'Alice', 'Phoenix', 19 from dual union all
select 'Alice', 'Tulsa', 11 from dual union all
select 'Bob', 'Phoenix', 17 from dual union all
select 'Bob', 'Tulsa', 9 from dual union all
select 'Tony', 'Miami', 5 from dual union all
select 'Tony', 'San Francisco', 3 from dual
/

select grouping_id(person,city,rowid),case grouping_id(person,city,rowid)
when 1 then 'Sub-Total for'
when 3 then 'Sub-Total for'
when 7 then 'Grand Total'
end notes, person, city
, sum(sales) sales from sales
group by rollup(person,city,rowid)
having grouping_id(city,rowid) != 1
or count(*) > 1
order by person, city, grouping(rowid);


select to_char(zp.CAS_ZACATIA, 'DD.MM.YYYY HH24:MI:SS'), to_char( zp.CAS_KONCA , 'HH24:MI:SS'), zp.* from ZAP_STUDENTI zp 
join komisie km on (km.ID_KOMISIE = zp.ID_KOMISIE)
join TERMINY tm on (km.ID_TERMIN = tm.ID_TERMIN)
where zp.ID_KOMISIE = 4;



select os.MENO as meno, os.PRIEZVISKO as priez, to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS') as zaciatok, to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec,
zs.ZNAMKA from ZAP_STUDENTI zs
join osoba os on (zs.OS_CISLO = os.OS_CISLO)
where zs.ID_KOMISIE = 1;


select * from praca pr
join student st on (pr.OS_STUDENT = st.os_cislo)
join ZAP_STUDENTI zp on (zp.OS_CISLO = pr.OS_STUDENT)
where pr.ROK = '2015' and pr.SEMESTER = 'L' 
and  pr.rok = zp.rok and pr.semester = zp.semester
and pr.ID = 4;


select *
from praca pr
join ZAP_STUDENTI zp on(pr.OS_STUDENT = zp.os_cislo)
join osoba os on(os.os_cislo = pr.OS_STUDENT)
where to_date(to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') > to_date( ('06.' || case when to_char(sysdate, 'MM') < '06' then  to_char(ADD_MONTHS(sysdate, -24), 'YYYY') 
else  to_char(ADD_MONTHS(sysdate, -12), 'YYYY') end), 'MM.YYYY')
and to_date( to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') < to_date(('06.' || case when to_char(sysdate, 'MM') < '06' then to_char(ADD_MONTHS(sysdate, -12), 'YYYY')
else  to_char(sysdate, 'YYYY') end), 'MM.YYYY') and pr.ROK = zp.ROK and pr.SEMESTER = zp.SEMESTER and 
(zp.ZNAMKA = 'Fx' or zp.ZNAMKA is null);



select * from ZAP_STUDENTI zp 
where to_date(to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') > to_date( ('06.' || case when to_char(sysdate, 'MM') < '06' then  to_char(ADD_MONTHS(sysdate, -24), 'YYYY') 
else  to_char(ADD_MONTHS(sysdate, -12), 'YYYY') end), 'MM.YYYY')
and to_date( to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') < to_date(('06.' || case when to_char(sysdate, 'MM') < '06' then to_char(ADD_MONTHS(sysdate, -12), 'YYYY')
else  to_char(sysdate, 'YYYY') end), 'MM.YYYY');

select * from ZAP_STUDENTI zp
where to_date(to_char(zp.cas_zacatia, 'MM.YYYY'), 'MM.YYYY') > to_date('06.2013', 'MM.YYYY')
/*and to_char(zp.cas_zacatia, 'MM.YYYY') > '06.2014'*/;



select ('06.' || case when to_char(sysdate, 'MM') < '06' then  to_char(ADD_MONTHS(sysdate, -24), 'YYYY') 
else  to_char(ADD_MONTHS(sysdate, -12), 'YYYY') end) as prvy, ('06.' || case when to_char(sysdate, 'MM') < '06' then to_char(ADD_MONTHS(sysdate, -12), 'YYYY')
else  to_char(sysdate, 'YYYY') end) as druhy from dual;



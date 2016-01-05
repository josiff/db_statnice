create or replace procedure PrveKolo as
Cursor cur1 is 
select km.ID_KOMISIE as id, to_char(tm.CAS_ZACIATIA, 'DD.MM.YYYY HH:MM') as od, pr.OS_STUDENT as student , sp.ST_ODBOR, as odbor sp.ST_ZAMERANIE as zameranie,
sp.OBHAJOBA as obhajoba from praca pr 
join ucitelia uc on(pr.OS_VEDUCI = uc.OS_CISLO)
join komisie km on(km.ID_KOMISIE = uc.ID_KOMISIE)
join terminy tm on(tm.ID_TERMIN = km.ID_TERMIN)
join student st on(st.OS_CISLO = pr.OS_STUDENT)
join st_program sp on (sp.ST_ODBOR = st.ST_ODBOR AND sp.ST_ZAMERANIE = st.ST_ZAMERANIE)
where uc.ID_KOMISIE = 4;
begin 
  
  FOR ou_rec IN cur1 LOOP
  
      
	  dbms_output.put_line(ou_rec.id);
	  dbms_output.put_line(ou_rec.od);
	  dbms_output.put_line(ou_rec.student);
	  dbms_output.put_line(ou_rec.odbor);
	  dbms_output.put_line(ou_rec.zameranie);
	  dbms_output.put_line(ou_rec.obhajoba);      
      
  END LOOP;
    
    
end PrveKolo;

/*vlozenie studenta */

procedure VlozStudenta (p_komisia int, p_cas_zacatia date, p_kolo int, p_student/*, p_skupina varchar2,  p_rocnik varchar2*/ ) as
sql_stmt varchar2(1000);
begin 

sql_stmt:='insert into zap_studenti(id_komisie, cas_zacatia, kolo, os_cislo)';
sql_stmt:= sql_stmt ||'values(:1,:2,:3,:4) '; 


EXECUTE IMMEDIATE sql_stmt USING p_komisia, p_cas_zacatia, p_kolo, p_student/*,  p_skupina, p_meno, p_rocnik*/;


end VlozStudenta;
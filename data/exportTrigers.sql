--------------------------------------------------------
--  File created - Sobota-január-09-2016   
--------------------------------------------------------
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

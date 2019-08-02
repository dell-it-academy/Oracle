CREATE OR REPLACE TRIGGER zdell_date_check
    BEFORE INSERT OR UPDATE
    ON zdell_pessoas
    FOR EACH ROW
BEGIN
    IF  :new.idade > sysdate then
            :new.idade := sysdate;
    END IF;
end;

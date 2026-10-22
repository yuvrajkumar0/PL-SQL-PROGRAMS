CREATE OR REPLACE TRIGGER trg_insert_user_audit
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO EMP_INSERT_AUDIT
    VALUES (
        :NEW.EMPNO,
        :NEW.ENAME,
        SYSDATE,
        USER
    );
END;
/
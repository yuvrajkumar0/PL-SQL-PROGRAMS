CREATE OR REPLACE TRIGGER trg_prevent_delete
BEFORE DELETE ON EMP
FOR EACH ROW
BEGIN
    IF :OLD.DEPTNO = 10 THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Employees of department 10 cannot be deleted.'
        );
    END IF;
END;
/
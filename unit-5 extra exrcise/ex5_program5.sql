CREATE OR REPLACE TRIGGER trg_check_update_salary
BEFORE UPDATE OF SAL ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SAL < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Salary cannot be negative.'
        );
    END IF;
END;
/
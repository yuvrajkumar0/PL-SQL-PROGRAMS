CREATE OR REPLACE TRIGGER trg_check_salary
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SAL <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary must be greater than zero.'
        );
    END IF;
END;
/
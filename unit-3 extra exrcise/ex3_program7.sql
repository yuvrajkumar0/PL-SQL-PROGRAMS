SET SERVEROUTPUT ON;

DECLARE
    INVALID_AGE EXCEPTION;
    v_age NUMBER := &age;
BEGIN
    IF v_age < 18 OR v_age > 60 THEN
        RAISE INVALID_AGE;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Valid employee age.');
    END IF;

EXCEPTION
    WHEN INVALID_AGE THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Age must be between 18 and 60.'
        );
END;
/
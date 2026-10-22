SET SERVEROUTPUT ON;

DECLARE
    v_sal NUMBER := &salary;
    v_limit NUMBER := 100000;
BEGIN
    IF v_sal > v_limit THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary cannot exceed 100000.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary approved: ' || v_sal);
    END IF;
END;
/
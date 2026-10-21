SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
BEGIN
    IF n > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Positive');
    ELSIF n < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Negative');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is Zero');
    END IF;
END;
/
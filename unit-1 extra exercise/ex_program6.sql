SET SERVEROUTPUT ON;

DECLARE
    y NUMBER := &year;
BEGIN
    IF MOD(y, 400) = 0 OR
       (MOD(y, 4) = 0 AND MOD(y, 100) != 0) THEN
        DBMS_OUTPUT.PUT_LINE('Leap Year');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not a Leap Year');
    END IF;
END;
/
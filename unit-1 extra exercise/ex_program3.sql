SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
BEGIN
    IF MOD(n, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Even');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is Odd');
    END IF;
END;
/
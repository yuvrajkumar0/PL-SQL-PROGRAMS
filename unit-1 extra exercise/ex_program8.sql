SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    total NUMBER := 0;
    i NUMBER;
BEGIN
    FOR i IN 1..n LOOP
        total := total + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum = ' || total);
END;
/
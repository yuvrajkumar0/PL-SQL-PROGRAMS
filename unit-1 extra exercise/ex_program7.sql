SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    i NUMBER;
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(n || ' x ' || i || ' = ' || (n * i));
    END LOOP;
END;
/
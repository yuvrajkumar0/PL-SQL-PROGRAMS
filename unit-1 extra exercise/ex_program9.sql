SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := &n;
    fact NUMBER := 1;
    i NUMBER;
BEGIN
    IF n < 0 OR n != TRUNC(n) THEN
        DBMS_OUTPUT.PUT_LINE(
            'Please enter a non-negative integer.'
        );
    ELSE
        FOR i IN 1..n LOOP
            fact := fact * i;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Factorial = ' || fact);
    END IF;
END;
/
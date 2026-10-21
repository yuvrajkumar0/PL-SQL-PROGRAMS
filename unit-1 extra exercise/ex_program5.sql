SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    c NUMBER := &c;
BEGIN
    IF a >= b AND a >= c THEN
        DBMS_OUTPUT.PUT_LINE('Largest number = ' || a);
    ELSIF b >= a AND b >= c THEN
        DBMS_OUTPUT.PUT_LINE('Largest number = ' || b);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Largest number = ' || c);
    END IF;
END;
/
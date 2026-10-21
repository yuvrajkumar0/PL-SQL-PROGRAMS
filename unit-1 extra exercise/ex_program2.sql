SET SERVEROUTPUT ON;

DECLARE
    l NUMBER := &length;
    b NUMBER := &breadth;
    area NUMBER;
    perimeter NUMBER;
BEGIN
    area := l * b;
    perimeter := 2 * (l + b);

    DBMS_OUTPUT.PUT_LINE('Area = ' || area);
    DBMS_OUTPUT.PUT_LINE('Perimeter = ' || perimeter);
END;
/
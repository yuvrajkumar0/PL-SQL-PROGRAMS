SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION greater_num(
    a IN NUMBER,
    b IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    IF a >= b THEN
        RETURN a;
    ELSE
        RETURN b;
    END IF;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Greater Number = ' || greater_num(25, 40)
    );
END;
/
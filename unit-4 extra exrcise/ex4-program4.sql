SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE square_num(
    p_num IN OUT NUMBER
)
IS
BEGIN
    p_num := p_num * p_num;
END;
/

DECLARE
    v_num NUMBER := 5;
BEGIN
    square_num(v_num);

    DBMS_OUTPUT.PUT_LINE('Square = ' || v_num);
END;
/
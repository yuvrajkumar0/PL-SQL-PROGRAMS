SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER;
BEGIN
    v_num := 'ABC';

    DBMS_OUTPUT.PUT_LINE('Value: ' || v_num);

EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Invalid value assigned to numeric variable.'
        );
END;
/
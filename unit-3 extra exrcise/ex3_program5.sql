SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    result NUMBER;
BEGIN
    result := a / b;

    DBMS_OUTPUT.PUT_LINE('Result: ' || result);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
        DBMS_OUTPUT.PUT_LINE('Error Code: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error Message: ' || SQLERRM);
END;
/
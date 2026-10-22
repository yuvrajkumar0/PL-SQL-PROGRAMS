SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    result NUMBER;
BEGIN
    result := a / b;

EXCEPTION
    WHEN OTHERS THEN
        INSERT INTO ERROR_LOG
        VALUES (SQLCODE, SQLERRM, SYSDATE);

        DBMS_OUTPUT.PUT_LINE('Error logged successfully.');
        DBMS_OUTPUT.PUT_LINE('Error Code: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error Message: ' || SQLERRM);

        COMMIT;
END;
/
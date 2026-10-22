SET SERVEROUTPUT ON;

BEGIN
    INSERT INTO EMP (EMPNO, ENAME, JOB, SAL)
    VALUES (7369, 'TEST', 'CLERK', 2000);

    DBMS_OUTPUT.PUT_LINE('Employee inserted successfully.');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Duplicate employee ID already exists.'
        );
END;
/
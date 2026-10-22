SET SERVEROUTPUT ON;

DECLARE
    v_name EMP.ENAME%TYPE;
BEGIN
    SELECT ENAME
    INTO v_name
    FROM EMP
    WHERE DEPTNO = 10;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: More than one employee found.'
        );

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found.');

END;
/
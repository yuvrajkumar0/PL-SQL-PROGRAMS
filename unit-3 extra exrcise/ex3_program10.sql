SET SERVEROUTPUT ON;

DECLARE
    v_name EMP.ENAME%TYPE;
    v_result NUMBER;
    v_dept NUMBER := &deptno;
    v_divisor NUMBER := &divisor;
BEGIN
    SELECT ENAME
    INTO v_name
    FROM EMP
    WHERE DEPTNO = v_dept;

    v_result := 100 / v_divisor;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No employee found.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: More than one employee found.'
        );

    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Division by zero is not allowed.'
        );

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error occurred.');
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
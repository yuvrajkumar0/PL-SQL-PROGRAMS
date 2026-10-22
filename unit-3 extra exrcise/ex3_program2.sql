SET SERVEROUTPUT ON;

DECLARE
    v_id   NUMBER := &emp_id;
    v_name EMP.ENAME%TYPE;
BEGIN
    SELECT ENAME
    INTO v_name
    FROM EMP
    WHERE EMPNO = v_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');

END;
/
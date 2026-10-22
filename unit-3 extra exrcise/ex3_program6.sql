SET SERVEROUTPUT ON;

DECLARE
    LOW_SALARY EXCEPTION;
    v_id EMP.EMPNO%TYPE := &emp_id;
    v_sal EMP.SAL%TYPE;
    v_limit NUMBER := 2000;
BEGIN
    SELECT SAL
    INTO v_sal
    FROM EMP
    WHERE EMPNO = v_id;

    IF v_sal < v_limit THEN
        RAISE LOW_SALARY;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is acceptable.');
    END IF;

EXCEPTION
    WHEN LOW_SALARY THEN
        DBMS_OUTPUT.PUT_LINE('Error: Salary is too low.');

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');
END;
/
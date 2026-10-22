SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE get_salary(
    p_emp_id IN NUMBER,
    p_salary OUT NUMBER
)
IS
BEGIN
    SELECT SAL
    INTO p_salary
    FROM EMP
    WHERE EMPNO = p_emp_id;
END;
/

DECLARE
    v_salary NUMBER;
BEGIN
    get_salary(7369, v_salary);

    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/
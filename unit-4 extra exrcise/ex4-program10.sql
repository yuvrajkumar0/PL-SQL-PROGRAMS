SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION gross_salary(
    p_emp_id IN NUMBER
)
RETURN NUMBER
IS
    v_gross NUMBER;
BEGIN
    SELECT SAL + NVL(COMM, 0)
    INTO v_gross
    FROM EMP
    WHERE EMPNO = p_emp_id;

    RETURN v_gross;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/

DECLARE
    v_salary NUMBER;
BEGIN
    v_salary := gross_salary(7369);

    IF v_salary IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Gross Salary = ' || v_salary
        );
    END IF;
END;
/
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE increase_salary(
    p_emp_id IN NUMBER,
    p_percent IN NUMBER
)
IS
BEGIN
    IF p_percent < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001, 'Percentage cannot be negative.'
        );
    END IF;

    UPDATE EMP
    SET SAL = SAL + (SAL * p_percent / 100)
    WHERE EMPNO = p_emp_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
    END IF;
END;
/

BEGIN
    increase_salary(7369, 10);
    COMMIT;
END;
/
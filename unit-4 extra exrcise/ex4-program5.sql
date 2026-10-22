SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE count_emp(
    p_deptno IN NUMBER,
    p_count OUT NUMBER
)
IS
BEGIN
    SELECT COUNT(*)
    INTO p_count
    FROM EMP
    WHERE DEPTNO = p_deptno;
END;
/

DECLARE
    v_count NUMBER;
BEGIN
    count_emp(10, v_count);

    DBMS_OUTPUT.PUT_LINE(
        'Total Employees = ' || v_count
    );
END;
/
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE display_emp(
    p_emp_id IN NUMBER
)
IS
    v_name EMP.ENAME%TYPE;
    v_job  EMP.JOB%TYPE;
    v_sal  EMP.SAL%TYPE;
    v_dept EMP.DEPTNO%TYPE;
BEGIN
    SELECT ENAME, JOB, SAL, DEPTNO
    INTO v_name, v_job, v_sal, v_dept
    FROM EMP
    WHERE EMPNO = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || p_emp_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Job: ' || v_job);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_sal);
    DBMS_OUTPUT.PUT_LINE('Department: ' || v_dept);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/

BEGIN
    display_emp(7369);
END;
/
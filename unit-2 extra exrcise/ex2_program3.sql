SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS
        SELECT empno, ename FROM emp;

    v_empno emp.empno%TYPE;
    v_name  emp.ename%TYPE;

BEGIN
    OPEN c_emp;

    LOOP
        FETCH c_emp INTO v_empno, v_name;
        EXIT WHEN c_emp%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Employee: ' || v_name
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total employees processed: ' || c_emp%ROWCOUNT
    );

    CLOSE c_emp;
END;
/
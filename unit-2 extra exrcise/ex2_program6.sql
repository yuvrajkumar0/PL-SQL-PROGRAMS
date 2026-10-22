SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS
        SELECT empno, ename, sal
        FROM emp
        ORDER BY sal ASC, empno ASC
        FETCH FIRST 5 ROWS ONLY;

    v_empno emp.empno%TYPE;
    v_name  emp.ename%TYPE;
    v_sal   emp.sal%TYPE;

BEGIN
    OPEN c_emp;

    LOOP
        FETCH c_emp INTO v_empno, v_name, v_sal;
        EXIT WHEN c_emp%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_empno || ' ' || v_name || ' Salary: ' || v_sal
        );
    END LOOP;

    CLOSE c_emp;
END;
/
SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS
        SELECT ename, sal FROM emp;

    v_name emp.ename%TYPE;
    v_sal  emp.sal%TYPE;

BEGIN
    OPEN c_emp;

    LOOP
        FETCH c_emp INTO v_name, v_sal;
        EXIT WHEN c_emp%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || v_name || ' Salary: ' || v_sal
        );
    END LOOP;

    CLOSE c_emp;
END;
/
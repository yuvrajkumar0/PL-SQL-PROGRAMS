SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_dept IS
        SELECT DISTINCT deptno
        FROM emp
        WHERE deptno IS NOT NULL
        ORDER BY deptno;

    CURSOR c_emp(p_dept NUMBER) IS
        SELECT ename, sal
        FROM emp
        WHERE deptno = p_dept;

    v_count NUMBER;

BEGIN
    FOR d IN c_dept LOOP
        SELECT COUNT(*)
        INTO v_count
        FROM emp
        WHERE deptno = d.deptno;

        DBMS_OUTPUT.PUT_LINE(
            'Department: ' || d.deptno ||
            ' Employee Count: ' || v_count
        );

        FOR e IN c_emp(d.deptno) LOOP
            DBMS_OUTPUT.PUT_LINE(
                '  Name: ' || e.ename ||
                ' Salary: ' || e.sal
            );
        END LOOP;
    END LOOP;
END;
/
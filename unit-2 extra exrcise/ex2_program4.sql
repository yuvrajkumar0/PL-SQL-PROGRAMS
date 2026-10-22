SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS
        SELECT empno, ename, sal
        FROM emp
        WHERE deptno = &deptno
        FOR UPDATE OF sal;

BEGIN
    FOR rec IN c_emp LOOP
        UPDATE emp
        SET sal = sal * 1.10
        WHERE CURRENT OF c_emp;

        DBMS_OUTPUT.PUT_LINE(
            rec.ename || ' Old Salary: ' || rec.sal ||
            ' New Salary: ' || (rec.sal * 1.10)
        );
    END LOOP;

    COMMIT;
END;
/
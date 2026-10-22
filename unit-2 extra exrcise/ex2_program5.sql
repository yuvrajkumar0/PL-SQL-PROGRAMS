SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT ename, deptno, sal
        FROM emp
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || rec.ename ||
            ' Department: ' || rec.deptno ||
            ' Salary: ' || rec.sal
        );
    END LOOP;
END;
/
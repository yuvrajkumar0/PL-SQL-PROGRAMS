SET SERVEROUTPUT ON;

DECLARE
    v_char CHAR(1) := UPPER('&start_char');

BEGIN
    FOR rec IN (
        SELECT empno, ename, sal
        FROM emp
        WHERE UPPER(ename) LIKE v_char || '%'
        ORDER BY ename
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || rec.empno ||
            ' Name: ' || rec.ename ||
            ' Salary: ' || rec.sal
        );
    END LOOP;
END;
/
SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp(p_dept NUMBER) IS
        SELECT empno, ename, sal
        FROM emp
        WHERE deptno = p_dept;

    v_dept NUMBER := &deptno;

BEGIN
    FOR rec IN c_emp(v_dept) LOOP
        DBMS_OUTPUT.PUT_LINE(
            rec.empno || ' ' ||
            rec.ename || ' ' ||
            rec.sal
        );
    END LOOP;
END;
/
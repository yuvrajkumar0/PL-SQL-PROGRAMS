SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp(p_dept NUMBER) IS
        SELECT *
        FROM emp
        WHERE deptno = p_dept;

    v_dept NUMBER := &deptno;

BEGIN
    FOR rec IN c_emp(v_dept) LOOP
        INSERT INTO emp_backup
        VALUES rec;

        DBMS_OUTPUT.PUT_LINE(
            'Copied employee: ' || rec.ename
        );
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Backup completed successfully.');
END;
/
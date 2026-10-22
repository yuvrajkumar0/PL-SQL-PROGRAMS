SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS
        SELECT ename, sal, comm
        FROM emp;

BEGIN
    FOR rec IN c_emp LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || rec.ename ||
            ' Basic Salary: ' || rec.sal ||
            ' Gross Salary: ' ||
            (rec.sal + NVL(rec.comm, 0))
        );
    END LOOP;
END;
/
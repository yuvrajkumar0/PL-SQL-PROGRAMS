SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION annual_salary(
    p_monthly IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_monthly * 12;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary = ' || annual_salary(25000)
    );
END;
/
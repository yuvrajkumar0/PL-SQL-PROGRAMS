SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION get_grade(
    p_percentage IN NUMBER
)
RETURN VARCHAR2
IS
BEGIN
    IF p_percentage < 0 OR p_percentage > 100 THEN
        RETURN 'Invalid Percentage';
    ELSIF p_percentage >= 90 THEN
        RETURN 'A+';
    ELSIF p_percentage >= 80 THEN
        RETURN 'A';
    ELSIF p_percentage >= 70 THEN
        RETURN 'B';
    ELSIF p_percentage >= 60 THEN
        RETURN 'C';
    ELSIF p_percentage >= 50 THEN
        RETURN 'D';
    ELSE
        RETURN 'F';
    END IF;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Grade = ' || get_grade(85)
    );
END;
/
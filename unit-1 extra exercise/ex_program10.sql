SET SERVEROUTPUT ON;

DECLARE
    sid NUMBER := &student_id;
    sname VARCHAR2(50);
    m1 NUMBER;
    m2 NUMBER;
    m3 NUMBER;
    total NUMBER;
    percentage NUMBER;

BEGIN
    SELECT student_name, marks1, marks2, marks3
    INTO sname, m1, m2, m3
    FROM STUDENT
    WHERE student_id = sid;

    total := m1 + m2 + m3;
    percentage := (total / 300) * 100;

    DBMS_OUTPUT.PUT_LINE('Student ID: ' || sid);
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || sname);
    DBMS_OUTPUT.PUT_LINE('Total Marks: ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || ROUND(percentage, 2) || '%');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found.');
END;
/
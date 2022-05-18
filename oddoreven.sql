SET SERVEROUTPUT ON
DECLARE

n number;

BEGIN

n:=&number;

IF MOD(n, 2) = 0 THEN
	dbms_output.put_line(n || ' is even');
ELSE
	dbms_output.put_line(n || ' is odd');
END IF;

END;
/
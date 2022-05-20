SET SERVEROUTPUT ON
DECLARE
	n number;
	m number;
PROCEDURE findSquare(x IN number, y OUT number) IS
BEGIN
	y:=x*x;
END;

BEGIN
	n:=&n;
	findSquare(n, m);
	dbms_output.put_line('Square of ' || n || ': ' || m);
END;
/ 
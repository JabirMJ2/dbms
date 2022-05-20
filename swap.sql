SET SERVEROUTPUT ON

DECLARE
	a number;
	b number;
	temp number;
PROCEDURE swap(x IN OUT number, y IN OUT number) IS 

BEGIN
	temp:=x;
	x:=y;
	y:=temp;
END;

BEGIN
	a:=&a;
	b:=&b;
	dbms_output.put_line('Before Swap: ');
	dbms_output.put_line('a:'||a||' b:'||b);
	swap(a,b);
	dbms_output.put_line('After Swap: ');
	dbms_output.put_line('a:'||a||' b:'||b);
END;
/
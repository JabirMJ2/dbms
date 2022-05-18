SET SERVEROUTPUT ON

DECLARE

n number;
f number;
i number;


BEGIN

f:=1;
n:=&n;
dbms_output.put_line('Factorial of the number:' || n);
FOR i IN 1..n LOOP
	f:=f*i;
END LOOP;
dbms_output.put_line('Factorial = ' || f);

END;
/
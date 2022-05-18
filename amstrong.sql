SET SERVEROUTPUT ON
DECLARE

n number;
s number:=0;
r number;
len number;
m number;

BEGIN
n:=&n;
m:=n;
len:=length(to_char(n));

WHILE n>0
LOOP
	r:=mod(n, 10);
	s:=s + power(r, len);
	n:=trunc(n/10);
END LOOP;

IF m=s
THEN
	dbms_output.put_line('yes');
ELSE
	dbms_output.put_line('no');
END IF;

END;
/
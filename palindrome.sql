SET SERVEROUTPUT ON

DECLARE

n number;
rev number:=0;
m number;

BEGIN

n:=&n;
m:=n;


WHILE n>0 LOOP

rev:=(rev*10)+MOD(n, 10);
n:=floor(n/10);

END LOOP;

IF m=rev THEN
	dbms_output.put_line('Palindrome');
ELSE
	dbms_output.put_line('Not palindrome');
END IF;

END;
/
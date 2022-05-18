SET SERVEROUTPUT ON

DECLARE

n number;
rev number:=0;

BEGIN

n:=&n;

WHILE n>0 LOOP

rev:=(rev*10)+MOD(n, 10);
n:=floor(n/10);

END LOOP;

dbms_output.put_line(rev);

END;
/
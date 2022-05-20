DECLARE
	a number;
	b number;
	c number;
FUNCTION findMax(x IN number, y IN number)
RETURN number
IS 
	z number;
BEGIN
	IF x>y THEN
		z:=x;
	ELSE
		z:=y;
	END IF;
	RETURN z;
END;
BEGIN
	a:=&a;
	b:=&b;
	c:=findMax(a, b);
	dbms_output.put_line('Maximun of ('||a||', '||b||'): '||c);
END;
/
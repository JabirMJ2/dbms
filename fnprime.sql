DECLARE
	i number;
	j number;
	n number;
	result boolean;
	rem number;
FUNCTION checkPrime(x IN number)
RETURN boolean
IS 
	flag boolean;
BEGIN
	FOR i in 2..x/2 LOOP
		rem:=MOD(x,i);
		IF rem=0 THEN
			flag:=FALSE;
			RETURN flag;
		END IF;
	END LOOP;
	flag:=TRUE;
	RETURN flag;
END;

BEGIN
	n:=8;
	result:= checkPrime(n);
	IF result THEN
		dbms_output.put_line('Prime');
	ELSE
		dbms_output.put_line('Not Prime');
	END IF;
END;
/
	
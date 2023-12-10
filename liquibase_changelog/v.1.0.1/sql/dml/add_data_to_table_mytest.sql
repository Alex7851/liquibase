CREATE
	OR REPLACE FUNCTION insert_test_data2(mydigit_param integer, mydescription_param varchar)
	RETURNS VOID AS
$$
BEGIN
	INSERT INTO mytest2(mydigit, mydescription) VALUES (mydigit_param, mydescription_param);
END;
$$
LANGUAGE 'plpgsql' VOLATILE

COST 100;

SELECT insert_test_data2(15,'MY DESCRIPTION 1');
SELECT insert_test_data2(17,'MY DESCRIPTION 2');
SELECT insert_test_data2(19,'MY DESCRIPTION 3');
SELECT insert_test_data2(25,'MY DESCRIPTION 4');
SELECT insert_test_data2(35,'MY DESCRIPTION 5');
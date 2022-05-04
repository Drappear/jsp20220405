USE mydb2;

DELETE FROM Reply WHERE board_id = 8;
-- ROLLBACK;
DELETE FROM Board WHERE id = 8;
COMMIT;

SELECT * FROM Reply WHERE board_id = 8;
CREATE TRIGGER NewOrder AFTER INSERT ON orders
FOR EACH ROW
begin
    UPDATE orders
    SET o_orderdate = DATETIME('NOW')
    WHERE o_orderkey = NEW.o_orderkey;
end;

INSERT INTO orders
SELECT *
FROM orders
WHERE o_orderdate BETWEEN '1995-10-01' AND '1995-10-31';

SELECT *
FROM orders
WHERE o_orderdate LIKE '%2016-12-10%';
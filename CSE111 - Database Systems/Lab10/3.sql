CREATE TRIGGER DeletePriority AFTER DELETE ON lineitem
for each row
begin
    UPDATE orders
    SET o_orderpriority = 'HIGH'
    WHERE o_orderkey = old.l_orderkey;
end;

CREATE TRIGGER InsertPriority AFTER INSERT ON lineitem
for each row
begin
    UPDATE orders
    SET o_orderpriority = 'HIGH'
    WHERE o_orderkey = new.l_orderkey;
end;

DELETE FROM lineitem
WHERE l_orderkey IN
(SELECT l_orderkey
FROM lineitem, orders
WHERE l_orderkey = o_orderkey and o_orderdate BETWEEN '1996-10-01' and '1996-10-31'
GROUP BY l_orderkey);

select count(o_orderkey)
from orders
where o_orderpriority = 'HIGH' and o_orderdate BETWEEN '1996-09-01' AND '1996-11-30';
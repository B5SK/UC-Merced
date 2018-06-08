CREATE TRIGGER PartDelete AFTER DELETE ON part
for each row
begin
    DELETE FROM partsupp
    WHERE ps_partkey = old.p_partkey;

    DELETE FROM lineitem
    WHERE l_partkey = old.p_partkey;
end;

DELETE FROM part
WHERE p_partkey IN
(SELECT p_partkey
 FROM part, partsupp, supplier, nation
 WHERE p_partkey = ps_partkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_name = 'CHINA');
 
DELETE FROM part
WHERE p_partkey IN
(SELECT p_partkey
 FROM part, partsupp, supplier, nation
 WHERE p_partkey = ps_partkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_name = 'CANADA');
 
select avg(ps_supplycost), n_name
from partsupp, supplier, nation, region
where ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'ASIA'
group by n_name;
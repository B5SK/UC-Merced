select count(*)
from(select ps_availqty*ps_supplycost as total
from region, nation, supplier, partsupp
where r_regionkey = n_regionkey and n_nationkey = s_nationkey and r_name = 'EUROPE' and ps_suppkey = s_suppkey
), (select avg(ps_availqty*ps_supplycost) as average
from region, nation, supplier, partsupp
where r_regionkey = n_regionkey and n_nationkey = s_nationkey and r_name = 'EUROPE' and ps_suppkey = s_suppkey)
where total > average*310/100
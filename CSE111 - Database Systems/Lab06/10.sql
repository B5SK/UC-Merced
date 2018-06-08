select r_name
from(select *
from 
(select *
from region, nation, customer, orders, lineitem
where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderkey = l_orderkey
group by r_name)
,
(select *
from region, nation, supplier, partsupp, lineitem
where r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_suppkey = l_suppkey
group by r_name)
order by l_extendedprice asc)
limit 1
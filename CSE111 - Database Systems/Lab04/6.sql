select p_mfgr, count(distinct p_name), o_orderpriority
from region, nation, supplier, part, partsupp, lineitem, orders
where r_name = 'AMERICA' and r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_partkey = p_partkey and l_partkey = p_partkey and l_orderkey = o_orderkey and ps_suppkey = l_suppkey
group by p_mfgr, o_orderpriority
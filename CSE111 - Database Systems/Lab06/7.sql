select count(distinct s_name)
from
(select distinct s_name
from nation, customer, orders, lineitem, partsupp, supplier
where n_nationkey = c_nationkey and n_name = "UNITED STATES" and c_custkey = o_custkey and l_orderkey = o_orderkey and l_suppkey = ps_suppkey and s_suppkey = ps_suppkey)
natural join
(select distinct s_name
from nation, customer, orders, lineitem, partsupp, supplier
where n_nationkey = c_nationkey and n_name = "FRANCE" and c_custkey = o_custkey and l_orderkey = o_orderkey and l_suppkey = ps_suppkey and s_suppkey = ps_suppkey)
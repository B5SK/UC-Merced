select r_name, count(s_suppkey)
from region, nation, orders, supplier, partsupp, lineitem
where o_orderstatus = 'F' and r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = ps_suppkey = l_suppkey and l_orderkey = o_orderkey and o_orderdate >= '1995-01-01' and o_orderdate <= '1995-12-31'
group by r_name
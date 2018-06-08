select r_name, count(s_suppkey)
from region, nation, orders, supplier, lineitem
where o_orderstatus = 'F' and r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_orderdate >= '1995-01-01' and o_orderdate <= '1995-12-31'
group by r_name;

select r_name, count(s_suppkey)
from Q2, Q5, lineitem
where o_orderstatus = 'F' and s_suppkey = l_suppkey and l_orderkey = o_orderkey and o_orderyear = '1995'
group by r_name
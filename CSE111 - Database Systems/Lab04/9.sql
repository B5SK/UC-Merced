select avg(T)
from (select count(distinct o_clerk) as T
from nation, supplier, orders, lineitem
where n_name = 'CANADA' and n_nationkey = s_nationkey and s_suppkey = l_suppkey and l_orderkey = o_orderkey
group by s_name)
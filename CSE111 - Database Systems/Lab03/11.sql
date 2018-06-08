select count(distinct c_name)
from customer natural join lineitem natural join orders
where c_custkey = o_custkey AND o_orderkey = l_orderkey
having count(l_discount >= 0.05) >= 2
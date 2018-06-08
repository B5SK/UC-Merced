select count(o_orderkey)
from region, nation, customer, orders
where r_regionkey = n_regionkey and n_nationkey = c_nationkey and r_name = 'ASIA' and c_custkey = o_custkey
select distinct c_name, avg(o_totalprice)
from customer, nation, orders
where c_nationkey = n_nationkey and c_custkey = o_custkey and n_name = 'BRAZIL'
group by c_name
select distinct n_name
from customer natural join nation natural join orders
where o_orderdate > '1995-03-00' AND o_orderdate < '1995-03-32' AND o_custkey = c_custkey AND n_nationkey = c_nationkey
order by n_name asc
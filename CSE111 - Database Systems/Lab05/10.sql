select count(distinct c_name), n_name
from nation, customer
LEFT JOIN orders ON o_custkey = c_custkey
where n_nationkey = c_nationkey and c_acctbal < (select avg(c_acctbal) from customer) and o_orderkey IS NULL
group by n_name

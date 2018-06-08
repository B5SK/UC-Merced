select distinct n_name, count(o_orderkey), o_orderstatus
from region, nation, customer, orders
where r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey 
group by n_name, o_orderstatus;

select distinct n_name, count(o_orderkey), o_orderstatus
from Q1, Q5
where r_name = 'EUROPE' AND c_custkey = o_custkey
group by n_name, o_orderstatus;
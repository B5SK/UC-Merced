DROP VIEW IF EXISTS Q5;

create view Q5 as
select o_orderkey, o_custkey, o_orderstatus, o_totalprice, strftime('%Y', o_orderdate) as o_orderyear, o_orderpriority, o_clerk, o_shippriority, o_comment
from orders;

select distinct c_name, count(o_orderkey)
from nation, customer, orders
where n_name = 'CHINA' and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderdate >='1996-01-01' and o_orderdate <='1996-12-31'
group by c_name;

select distinct c_name, count(o_orderkey)
from Q1, Q5
where c_custkey = o_custkey and o_orderyear = '1996' and n_name = 'CHINA'
GROUP BY c_name;
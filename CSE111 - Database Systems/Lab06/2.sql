select count(*)
from
(select count(o_orderkey) as Number
from customer, orders
where c_custkey = o_custkey and o_orderdate >= "1995-08-01" and o_orderdate <= "1995-08-31"
group by c_name
)
where Number = 1

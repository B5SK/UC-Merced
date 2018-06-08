select min(l_discount)
from(select *
from orders, lineitem
where o_orderkey = l_orderkey and o_orderdate >= '1993-08-01' and o_orderdate <= '1993-08-31'), (select avg(l_discount) as average
from orders, lineitem
where o_orderkey = l_orderkey and o_orderdate >= '1993-08-01' and o_orderdate <= '1993-08-31')
where average < l_discount

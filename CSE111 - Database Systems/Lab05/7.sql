select o_orderpriority, count(o_orderkey)
from orders, lineitem
where o_orderkey = l_orderkey and o_orderdate >= '1996-01-01' and o_orderdate <= '1996-12-31' and l_receiptdate < l_commitdate
group by o_orderpriority
order by o_orderpriority desc
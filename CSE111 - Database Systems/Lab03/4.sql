select avg(Time)
from (select julianday(l_receiptdate) - julianday(o_orderdate) as Time
        from orders natural join lineitem
         where o_orderkey = l_orderkey)

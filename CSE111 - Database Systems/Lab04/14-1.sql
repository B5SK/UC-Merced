select distinct Customer, Supplier, sum(o_totalprice)
from (select *, n_name as Customer
        from region, nation, customer, orders
        where r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey
        ),
(select *, n_name as Supplier
 from region, nation, supplier, lineitem
 where r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = l_suppkey
 )
where l_orderkey = o_orderkey
group by Customer, Supplier
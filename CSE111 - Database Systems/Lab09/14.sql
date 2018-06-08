select distinct Customer, Supplier, sum(T)
from (select distinct Customer, Supplier, sum(o_totalprice) as T
from (select *, n_name as Customer
        from region, nation, customer, orders
        where r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey
        ),
(select *, n_name as Supplier
 from region, nation, supplier, lineitem
 where r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = l_suppkey
 )
where l_orderkey = o_orderkey
group by Customer, Supplier)
where Customer <= Supplier
group by Customer, Supplier;

select distinct Customer, Supplier, sum(T)
from (
select distinct Customer, Supplier, sum(o_totalprice) as T
    from(select *, n_name as Customer
            from Q1, orders
            where r_name = 'EUROPE' and c_custkey = o_custkey),
        (select *, n_name as Supplier
            from Q2, lineitem
            where r_name = 'EUROPE' and s_suppkey = l_suppkey)
where l_orderkey = o_orderkey
group by Customer, Supplier)
where Customer <= Supplier
group by Customer, Supplier
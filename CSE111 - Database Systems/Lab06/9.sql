select p_name, max(l_extendedprice)
from
(select p_name as ProductFromEurope
from(
select p_name, count(p_name) as Numb
from(
select p_name, s_name
from region, nation, supplier, partsupp, part
where r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_partkey = p_partkey and r_name = "EUROPE"
)
group by p_name
)
where Numb = 2)
,
(select *
from region, nation, supplier, partsupp, part, lineitem
where r_regionkey = n_regionkey and n_nationkey = s_nationkey and s_suppkey = ps_suppkey and p_partkey = ps_partkey and l_partkey = p_partkey and r_name = "ASIA"
group by p_name)
where ProductFromEurope = p_name
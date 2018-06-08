select n_name
from(
select n_name, sum(l_extendedprice) as T
from nation, supplier, partsupp, lineitem
where n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_suppkey = l_suppkey and l_shipdate >= "1996-01-01" and l_shipdate <= "1996-12-13"
group by n_name)
order by T desc
limit 1
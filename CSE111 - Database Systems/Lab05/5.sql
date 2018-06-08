select s_name, p_size
from(select distinct s_name, min(ps_supplycost), p_size
from part, partsupp, supplier, nation, region
where p_type LIKE '%STEEL%' and r_name = 'AFRICA' and p_partkey = ps_partkey and ps_suppkey = s_suppkey and n_nationkey = s_nationkey and n_regionkey = r_regionkey
group by p_size)
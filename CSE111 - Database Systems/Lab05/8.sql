select count(distinct s_name)
from supplier, partsupp, part
where s_suppkey = ps_suppkey and ps_partkey = p_partkey and p_type LIKE '%SMALL BURNISHED%' and p_size not in (3, 13, 26, 36, 49)
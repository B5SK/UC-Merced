select s_name, count(p_size)
from nation, supplier, partsupp, part
where n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_partkey = p_partkey and n_name = 'CHINA' and p_size < 50
group by s_name;

select s_name, count(p_size)
from Q2, partsupp, part
where s_suppkey = ps_suppkey and ps_partkey = p_partkey and n_name = 'CHINA' and p_size < 50
group by s_name
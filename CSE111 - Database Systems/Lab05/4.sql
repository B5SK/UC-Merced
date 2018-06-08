select count(distinct c_name), count(distinct s_name), n_name
from region, nation, customer, supplier
where r_regionkey = n_regionkey and n_nationkey = c_nationkey and n_nationkey = s_nationkey and r_name = 'EUROPE'
group by n_name
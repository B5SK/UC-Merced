select r_name, s_name
from region, nation, supplier
where r_regionkey = n_regionkey and n_nationkey = s_nationkey
group by r_name
having max(s_acctbal)
select count(*)
from(select distinct s_name
from supplier, partsupp
where s_suppkey = ps_suppkey
group by s_name
having count(ps_suppkey) >= 3)

select count(*)
from(select *
from partsupp
group by ps_partkey
having count(ps_suppkey) >= 2)


select n_name, MIN(s_acctbal)
from supplier natural join nation
where s_nationkey = n_nationkey
group by n_nationkey
having count(s_name) < 5
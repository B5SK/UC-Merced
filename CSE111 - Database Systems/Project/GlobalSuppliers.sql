/*What suppliers are capable of supplying globally?*/
select s_name
from supplier, nation
where s_nationkey = n_nationkey and n_name = 'GLOBAL'
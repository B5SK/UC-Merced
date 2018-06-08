select p_type, max(l_discount)
from lineitem, part
where l_partkey = p_partkey and p_type LIKE '%PROMO%'
group by p_type
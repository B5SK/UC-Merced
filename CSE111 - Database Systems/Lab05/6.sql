select p_mfgr
from(select p_mfgr, max(ps_availqty)
from part, partsupp, supplier
where s_suppkey = ps_suppkey and p_partkey = ps_partkey and s_name = 'Supplier#000000052')

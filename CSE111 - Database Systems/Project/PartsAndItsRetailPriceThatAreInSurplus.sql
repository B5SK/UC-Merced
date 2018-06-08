/*List the parts, parts' types, and their retail price that are in surplus of availibility(999 = surplus)*/
select p_name, p_type, ps_retailprice
from part, partsupp
where p_partid = ps_partid and ps_availibility = 999
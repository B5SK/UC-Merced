/*Find corporations that are both company and brand*/
select b_name
from company, brand
where c_name LIKE '%'||b_name||'%'
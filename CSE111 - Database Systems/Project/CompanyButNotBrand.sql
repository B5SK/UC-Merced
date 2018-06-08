/*Find corporations that are companies but not brands*/
select c_name
from company, brand
where b_compid = c_compid and c_name NOT LIKE '%'||b_name||'%'
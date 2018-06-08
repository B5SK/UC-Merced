/*What companies are in United States?*/
select c_name
from company, nation
where c_nationkey = n_nationkey and n_name = 'UNITED STATES'
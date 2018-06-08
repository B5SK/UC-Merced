/*What manufactureres are in nation Taiwan?*/
select m_name
from nation, manufacturer
where n_nationkey = m_nationkey and n_name = 'TAIWAN'
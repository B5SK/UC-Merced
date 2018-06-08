/*List Some AMD Products and their types*/
select p_name, p_type
from part, brand
where p_brandid = b_brandid and b_name LIKE '%AMD%'
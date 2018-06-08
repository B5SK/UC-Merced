/*When was the 6th Generation of Intel Processors released?*/
select a_generationdate
from architecture, brand, part
where p_brandid = b_brandid and b_brandid = a_brandid and p_type = 'CPU' and b_brandid = "1000000001" and a_generationid = "6th Generation"
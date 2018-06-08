/*What CPU(s) is/are from the 6th Generation of Intel Processors?*/
select p_name
from part, brand, architecture
where p_brandid = b_brandid and b_brandid = a_brandid and b_brandid = "1000000001" and a_generationid = "6th Generation"
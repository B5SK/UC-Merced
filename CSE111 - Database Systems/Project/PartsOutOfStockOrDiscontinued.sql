/*What are parts and part types that are out of stock or discontinued?(ps_availibility = 0) and what year were they released?(a_genreationdate)*/
select p_name, p_type, a_generationdate
from part, partsupp, architecture
where p_partid = ps_partid and ps_availibility = 0 and a_partid = p_partid
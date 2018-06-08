DROP VIEW IF EXISTS Q10;

create view Q10 as
select p_type, max(l_discount) as MaxDiscount
from lineitem, part
where l_partkey = p_partkey
group by p_type;

select p_type, max(l_discount)
from lineitem, part
where l_partkey = p_partkey and p_type LIKE '%PROMO%'
group by p_type;

select p_type, MaxDiscount
from Q10
where p_type LIKE '%PROMO%'
group by p_type;
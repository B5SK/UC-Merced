select r_name
from(
select min(Number), r_name
from(
select r_name, count(c_name) as Number
from region, nation, customer
where r_regionkey = n_regionkey and n_nationkey = c_nationkey
group by r_name))
select *
from(select One
from(select (l_extendedprice*(1-l_discount)) as One
from lineitem
where l_shipdate > '1994-09-02')
order by One asc
LIMIT 5)
order by One desc
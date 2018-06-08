select n_name, min(s_acctbal) as MIN, max(s_acctbal) as MAX, avg(s_acctbal) as AVG
from nation, supplier
where n_nationkey = s_nationkey
group by n_name;

select n_name, min(s_acctbal) as MIN, max(s_acctbal) as MAX, avg(s_acctbal) as AVG
from Q2
group by n_name
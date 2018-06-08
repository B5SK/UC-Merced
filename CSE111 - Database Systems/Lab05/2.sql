select count(s_name), r_name
from region, nation, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'AFRICA' and s_acctbal < (select avg(s_acctbal) from supplier, region, nation where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'AFRICA')
UNION ALL 
select count(s_name), r_name
from region, nation, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'AMERICA' and s_acctbal < (select avg(s_acctbal) from supplier, region, nation where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'AMERICA')
UNION ALL
select count(s_name), r_name
from region, nation, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'ASIA' and s_acctbal < (select avg(s_acctbal) from supplier, region, nation where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'ASIA')
UNION ALL
select count(s_name), r_name
from region, nation, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' and s_acctbal < (select avg(s_acctbal) from supplier, region, nation where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE')
UNION ALL
select count(s_name), r_name
from region, nation, supplier
where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'MIDDLE EAST' and s_acctbal < (select avg(s_acctbal) from supplier, region, nation where s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'MIDDLE EAST')
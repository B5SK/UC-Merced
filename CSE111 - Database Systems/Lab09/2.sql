DROP VIEW IF EXISTS Q2;

CREATE VIEW Q2 AS
select s_suppkey, s_name, s_address, s_phone, s_acctbal, s_comment, n_name, r_name
from supplier, nation, region
where s_nationkey = n_nationkey and n_regionkey = r_regionkey;

select n_name, count(s_name)
from nation, supplier
where s_nationkey = n_nationkey
group by n_name;

select n_name, count(s_name)
from Q2
group by n_name;
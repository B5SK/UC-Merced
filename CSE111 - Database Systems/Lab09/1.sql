DROP VIEW IF EXISTS Q1;

create view Q1 as
    select c_custkey, c_name, c_address, c_phone, c_acctbal, c_mktsegment, c_comment, n_name, r_name
      from customer, nation, region
     where c_nationkey = n_nationkey and n_regionkey = r_regionkey;
 
select distinct c_name, avg(o_totalprice)
from customer, nation, orders
where c_nationkey = n_nationkey and c_custkey = o_custkey and n_name = 'BRAZIL'
group by c_name;

select distinct c_name, avg(o_totalprice)
from Q1, orders
where n_name = 'BRAZIL' and c_custkey = o_custkey
group by c_name;
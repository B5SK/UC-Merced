DROP VIEW IF EXISTS Q151;
DROP VIEW IF EXISTS Q152;

CREATE VIEW Q151 AS
SELECT c_custkey, c_name, c_address, c_phone, c_acctbal, c_mktsegment, c_comment
FROM customer
where c_acctbal > 0;

CREATE VIEW Q152 AS
SELECT s_suppkey, s_name, s_address, s_phone, s_acctbal, s_comment
FROM supplier
WHERE s_acctbal > 0;

select count(distinct o_orderkey)
from (select *
        from customer, orders
        where c_custkey = o_custkey and c_acctbal > 0),
(select *
    from supplier, lineitem
    where s_suppkey = l_suppkey and s_acctbal > 0)
where l_orderkey = o_orderkey;

select count(distinct o_orderkey)
from
(select *
    from Q151, orders
    where c_custkey = o_custkey),
(select *
    from Q152, lineitem
    where s_suppkey = l_suppkey)
where l_orderkey = o_orderkey;
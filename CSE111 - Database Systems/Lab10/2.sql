CREATE TRIGGER NegBal AFTER UPDATE ON customer
for each row
when(new.c_acctbal < 0)
begin
    UPDATE customer
    SET c_comment = 'Negative balance!!! Add money now!'
    where c_custkey = new.c_custkey;
end;

CREATE TRIGGER PosBal AFTER UPDATE ON customer
for each row
WHEN(new.c_acctbal > 0)
begin
    UPDATE customer
    SET c_comment = 'Positive Balance. You are good to go'
    WHERE c_custkey = new.c_custkey;
end;

PRAGMA recursive_triggers = false;

UPDATE customer
SET c_acctbal = -200
WHERE c_nationkey IN (select n_nationkey from nation, region where n_regionkey = r_regionkey and r_name = 'ASIA');

select *
from customer, nation
where c_nationkey = n_nationkey and n_name = 'CHINA' and c_acctbal < 0;

UPDATE customer
SET c_acctbal = 100
WHERE c_nationkey IN (select n_nationkey from nation where n_name = 'CHINA');

SELECT count(c_name)
from customer, nation, region
where c_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'ASIA' and c_acctbal < 0;
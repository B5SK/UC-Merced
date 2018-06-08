SELECT p_name,
       s_name,
       CASE WHEN ps_availibility = 0 THEN 'no' ELSE 'yes' END instock
  FROM part,
       partsupp,
       supplier
 WHERE p_partid = ps_partid AND 
       ps_suppid = s_suppid;

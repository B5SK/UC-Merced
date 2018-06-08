select avg(data)
from (SELECT sum( l_quantity ) as data
      FROM lineitem
     WHERE l_shipdate >= "1995-01-01" 
           AND
           l_shipdate <= "1995-03-31" 
UNION

SELECT sum( l_quantity ) as data
      FROM lineitem
     WHERE l_shipdate >= "1995-04-01" 
           AND
           l_shipdate <= "1995-06-31" 
UNION

SELECT sum( l_quantity ) as data
      FROM lineitem
     WHERE l_shipdate >= "1995-07-01" 
           AND
           l_shipdate <= "1995-09-31" 
UNION

SELECT sum( l_quantity ) as data
      FROM lineitem
     WHERE l_shipdate >= "1995-10-01" 
           AND
           l_shipdate <= "1995-12-31" )

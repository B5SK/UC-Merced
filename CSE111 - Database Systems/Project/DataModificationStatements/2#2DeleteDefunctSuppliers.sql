/*Delete Defunct Retailers/Suppliers:
TigerDirect
Circuit City
from Suppliers*/

Delete from supplier
where s_name = 'TigerDirect';

Delete from supplier
where s_name = 'Circuit City';
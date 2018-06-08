/*Insert Supplier BestBuy
Supplier ID: 5
Nation Key: 1
Supplier Net Value: 14.421 billion*/

Insert into supplier
values('BestBuy', 5, 1, 14421000000);

/*Insert Intel Core i7-6700k computer part into BestBuy partsupp
RetailPrice: 374.99
Availibility : 0
ps_manuid: -1 (Doesn't exist)
*/

Insert into partsupp
values((select p_partid from part where p_name = 'Intel Core i7-6700k'), 5, 374.99, 0, -1);
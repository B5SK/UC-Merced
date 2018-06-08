/*The DELL S2716DG Monitor is on 10% sale in Newegg for a few days*/
Update partsupp
set ps_retailprice = ps_retailprice - ps_retailprice*0.10
where ps_partid = (select p_partid from part where p_name = 'DELL S2716DG')
 and ps_suppid = (select s_suppid from supplier where s_name = 'Newegg')
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

public class Lab08 {

	public static void main(String[] args) {
		Connection conn = null;
		
		try{
			//Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:sqlite:TPCH.db");
			
			Statement stat = conn.createStatement();
			//ResultSet rs = null;
			String sql;
			
			java.util.Date Date1;// = new java.util.Date();
			java.util.Date Date2;
			long Time1, Time2, Elaspedtime;
			
			System.out.println("Query Execution Time is in Milliseconds");
			
//Customer_Index
			System.out.println();
			System.out.println("-Insert from Customer to Customer_Index-");
			
			sql =   "Insert into customer_index select * from customer";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
//Customer_NoIndex
			System.out.println();
			System.out.println("-Insert from Customer to Customer_NoIndex-");
			
			sql =   "Insert into customer_noindex select * from customer";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
//Supplier_index
			System.out.println();
			System.out.println("-Insert from Supplier to Supplier_Index-");
			
			sql =   "Insert into supplier_index select * from supplier";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			
//Supplier_NoIndex
			System.out.println();
			System.out.println("-Insert from Supplier to Supplier_NoIndex-");
			
			sql =   "Insert into supplier_noindex select * from supplier";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
//LineItem_Index
			System.out.println();
			System.out.println("-Insert from LineItem to LineItem_Index-");
			
			sql =   "Insert into lineitem_index select * from lineitem";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			
//Lineitem_NoIndex
			System.out.println();
			System.out.println("-Insert from LineItem to LineItem_NoIndex-");
			
			sql =   "Insert into lineitem_noindex select * from lineitem";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
//Orders_index
			System.out.println();
			System.out.println("-Insert from Orders to Orders_Index-");
			
			sql =   "Insert into orders_index select * from orders";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			
//Orders_NoIndex
			System.out.println();
			System.out.println("-Insert from Orders to Orders_NoIndex-");
			
			sql =   "Insert into orders_noindex select * from orders";

			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//Create Indexes
			
	//Customer_nation_index
			System.out.println();
			System.out.println("Create Customer_nation_Index");
			sql = "Create Index customer_nation_index ON customer_index " +
					"( c_nationkey )";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Lineitem_returnflag_index
			System.out.println();
			System.out.println("Create lineitem_returnflag_index");
			sql = "Create Index lineitem_returnflag_index ON lineitem_index " +
					"(l_returnflag )";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Supplier_balance_index
			System.out.println();
			System.out.println("Create supplier_balance_index");
			sql = "Create Index supplier_balance_index ON supplier_index " +
					"(s_acctbal)";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//5. Lab 3 queries
			
	//Query 1.sql
			System.out.println();
			System.out.println("Lab3: Query 1 with Index");
			
			sql = "select c_address, c_phone, c_acctbal " +
					" from customer_index " +
					" where c_name = 'Customer#000000127'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 2.sql
			System.out.println();
			System.out.println("Lab3: Query 2 with Index");
			
			sql = "select MAX(s_acctbal) from supplier_index ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 3.sql
			System.out.println();
			System.out.println("Lab3: Query 3 with Index");
			
			sql = "select l_orderkey, l_partkey, l_suppkey, l_linenumber, l_quantity, l_extendedprice, l_discount, l_tax, l_returnflag, l_linestatus, l_shipdate, l_commitdate, l_receiptdate, l_shipinstruct, l_shipmode, l_comment " +
					" from lineitem_index " +
					" where l_returnflag = 'N' AND l_shipdate = '1998-05-26'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 4.sql
			System.out.println();
			System.out.println("Lab3: Query 4 with Index");
			
			sql = "select avg(Time) " +
					"from (select julianday(l_receiptdate) - julianday(o_orderdate) as Time" +
							" from orders_index natural join lineitem_index " +
							" where o_orderkey = l_orderkey) ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 5.sql
			System.out.println();
			System.out.println("Lab3: Query 5 with Index");
			
			sql = "select MIN(c_acctbal) as MIN, MAX(c_acctbal) as MAX, AVG(c_acctbal) as AVG, SUM(c_acctbal) as SUM " +
					" from customer_index " +
					" group by c_mktsegment";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 6.sql
			System.out.println();
			System.out.println("Lab3: Query 6 with Index");
			
			sql = "select distinct n_name " +
					"from customer_index natural join nation natural join orders_index " +
					" where o_orderdate > '1995-03-00' AND o_orderdate < '1995-03-32' AND o_custkey = c_custkey AND n_nationkey = c_nationkey " +
					" order by n_name asc";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 7.sql
			System.out.println();
			System.out.println("Lab3: Query 7 with Index");
			
			sql = "select distinct l_receiptdate as DeliveryDate, count(l_linenumber) as Total " +
					"from customer_index natural join lineitem_index natural join orders_index "+
					"where c_custkey = o_custkey AND c_name = 'Customer#000000106' AND l_orderkey = o_orderkey "+
					"group by l_receiptdate";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 8.sql
			System.out.println();
			System.out.println("Lab3: Query 8 with Index");
			
			sql = "select s_name " +
					" from supplier_index natural join nation natural join region " +
					" where r_regionkey = n_regionkey AND n_nationkey = s_nationkey AND r_name = 'ASIA' AND s_acctbal < 10000 " +
					"order by s_name asc";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 9.sql
			System.out.println();
			System.out.println("Lab3: Query 9 with Index");
			
			sql = "select n_name, MIN(s_acctbal) " +
					"from supplier_index natural join nation " +
					"where s_nationkey = n_nationkey " +
					"group by n_nationkey " +
					"having count(s_name) < 5";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 10.sql
			System.out.println();
			System.out.println("Lab3: Query 10 with Index");
			
			sql = "select SUM(o_totalprice) " +
					"from nation natural join region natural join customer_index natural join orders_index " +
					" where n_regionkey = r_regionkey AND c_nationkey = n_nationkey AND c_custkey = o_custkey AND r_name = 'EUROPE' AND o_orderdate >= '1996-01-01' AND o_orderdate <= '1996-12-31'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 11.sql
			System.out.println();
			System.out.println("Lab3: Query 11 with Index");
			
			sql = "select count(distinct c_name) " +
					"from customer_index natural join lineitem_index natural join orders_index " +
					"where c_custkey = o_custkey AND o_orderkey = l_orderkey group by c_name " +
					"having count(l_discount >= 0.05) >= 2";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 12.sql
			System.out.println();
			System.out.println("Lab3: Query 12 with Index");
			
			sql = "select * " +
					"from (select count(o_orderstatus) as Success, r_name as S " +
							"from region, nation, customer_index, orders_index " +
							"where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderstatus = \"" + "F" + "\" " +
							"group by r_name), (select count(o_orderstatus) as Total, r_name as T " +
									"from region, nation, customer_index, orders_index " +
									"where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey " +
									"group by r_name) " +
					"where S = T";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 13.sql
			System.out.println();
			System.out.println("Lab3: Query 13 with Index");
			
			sql = "select avg(c_acctbal) " +
					" from customer_index natural join nation natural join region " +
					" where r_regionkey = n_regionkey and n_nationkey = c_nationkey and r_name = 'AFRICA' and c_mktsegment = 'MACHINERY'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 14.sql
			System.out.println();
			System.out.println("Lab3: Query 14 with Index");
			
			sql = "select count(o_orderpriority) " +
					"from nation natural join customer_index natural join orders_index " +
					" where n_nationkey = c_nationkey and c_custkey = o_custkey and n_name = 'FRANCE' and o_orderpriority = '1-URGENT' and o_orderdate >= '1994-01-01' and o_orderdate <= '1996-12-31'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 15.sql
			System.out.println();
			System.out.println("Lab3: Query 15 with Index");
			
			sql = "select count(o_orderpriority), r_name " +
					"from orders_index, lineitem_index, supplier_index, nation, region " +
					"where o_orderkey = l_orderkey and l_suppkey = s_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and o_orderpriority = \"" + "1-URGENT" +"\"  " +
					"group by r_name";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();

//NoIndex
	//Query 1.sql
			System.out.println();
			System.out.println("Lab3: Query 1 with noIndex");
			
			sql = "select c_address, c_phone, c_acctbal " +
					" from customer_noindex " +
					" where c_name = 'Customer#000000127'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 2.sql
			System.out.println();
			System.out.println("Lab3: Query 2 with noIndex");
			
			sql = "select MAX(s_acctbal) from supplier_noindex ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 3.sql
			System.out.println();
			System.out.println("Lab3: Query 3 with noIndex");
			
			sql = "select l_orderkey, l_partkey, l_suppkey, l_linenumber, l_quantity, l_extendedprice, l_discount, l_tax, l_returnflag, l_linestatus, l_shipdate, l_commitdate, l_receiptdate, l_shipinstruct, l_shipmode, l_comment " +
					" from lineitem_noindex " +
					" where l_returnflag = 'N' AND l_shipdate = '1998-05-26'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 4.sql
			System.out.println();
			System.out.println("Lab3: Query 4 with noIndex");
			
			sql = "select avg(Time) " +
					"from (select julianday(l_receiptdate) - julianday(o_orderdate) as Time" +
							" from orders_noindex natural join lineitem_noindex " +
							" where o_orderkey = l_orderkey) ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 5.sql
			System.out.println();
			System.out.println("Lab3: Query 5 with noIndex");
			
			sql = "select MIN(c_acctbal) as MIN, MAX(c_acctbal) as MAX, AVG(c_acctbal) as AVG, SUM(c_acctbal) as SUM " +
					" from customer_noindex " +
					" group by c_mktsegment";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 6.sql
			System.out.println();
			System.out.println("Lab3: Query 6 with noIndex");
			
			sql = "select distinct n_name " +
					"from customer_noindex natural join nation natural join orders_noindex " +
					" where o_orderdate > '1995-03-00' AND o_orderdate < '1995-03-32' AND o_custkey = c_custkey AND n_nationkey = c_nationkey " +
					" order by n_name asc";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 7.sql
			System.out.println();
			System.out.println("Lab3: Query 7 with noIndex");
			
			sql = "select distinct l_receiptdate as DeliveryDate, count(l_linenumber) as Total " +
					"from customer_noindex natural join lineitem_noindex natural join orders_noindex "+
					"where c_custkey = o_custkey AND c_name = 'Customer#000000106' AND l_orderkey = o_orderkey "+
					"group by l_receiptdate";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 8.sql
			System.out.println();
			System.out.println("Lab3: Query 8 with noIndex");
			
			sql = "select s_name " +
					" from supplier_noindex natural join nation natural join region " +
					" where r_regionkey = n_regionkey AND n_nationkey = s_nationkey AND r_name = 'ASIA' AND s_acctbal < 10000 " +
					"order by s_name asc";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 9.sql
			System.out.println();
			System.out.println("Lab3: Query 9 with noIndex");
			
			sql = "select n_name, MIN(s_acctbal) " +
					"from supplier_noindex natural join nation " +
					"where s_nationkey = n_nationkey " +
					"group by n_nationkey " +
					"having count(s_name) < 5";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 10.sql
			System.out.println();
			System.out.println("Lab3: Query 10 with noIndex");
			
			sql = "select SUM(o_totalprice) " +
					"from nation natural join region natural join customer_noindex natural join orders_noindex " +
					" where n_regionkey = r_regionkey AND c_nationkey = n_nationkey AND c_custkey = o_custkey AND r_name = 'EUROPE' AND o_orderdate >= '1996-01-01' AND o_orderdate <= '1996-12-31'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 11.sql
			System.out.println();
			System.out.println("Lab3: Query 11 with noIndex");
			
			sql = "select count(distinct c_name) " +
					"from customer_noindex natural join lineitem_noindex natural join orders_noindex " +
					"where c_custkey = o_custkey AND o_orderkey = l_orderkey group by c_name " +
					"having count(l_discount >= 0.05) >= 2";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 12.sql
			System.out.println();
			System.out.println("Lab3: Query 12 with noIndex");
			
			sql = "select * " +
					"from (select count(o_orderstatus) as Success, r_name as S " +
							"from region, nation, customer_noindex, orders_noindex " +
							"where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderstatus = \"" + "F" + "\" " +
							"group by r_name), (select count(o_orderstatus) as Total, r_name as T " +
									"from region, nation, customer_noindex, orders_noindex " +
									"where r_regionkey = n_regionkey and n_nationkey = c_nationkey and c_custkey = o_custkey " +
									"group by r_name) " +
					"where S = T";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 13.sql
			System.out.println();
			System.out.println("Lab3: Query 13 with noIndex");
			
			sql = "select avg(c_acctbal) " +
					" from customer_noindex natural join nation natural join region " +
					" where r_regionkey = n_regionkey and n_nationkey = c_nationkey and r_name = 'AFRICA' and c_mktsegment = 'MACHINERY'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 14.sql
			System.out.println();
			System.out.println("Lab3: Query 14 with noIndex");
			
			sql = "select count(o_orderpriority) " +
					"from nation natural join customer_noindex natural join orders_noindex " +
					" where n_nationkey = c_nationkey and c_custkey = o_custkey and n_name = 'FRANCE' and o_orderpriority = '1-URGENT' and o_orderdate >= '1994-01-01' and o_orderdate <= '1996-12-31'";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
	//Query 15.sql
			System.out.println();
			System.out.println("Lab3: Query 15 with noIndex");
			
			sql = "select count(o_orderpriority), r_name " +
					"from orders_noindex, lineitem_noindex, supplier_noindex, nation, region " +
					"where o_orderkey = l_orderkey and l_suppkey = s_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and o_orderpriority = \"" + "1-URGENT" +"\"  " +
					"group by r_name";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//6. Update LineItem_index
			System.out.println();
			System.out.println("Update LineItem_Index");
			
			sql = "Update lineitem_index " +
					"set l_discount = l_discount + 0.10";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//Update LineItem_noIndex
			System.out.println();
			System.out.println("Update LineItem_noIndex");
			
			sql = "Update lineitem_noindex " +
					"set l_discount = l_discount + 0.10";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//Update S_acctbal with index
			System.out.println();
			System.out.println("Update Supplier_index");
			
			sql = "Update supplier_index " +
					"set s_acctbal = s_acctbal + 3000 ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
//Update s_acctbal with no index
			System.out.println();
			System.out.println("Update Supplier_noindex");
			
			sql = "Update supplier_noindex " +
					"set s_acctbal = s_acctbal + 3000 ";
			
			Date1 = new java.util.Date();
			stat.executeUpdate(sql);
			Date2 = new java.util.Date();
			Time1 = Date1.getTime();
			Time2= Date2.getTime();
			Elaspedtime = Time2 - Time1;
			
			System.out.println("Query Execution Time: " + Elaspedtime);
			System.out.println();
			
			//rs.close();
			conn.close();
		}
		catch(SQLException e){
			System.err.println(e.getMessage());
		}
		/*catch(ClassNotFoundException e){
			System.err.println(e.getMessage());
		}*/

	}

}

import java.sql.*;
import java.io.*;
import java.util.Scanner;

import javax.naming.spi.DirStateFactory.Result;

public class queries extends URLPrice {
	
	public static void userOption1(){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"Select p_name, p_type "+
					"From part " +
					"order by p_type;");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String pType = rs.getString("p_type");
				if(pType.equals("CPU") || pType.equals("CASE") || pType.equals("RAM")){
					System.out.println(pType + "\t" + "\t" + pName);
				}
				else System.out.println(pType + " \t " + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.out.print("There was a problem connecting to the database...");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void userOption2(String inputType){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"Select p_name, p_type " +
					"From part " +
					"Where p_type = '" + inputType +"';");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String pType = rs.getString("p_type");
				System.out.println(pType + "\t" + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.err.print("You entered an invalid item type(please check your spelling and make sure it is all capitalized");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void userOption3(String inputSupplier){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"SELECT p_name, p_type, s_name " +
					"FROM part, partsupp, supplier " +
					"WHERE s_name = '" + inputSupplier + "' AND p_partid = ps_partid AND ps_suppid = s_suppid");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String pType = rs.getString("p_type");
				String sName = rs.getString("s_name");
				System.out.println(sName + "\t" + pType + "\t" + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.err.print("You entered an invalid supplier");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void userOption4(String low, String high){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"SELECT p_name, p_type, s_name, ps_retailprice " +
					"FROM part, partsupp, supplier " +
					"WHERE ps_retailprice > " + low + " AND ps_retailprice < " + high + " AND p_partid = ps_partid AND ps_suppid = s_suppid");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String pType = rs.getString("p_type");
				String sName = rs.getString("s_name");
				String psPrice = rs.getString("ps_retailprice");
				System.out.println(sName + "\t$" + psPrice + "\t" + pType + "\t" + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.err.print("You entered an invalid supplier");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}

	public static void userOption5(String inputType, String inputSupplier, String low, String high){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"SELECT p_name, p_type, s_name, ps_retailprice " +
					"FROM part, partsupp, supplier " +
					"WHERE ps_retailprice > " + low + " AND ps_retailprice < " + high +
					" AND p_type = '" + inputType +"' AND s_name = '" + inputSupplier + "'" +
					" AND p_partid = ps_partid AND ps_suppid = s_suppid");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String pType = rs.getString("p_type");
				String sName = rs.getString("s_name");
				String psPrice = rs.getString("ps_retailprice");
				System.out.println(sName + "\t$" + psPrice + "\t" + pType + "\t" + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.err.print("You entered an invalid supplier");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void userOption6(){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"SELECT p_name, ps_retailPrice, s_name, " +
				    "CASE WHEN ps_availibility = 0 THEN 'no' ELSE 'yes' END instock " +
				    "FROM part, partsupp, supplier " +
				    "WHERE p_partid = ps_partid AND ps_suppid = s_suppid;");
			while(rs.next()){
				String pName = rs.getString("p_name");
				String psPrice = rs.getString("ps_retailPrice");
				String inStock = rs.getString("instock");
				String sName = rs.getString("s_name");
				System.out.println(inStock + "\t" + sName + "\t$" + psPrice + "\t" + pName);
			}
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			//System.err.print("You entered an invalid supplier");
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	
	public static void adminOutputAvailability(String name, String supplier){
		try{
			Connection conn;
			Statement stmt;
			conn = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = conn.createStatement();
			ResultSet rs;
			
			String sql = "SELECT s_name, p_name, ps_availibility " +
						 "FROM supplier, part, partsupp " +
						 "WHERE p_partid = ps_partid and s_suppid = ps_suppid " +
						 "and p_name LIKE '%" + name + "%' " +
				 		 "and s_name = '" + supplier + "'; ";
			
			//System.out.println(sql);
			rs = stmt.executeQuery(sql);
			
			String S = rs.getString("s_name");
			String N = rs.getString("p_name");
			int amount = rs.getInt("ps_availibility");
			
			System.out.println(S + " | " + N + " | " + "Amount: " + amount);
			
			
			rs.close();
			stmt.close();
			conn.close();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	//Admin: List parts from specific supplier
	public static void adminListParts(String supplier){
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"Select p_name " +
					"From part, partsupp, supplier " +
					"Where " +
					" p_partid = ps_partid and ps_suppid = s_suppid and s_name= '" + supplier + "';");
			int counter = 1;
			while(rs.next()){
				String pName = rs.getString("p_name");
				System.out.println(counter++ + "\t" + pName);
			}

			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	//Admin: Get price of specific part from specific supplier
	public static double adminPriceOfOnePart(String supplier, String item){
		double retailedprice = 0;
		try{
			Connection connect;
			Statement stmt;
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery(
					"SELECT ps_retailprice " +
					"FROM part, partsupp, supplier " +
					"WHERE p_partid = ps_partid and ps_suppid = s_suppid " +
					"and p_name LIKE '%" + item + "%' " +
					"and s_name = '"+ supplier + "';");
			
			retailedprice = rs.getDouble("ps_retailprice");
			rs.close();
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
		return retailedprice;
	}
	
	//Admin Option 1 and Manual Option(1)
	public static void adminOption1o1(String supplier, String item, double price){
		try{
			//System.out.println("1");
			Connection connect;
			Statement stmt;
			//System.out.println("2");
			connect = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			//System.out.println("3");
			stmt = connect.createStatement();
			//System.out.println("4");
			stmt.executeUpdate(
				"UPDATE partsupp " +
				"SET ps_retailprice = " + price + " " +
				"WHERE ps_partid = (SELECT p_partid " +
				 				   "FROM part " +
				 				   "WHERE p_name LIKE '%" + item + "%') " +
				"and ps_suppid = (SELECT s_suppid " +
				                 "FROM supplier " +
								 "WHERE s_name = '" + supplier + "'); ");
			//System.out.println("5");
			
			stmt.close();
			connect.close();
			System.out.println();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void adminOption2(String name, String type){//Insert new Part
		try{
			Connection conn;
			conn = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			
			Statement stmt = conn.createStatement();
			ResultSet rs;
			String sql;
			
			//Find Last Part ID
				sql = "SELECT max(p_partid) " +
					  "FROM part ";
				
				rs = stmt.executeQuery(sql);
				
				int partid = rs.getInt("max(p_partid)");
				partid++;
			//Insert into part table
			
				sql = "INSERT into part " +
					  "VALUES( '" + name + "', " + partid + ", '" + type + "', 909);";
				
				System.out.println(sql);
				
				stmt.executeUpdate(sql);
			
			System.out.println();
			System.out.println("Added Sucessfully!");
			
			
			stmt.close();
			conn.close();
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	public static void adminOption3(String delete){
		try{
			Connection conn;
			Statement stmt;
			conn = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = conn.createStatement();
			
			String sql = "DELETE from part " +
						"WHERE p_name LIKE '%" + delete + "%' ;";
			
			stmt.executeUpdate(sql);
			
			System.out.println("Deletion Successful!");
			
			stmt.close();
			conn.close();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	public static void adminOption4(String name, String supplier, int amount){//Change amount in ps_availibility
		try{
			Connection conn;
			Statement stmt;
			conn = DriverManager.getConnection("jdbc:sqlite:D:/School/CSE111/Project/project.db");
			stmt = conn.createStatement();
			
			String sql = "UPDATE partsupp " +
						 "SET ps_availibility = " + amount + " " +
						 "WHERE ps_partid = (SELECT p_partid " +
				 				   			"FROM part, partsupp " +
				 				   			"WHERE " +
				 				   			"p_name LIKE '%" + name + "%' )" +
				 		 "and " +
				 		 "ps_suppid = (SELECT s_suppid " +
				 		 				   "FROM supplier " +
				 		 				   "WHERE s_name = '" + supplier + "'); ";
			//System.out.println(sql);
			stmt.executeUpdate(sql);
			
			System.out.println("Update Successful!");
			
			stmt.close();
			conn.close();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
			System.out.println("Program Ending...");
			System.exit(0);
		}
	}
	
	
}

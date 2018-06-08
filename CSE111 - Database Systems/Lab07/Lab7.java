import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Lab7{

    public static void main(String[] args){
        Connection conn = null;
        Scanner reader = new Scanner(System.in);

        try{
            Class.forName("org.sqlite.JDBC");

            conn = DriverManager.getConnection("jdbc:sqlite:TPCH.db");

            Statement stat = conn.createStatement();
            ResultSet rs;

            //Assignment Number 2
            stat.executeUpdate("drop table if exists warehouse;");

            String sql = "CREATE TABLE warehouse " +
                            "(w_warehousekey DECIMAL(3,0) not null, " +
                            " w_name CHAR(25) not null, " +
                            " w_supplierkey DECIMAL(2,0) not null, " +
                            " w_capacity DECIMAL(6,2) not null, " +
                            " w_address varchar(40) not null, " +
                            " w_nationkey decimal(2,0) not null )";

            stat.executeUpdate(sql);

            //Assignment Number 3
            String Sinput;
            int Iinput;

            System.out.println("Entering new entry");
            System.out.println("If inputting >key< of both supplier and nation, then enter 'Key'");
            System.out.println("if inputting supplier and/or nation name, then enter 'Name'");

            Sinput = reader.next();

            int suppkey;
            int nationkey;

            int warehousekey = -1;

            if(Sinput.equals("Key")){

                System.out.println("Please enter supplier key");
                suppkey = reader.nextInt();
                System.out.println("Please enter nation key");
                nationkey = reader.nextInt();

                sql = "INSERT INTO warehouse" +
                      "VALUES (" + warehousekey++ + ", 'Bob', " + suppkey + ", 9001, 'WhoCares Avenue', " + nationkey + ")";

                stat.executeUpdate(sql);
            }
            else if(Sinput.equals("Name")){
                System.out.println("If typing only supplier name, then enter 's'");
                System.out.println("If typing only nation name, then enter 'n'");
                System.out.println("If typing both supplier and nation name, then enter 'both'");

                Sinput = reader.next();

                String Sname;
                String Nname;

                if(Sinput.compareTo("s") != 0 || Sinput.compareTo("n") != 0 || Sinput.compareTo("both") != 0){
                    System.out.println("English! MF, do you know how to type it?!");
                    return;
                }
                else if(Sinput.equals("s")){
                    System.out.println("Enter the name");
                    Sname = reader.next();

                    rs = stat.executeQuery("select * from supplier where s_name = '" + Sname + "';");

                    suppkey = rs.getInt("s_suppkey");
                    nationkey = rs.getInt("s_nationkey");

                    sql = "INSERT INTO warehouse" +
                          "VALUES(" + warehousekey++ + ", 'Cow', " + suppkey + ", 9001, 'WhoGives Blvd'," + nationkey + ")";

                    stat.executeUpdate(sql);
                }
                else if(Sinput.equals("n")){
                    System.out.println("Enter the name");
                    Nname = reader.next();

                    rs = stat.executeQuery("select * from nation where n_name = '" + Nname + "';");

                    nationkey = rs.getInt("s_nationkey");

                    sql = "INSERT INTO warehouse" +
                          "VALUES(" + warehousekey++ + ", 'Cow', 0 , 9001, 'WhoGives Blvd'," + nationkey + ")";

                    stat.executeUpdate(sql);
                }
                else if(Sinput.equals("both")){
                    System.out.println("Enter the supplier name");
                    Sname = reader.next();
                    System.out.println("Enter the nation name");
                    Nname = reader.next();

                    rs = stat.executeQuery("select * from supplier where s_name = '" + Sname + "';");

                    suppkey = rs.getInt("s_suppkey");
                    nationkey = rs.getInt("s_nationkey");

                    sql = "INSERT INTO warehouse" +
                          "VALUES(" + warehousekey++ + ", 'Cow', " + suppkey + ", 9001, 'WhoGives Blvd'," + nationkey + ")";

                    stat.executeUpdate(sql);
                }
            }
            else {System.out.println("English! MF, do you know how to type it?!");
                return;
            }

            //Assignment Number 4

            //Query: Find the supplier with the smallest number of warehouses
            System.out.println();

            System.out.println("Query: Find the supplier with the smallest number of warehouses");
            rs = stat.executeQuery("select s_name from warehouse, supplier where s_suppkey = w_suppkey having min(w_warehousekey)");

            System.out.println("s_name = " + rs.getString("s_name"));
            System.out.println();

            //Query: Find the maximum warehouse capacity across all the suppliers

            System.out.println("Query: Find the maximum warehouse capacity across all the suppliers");
            rs = stat.executeQuery("select max(w_capacity) from warehouse");

            System.out.println("max(w_capacity) = " + rs.getString("max(w_capacity)"));
            System.out.println();

            //Query: List all the warehouses in EUROPE with capacity smaller than X, where X is taken as an input from the user

            System.out.println("Query: List all the warehouses in EUROPE with capacity smaller than X, where X is taken as an input from the user");
            System.out.println("Enter the capacity");
            Iinput = reader.nextInt();

            rs = stat.executeQuery("select distinct w_name from supplier, warehouse, nation, region where s_suppkey = w_suppkey " +
                                   "and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' " +
                                   "and w_capacity < " + Iinput);

            while(rs.next()){
                System.out.println("w_name = " + rs.getString("w_name"));
            }
            System.out.println();

            //Query: For a supplier name given by the user, find whether all its warehouses are capable to fit all its products
            System.out.println("Query: For a supplier name given by the user, find whether all its warehouses are capable to fit all its products");
            System.out.println("Please enter the supplier name");
            Sinput = reader.next();

            int capacity;
            int partsupp;

            rs = stat.executeQuery("select max(w_capacity) from warehouse, supplier where s_suppkey = w_suppkey and s_name = '" + Sinput + "'");
            capacity = rs.getInt("max(w_capacity)");

            rs = stat.executeQuery("select max(ps_availqty) from partsupp, supplier where s_suppkey = ps_suppkey and s_name = '" + Sinput + "'");
            partsupp = rs.getInt("max(ps_availqty)");

            if(capacity > partsupp)System.out.println("Yes, this supplier can store all of his/her products.");
            else System.out.println("No, this supplier cannot store all of his/her products.");

            System.out.println();

            //Query: For a nation given by the user, print all the warehouses in that country, in ascending order of their capacity
            System.out.println("Query: For a nation given by the user, print all the warehouses in that country, in ascending order of their capacity");
            System.out.println("Please enter the nation name");
            Sinput = reader.next();

            rs = stat.executeQuery("select w_name from warehouse, supplier, nation where w_suppkey = s_suppkey and s_nationkey = n_nationkey " +
                                   "and n_name = '" + Sinput + "' order by w_capacity asc");

            while(rs.next()){
                System.out.println("w_name = " + rs.getString("w_name"));
            }
            System.out.println();

            //Query: Supplier#000000002 is acquired by Supplier#000000001. Update the warehouse table to reflect this change in ownership. The actual names of the suppliers are taken as input from the user, they are not constants.
            System.out.println("Query: Supplier#000000002 is acquired by Supplier#000000001. Update the warehouse table to reflect this change in ownership. The actual names of the suppliers are taken as input from the user, they are not constants.");

            String Sender;
            String Receiver;

            System.out.println("Input the name of the supplier who is sending his/her warehouse");
            Sender = reader.next();

            System.out.println("Input the name of the supplier who is receiving the warehouse");
            Receiver = reader.next();

            int IDS;//ID of Sender
            int IDR;//ID of Receiver

            rs = stat.executeQuery("select s_suppkey from supplier where s_name = '" + Sender + "'");
            IDS = rs.getInt("s_suppkey");

            rs = stat.executeQuery("select s_suppkey from supplier where s_name = '" + Receiver + "'");
            IDR = rs.getInt("s_suppkey");

            sql = "UPDATE warehouse" +
                    "SET w_suppkey = " + IDR + "WHERE w_suppkey = " + IDS;

            stat.executeQuery(sql);

            rs.close();
        }
        catch(SQLException e){
            System.err.println(e.getMessage());
        }
        catch(ClassNotFoundException e){
            System.err.println(e.getMessage());
        }
        finally{
            try{
                if(conn != null) conn.close();
            }
            catch(SQLException e){
                System.err.println(e);
            }
        }
    }
}

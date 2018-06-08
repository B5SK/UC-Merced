import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Simple{

    public static void main(String[] args){
        Connection conn = null;

        try{
            Class.forName("org.sqlite.JDBC");

            conn = DriverManager.getConnection("jdbc:sqlite:test.db");

            Statement stat = conn.createStatement();
            stat.executeUpdate("drop table if exists student;");
            stat.executeUpdate("create table student (name, university);");
            stat.executeUpdate("insert into student values ('John Smith', 'UC Merced');");

            ResultSet rs = stat.executeQuery("select * from student;");
            while(rs.next()){
                System.out.println("name = " + rs.getString("name"));
                System.out.println("university = " + rs.getString("occupation"));
            }
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

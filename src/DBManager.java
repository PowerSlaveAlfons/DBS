import java.sql.*;
import java.util.ArrayList;

public class DBManager
{
    ArrayList<String> DBManagerDoStuff()
    {
        try{
//step1 load the driver class
            Class.forName("oracle.jdbc.OracleDriver");

//step2 create  the connection object
            Connection con= DriverManager.getConnection(
                    "ORACELINFO","w19bif3_if18bxxx","xxx");

//step3 create the statement object
            Statement stmt=con.createStatement();

//step4 execute query
            ResultSet rs=stmt.executeQuery("select name from champion");
            ArrayList<String> returned = new ArrayList<String>();
            int index = 1;
            for (int i=1; rs.next(); i++)
            {
                returned.add( rs.getString("name") + "\n");
            }



//step5 close the connection object
            con.close();
            return returned;

        }catch(Exception e){ System.out.println(e);}
            return new ArrayList<String>();
    }
    }


import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Stream;

public class DBManager
{
    ArrayList<String> DBManagerDoStuff(String statement)
    {
        try{
//step1 load the driver class
            Class.forName("oracle.jdbc.OracleDriver");

//step2 create  the connection object
            Connection con= DriverManager.getConnection(
                    "jdbc:oracle:thin:@infdb.technikum-wien.at:1521:o10","w19bif3_if18b115","dbsw19");

//step3 create the statement object
            Statement stmt=con.createStatement();

//step4 execute query
            ResultSet rs=stmt.executeQuery(statement);
            ArrayList<String> returned = new ArrayList<String>();
            int index = 1;
            for (int i=1; rs.next(); i++)
            {
                returned.add( rs.getString(1) + "\n");
            }



//step5 close the connection object
            con.close();
            return returned;

        }catch(Exception e){ System.out.println(e);}
            return new ArrayList<String>();
    }

   Array CaptureLines() throws SQLException
   {
       try
       {
           Class.forName("oracle.jdbc.OracleDriver");
       }
       catch (ClassNotFoundException e)
       {}

//step2 create  the connection object
       Connection con= DriverManager.getConnection(
               "jdbc:oracle:thin:@infdb.technikum-wien.at:1521:o10","w19bif3_if18b115","dbsw19");
       try (CallableStatement call = con.prepareCall(
               "declare "
                       + "  num integer := 1000;" // Adapt this as needed
                       + "begin "

                       // You have to enable buffering any server output that you may want to fetch
                       + "  dbms_output.enable();"

                       // This might as well be a call to third-party stored procedures, etc., whose
                       // output you want to capture
                       + "  dbms_output.put_line('abc');"
                       + "  dbms_output.put_line('hello');"
                       + "  dbms_output.put_line('so cool');"

                       // This is again your call here to capture the output up until now.
                       // The below fetching the PL/SQL TABLE type into a SQL cursor works with Oracle 12c.
                       // In an 11g version, you'd need an auxiliary SQL TABLE type
                       + "dbms_output.get_lines(?, num);"

                       // Don't forget this or the buffer will overflow eventually
                       + "  dbms_output.disable();"

                       + "end;"
       )) {
           call.registerOutParameter(1, Types.ARRAY, "DBMSOUTPUT_LINESARRAY");
           call.execute();

           Array array = null;
               array = call.getArray(1);

          // String[] datumArr = array.getOracleArray();
          // String strData[] = (String[]) data.getArray();
               System.out.println(Arrays.asList((Object[]) array.getArray()));
               return array;
               //return null;

       }
   }
    }


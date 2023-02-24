import java.sql.*;
public class Reporting {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        final String username = args[0];
        final String password = args[1];

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@csorcl.cs.wpi.edu:1521:orcl", username, password);
        System.out.println(conn);
    }
}
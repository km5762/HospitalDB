import java.sql.*;
public class Reporting {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        final String username = args[0];
        final String password = args[1];
        final String option = (args.length > 2) ? args[2] : "none";

        // Making connection
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@csorcl.cs.wpi.edu:1521:orcl", username, password);
        
        // Reading option
        switch (option) {
            case "1":
                System.out.println("1");
                break;
            default:
                System.out.println("1-Report Patients Basic Information\n" +
                        "2-Report Doctors Basic Information\n" +
                        "3-Report Admissions Information\n" +
                        "4-Update Admissions Payment\n");
        }
    }
}
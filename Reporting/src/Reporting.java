import java.sql.*;
import java.util.Scanner;

public class Reporting {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        final Scanner scanner = new Scanner(System.in);
        final String username = args[0];
        final String password = args[1];
        final String option = (args.length > 2) ? args[2] : "none";

        // Making connection
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@csorcl.cs.wpi.edu:1521:orcl", username, password);
        Statement stmt = conn.createStatement();

        // Reading option
        switch (option) {
            case "1":
                System.out.println("Enter Patient SSN:");
                final String findSSN = scanner.next();
                final String query = "SELECT * FROM patient WHERE patient.ssn = " + "\'" + findSSN + "\'";
                final ResultSet result = stmt.executeQuery(query);
                String patientSSN = "";
                String firstName = "";
                String lastName = "";
                String address = "";

                while (result.next()) {
                    patientSSN = result.getString("ssn");
                    firstName = result.getString("firstname");
                    lastName = result.getString("lastName");
                    address = result.getString("address");
                }

                System.out.println("Patient SSN: " + patientSSN);
                System.out.println("Patient First Name: " + firstName);
                System.out.println("Patient Last Name: " + lastName);
                System.out.println("Patient Address: " + address);
                break;
            default:
                System.out.println("1-Report Patients Basic Information\n" +
                        "2-Report Doctors Basic Information\n" +
                        "3-Report Admissions Information\n" +
                        "4-Update Admissions Payment\n");
        }
        stmt.close();
        conn.close();
    }
}
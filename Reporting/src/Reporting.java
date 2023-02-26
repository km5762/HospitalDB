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
            case "1": {
                System.out.println("Enter Patient SSN:");
                final String findSSN = scanner.next();
                final String patientQuery = "SELECT * FROM patient WHERE patient.ssn = " + "'" + findSSN + "'";
                final ResultSet patientRs = stmt.executeQuery(patientQuery);
                String patientSSN = "";
                String firstName = "";
                String lastName = "";
                String address = "";

                while (patientRs.next()) {
                    patientSSN = patientRs.getString("ssn");
                    firstName = patientRs.getString("firstname");
                    lastName = patientRs.getString("lastName");
                    address = patientRs.getString("address");
                }

                System.out.println("Patient SSN: " + patientSSN);
                System.out.println("Patient First Name: " + firstName);
                System.out.println("Patient Last Name: " + lastName);
                System.out.println("Patient Address: " + address);
                break;
            }
            case "2": {
                System.out.println("Enter Doctor ID:");
                final int findDocId = scanner.nextInt();
                final String docIdQuery = "SELECT doctor.employeeid, firstname, lastname, gender, graduatedfrom, specialty FROM doctor JOIN employee ON doctor.employeeid = employee.employeeid WHERE doctor.employeeid = " + findDocId;
                final ResultSet docRs = stmt.executeQuery(docIdQuery);

                String employeeid = "";
                String firstname = "";
                String lastname = "";
                String gender = "";
                String specialty = "";
                String graduatedfrom = "";

                while (docRs.next()) {
                    employeeid = docRs.getString("employeeid");
                    firstname = docRs.getString("firstname");
                    lastname = docRs.getString("lastname");
                    gender = docRs.getString("gender");
                    specialty = docRs.getString("specialty");
                    graduatedfrom = docRs.getString("graduatedfrom");
                }

                System.out.println("Doctor ID: " + employeeid);
                System.out.println("Doctor First Name: " + firstname);
                System.out.println("Doctor Last Name: " + lastname);
                System.out.println("Doctor Gender: " + gender);
                System.out.println("Doctor Graduated From: " + graduatedfrom);
                System.out.println("Doctor Specialty: " + specialty);
                break;
            }
            case "3": {
                System.out.println("Enter Admission Number:");
                final int findAdmNum = scanner.nextInt();
                final String docIdQ = "SELECT employeeid FROM examine WHERE admissionnum = " + findAdmNum;
                final ResultSet docRs = stmt.executeQuery(docIdQ);

                int[] doctorIds = new int[100];

                int doctorIdCount = 0;
                while (docRs.next()) {
                    doctorIds[doctorIdCount] = docRs.getInt("employeeid");
                    doctorIdCount++;
                }

                final String roomQ = "SELECT roomnum, startdate, enddate FROM stayin WHERE admissionnum = " + findAdmNum;
                final ResultSet roomRs = stmt.executeQuery(roomQ);

                int[] roomNums = new int[100];
                Date[] startDates = new Date[100];
                Date[] endDates = new Date[100];

                int roomCount = 0;
                while (roomRs.next()) {
                    roomNums[roomCount] = roomRs.getInt("roomnum");
                    startDates[roomCount] = roomRs.getDate("startdate");
                    endDates[roomCount] = roomRs.getDate("enddate");
                    roomCount++;
                }

                final String admissionQ = "SELECT ssn, admissiondate, totalpayment FROM admission WHERE admissionnum = " + findAdmNum;
                final ResultSet admissionRs = stmt.executeQuery(admissionQ);

                String ssn = "";
                Date admissiondate = null;
                float totalpayment = 0;

                while (admissionRs.next()) {
                    ssn = admissionRs.getString("ssn");
                    admissiondate = admissionRs.getDate("admissiondate");
                    totalpayment = admissionRs.getFloat("totalpayment");
                }

                System.out.println("Admission Number: " + findAdmNum);
                System.out.println("Patient SSN: " + ssn);
                System.out.println("Admission date (start date): " + admissiondate);
                System.out.println("Total Payment: " + totalpayment);
                System.out.println("Rooms:");
                for (int room = 0; room < roomCount; room++) {
                    System.out.println("\tRoomNum: " + roomNums[room] + " FromDate: " + startDates[room] + " ToDate: " + endDates[room]);
                }
                System.out.println("Doctors examined the patient in this admission:");
                for (int doctor = 0; doctor < doctorIdCount; doctor++) {
                    System.out.println("\tDoctor ID: " + doctorIds[doctor]);
                }
                break;
            }
            case "4": {
                System.out.println("Enter Admission Number:");
                final int admissionNumber = scanner.nextInt();
                System.out.println("Enter the new total payment:");
                final int newTotalPayment = scanner.nextInt();

                final String updateQ = "UPDATE admission SET totalpayment = " + newTotalPayment + " WHERE admissionnum = " + admissionNumber;
                stmt.executeQuery(updateQ);
                break;
            }
            default:
                System.out.println("1-Report Patients Basic Information\n" +
                        "2-Report Doctors Basic Information\n" +
                        "3-Report Admissions Information\n" +
                        "4-Update Admissions Payment");
        }
        stmt.close();
        conn.close();
    }
}
package postgresql;

/* Assignment: Project 
 * Authors: Devin Peebles, Carla Medacier, Sean Acceus
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class postgresqlswimmingorg {
    public static void main(String[] args) {
        final String url = "jdbc:postgresql://localhost:5432/swimmingorg";
        final String user = "postgres";
        final String password = "12345";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Scanner sc = new Scanner(System.in)) {

            System.out.println("Java JDBC PostgreSQL swimmingorg");
            System.out.println("Connected to PostgreSQL database!");

            int choice = 0;
            while (choice != 4) {
                System.out.println("\nPlease enter your choice:");
                System.out.println("1. Names and phones of all swimmers currently in level (of id) 3:");
                System.out.println("2. Name(s) of caretakers who are the primary (main) caretakers of at least two swimmers:");
                System.out.println("3. Names of all caretakers who have volunteered for the task 'Recording' but not the task 'Officiating':");
                System.out.println("4. Quit");
                System.out.print("> ");

                if (sc.hasNextInt()) {
                    choice = sc.nextInt();
                    sc.nextLine(); // consume newline
                } else {
                    System.out.println("Invalid input. Please enter a number.");
                    sc.nextLine();
                    continue;
                }

                switch (choice) {
                    case 1:
                        displaySwimmersInLevel3(conn);
                        break;
                    case 2:
                        displayCaretakersOfMultipleSwimmers(conn);
                        break;
                    case 3:
                        displayCaretakersRecordingNotOfficiating(conn);
                        break;
                    case 4:
                        System.out.println("Exiting program. Goodbye!");
                        break;
                    default:
                        System.out.println("Invalid choice, please try again.");
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void displaySwimmersInLevel3(Connection conn) throws SQLException {
        String query = """
            SELECT "FName", "LName", "Phone" 
            FROM "Swimmer" 
            WHERE "CurrentLevelId" = 3;
            """;
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            System.out.println("FName | LName | Phone");
            while (rs.next()) {
                System.out.printf("%s | %s | %s%n",
                        rs.getString("FName"), rs.getString("LName"), rs.getString("Phone"));
            }
        }
    }

    private static void displayCaretakersOfMultipleSwimmers(Connection conn) throws SQLException {
        String query = """
            SELECT DISTINCT c."FName", c."Phone"
            FROM "Caretaker" c
            JOIN "Swimmer" s1 ON c."CT_Id" = s1."Main_CT_Id"
            JOIN "Swimmer" s2 ON c."CT_Id" = s2."Main_CT_Id"
            WHERE s1."SwimmerId" <> s2."SwimmerId";
            """;
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            System.out.println("FName | Phone");
            while (rs.next()) {
                System.out.printf("%s | %s%n",
                        rs.getString("FName"), rs.getString("Phone"));
            }
        }
    }

    private static void displayCaretakersRecordingNotOfficiating(Connection conn) throws SQLException {
        String query = """
            SELECT DISTINCT c."FName", c."LName"
            FROM "Caretaker" c
            WHERE c."CT_Id" IN (
                SELECT DISTINCT com1."CT_Id"
                FROM "Commitment" com1
                JOIN "V_Task" vt1 ON com1."VT_Id" = vt1."VT_Id"
                WHERE vt1."Name" = 'Recording'
            )
            AND c."CT_Id" NOT IN (
                SELECT DISTINCT com2."CT_Id"
                FROM "Commitment" com2
                JOIN "V_Task" vt2 ON com2."VT_Id" = vt2."VT_Id"
                WHERE vt2."Name" = 'Officiating'
            );
            """;
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            System.out.println("FName | LName");
            while (rs.next()) {
                System.out.printf("%s | %s%n",
                        rs.getString("FName"), rs.getString("LName"));
            }
        }
    }
}

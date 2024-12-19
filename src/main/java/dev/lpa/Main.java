package dev.lpa;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
  public static void main(String[] args) {
    String folderPath = "src/main/resources/" + System.getenv("DB_NAME");
    File folder = new File(folderPath);
    File[] listOfFiles =
        folder.listFiles((dir, name) -> name.startsWith("query_") && name.endsWith(".sql"));

    if (listOfFiles != null) {
      for (File file : listOfFiles) {
        try {
          String query = readFile(file);

          System.out.println();
          System.out.println(file.getName().toUpperCase());
          System.out.println("-".repeat(50));
          System.out.println(query);

          executeAndDisplayQuery(query);
          System.out.println("\n" + "=".repeat(120));
        } catch (IOException | SQLException e) {
          e.printStackTrace();
        }
      }
    }
  }

  private static String readFile(File file) throws IOException {
    StringBuilder content = new StringBuilder();
    try (BufferedReader br = new BufferedReader(new FileReader(file))) {
      String line;
      while ((line = br.readLine()) != null) {
        content.append(line).append("\n");
      }
    }
    return content.toString();
  }

  private static void executeAndDisplayQuery(String query) throws SQLException {
    String url = "jdbc:postgresql://localhost:5432/" + System.getenv("DB_NAME");
    String user = System.getenv("DB_USER");
    String password = System.getenv("DB_PASSWORD");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      conn = DriverManager.getConnection(url, user, password);
      stmt = conn.createStatement();
      boolean hasResults = stmt.execute(query);

      while (hasResults) {
        rs = stmt.getResultSet();
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnCount = rsmd.getColumnCount();

        // Print header
        for (int i = 1; i <= columnCount; i++) {
          System.out.printf("%-25s", rsmd.getColumnName(i).toUpperCase());
        }
        System.out.println();
        System.out.println("-".repeat(120));

        // Print rows
        while (rs.next()) {
          for (int i = 1; i <= columnCount; i++) {
            System.out.printf("%-25s", rs.getString(i));
          }
          System.out.println();
        }

        // Check for more results
        hasResults = stmt.getMoreResults();
      }
    } catch (SQLException e) {
      System.err.println("SQLState: " + e.getSQLState());
      System.err.println("Error Code: " + e.getErrorCode());
      System.err.println("Message: " + e.getMessage());
      Throwable t = e.getCause();
      while (t != null) {
        System.err.println("Cause: " + t);
        t = t.getCause();
      }
      e.printStackTrace();

    } finally {

      if (rs != null) {
        rs.close();
      }
      if (stmt != null) {
        stmt.close();
      }
      if (conn != null) {
        conn.close();
      }
    }
  }
}

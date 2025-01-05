import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    static {
        try {
            // Load the MySQL JDBC driver - to check whether the driver is connecting or not
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("MySQL JDBC Driver not found.");
        }
    }

    private static final String URL = "jdbc:mysql://localhost:3306/metro_system"; // url with name of database
    private static final String USER = "root"; //username
    private static final String PASSWORD = "password"; //password of database server

    public static Connection getConnection() throws SQLException { //the driver is connected over here and calling in all class
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StationService {
// method to find station index
    public static int fetchStationId(Connection connection, String stationName) throws SQLException {
        String query = "SELECT station_id FROM stations WHERE name = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, stationName); // these will replace question mark with the value
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt("station_id");
            } else {
                throw new SQLException("Station not found: " + stationName);
            }
        }
    }
}

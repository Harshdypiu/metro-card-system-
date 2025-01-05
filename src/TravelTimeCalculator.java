import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TravelTimeCalculator {

    private static final int MAX_TRAVEL_TIME = 120; //max travel time in minutes
    private static final double FARE_PER_STATION = 2.5; // value given in question

    public static int calculateTravelTime(Connection conn, int startStationId, int endStationId) throws SQLException {
        int totalTravelTime = 0;
        int currentStationId = startStationId; //the point assigned

        while (currentStationId != endStationId) { // because consecutive pair according to direction it is increasing and decreasing
            String query = "SELECT travel_time_minutes FROM station_travel_times WHERE start_station_id = ? AND end_station_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);

            if (startStationId < endStationId) {
                // Forward travel
                stmt.setInt(1, currentStationId);
                stmt.setInt(2, currentStationId + 1);
                currentStationId++; // pointer move forward
            } else {
                // Backward travel
                stmt.setInt(1, currentStationId);
                stmt.setInt(2, currentStationId - 1);
                currentStationId--; // point move backward
            }

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                totalTravelTime += rs.getInt("travel_time_minutes");
            } else {
                throw new SQLException("No travel time found between stations " + currentStationId + " and " + (currentStationId + (startStationId < endStationId ? 1 : -1)));
            }
        }

        return totalTravelTime;
    }

    public static int calculateNumberOfStations(int startStationId, int endStationId) {
        return Math.abs(startStationId - endStationId);// calculate number of station
    }

    public static double calculatePrice(int numberOfStations) {
        return numberOfStations * FARE_PER_STATION; //calculate fare
    }
}

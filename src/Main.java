
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // initiating user input

        try (Connection conn = DatabaseConnection.getConnection()) {
            // user input for start
            System.out.print("Enter the name of the start station: ");
            String startStationName = scanner.nextLine();
            // user input for end
            System.out.print("Enter the name of the end station: ");
            String endStationName = scanner.nextLine();

            // retrieve station Ids or index  from the database
            int startStationId = StationService.fetchStationId(conn, startStationName);
            int endStationId = StationService.fetchStationId(conn, endStationName);

            // Calculate travel time from travel time calculator class
            int travelTime = TravelTimeCalculator.calculateTravelTime(conn, startStationId, endStationId);
            System.out.println("Total travel time: " + travelTime + " minutes");

            // Check if travel time exceeds the maximum allowed time
            if (travelTime > 120) {
                System.out.println("Travel time exceeds the maximum limit of 120 minutes.");
                return;
            }

            // the number of stations and fare calculated over here
            int numberOfStations = TravelTimeCalculator.calculateNumberOfStations(startStationId, endStationId);
            double fare = TravelTimeCalculator.calculatePrice(numberOfStations);
            System.out.println("Total fare: ₹" + fare);

            // Deduct fare from metro user cards
            System.out.print("Enter your metro card number: ");
            String cardNumber = scanner.nextLine();
            MetroCard card = fetchMetroCardDetails(conn, cardNumber);

            if (card != null) {
                card.deductBalance(fare);
                card.updateBalanceInDatabase();
                card.recordJourney(startStationId, endStationId, travelTime,fare);
                System.out.println("Remaining balance: ₹" + card.getBalance());
            } else {
                System.out.println("Metro card not found.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // metro card details from the database - method
    private static MetroCard fetchMetroCardDetails(Connection connection, String cardNumber) throws SQLException {
        String query = "SELECT * FROM metro_cards WHERE card_number = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, cardNumber);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new MetroCard(rs.getInt("card_id"), rs.getDouble("balance"));// card_id in integer and balance in double it will stored in metro class
            }
        }
        return null;
    }
}

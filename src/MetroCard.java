import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MetroCard {
    private int cardId;
    private double balance;

    public MetroCard(int cardId, double balance) {
        this.cardId = cardId;
        this.balance = balance;
    }
// for cardid method to reterieve
    public int getCardId() {
        return cardId;
    }
// for balance to reterieve
    public double getBalance() {
        return balance;
    }
// method used to deduct balance and check for low balance
    public void deductBalance(double amount) throws Exception {
        if (balance < amount) {
            throw new Exception("Insufficient balance on the card!");
        }
        balance -= amount;
        updateBalanceInDatabase();
    }
// updating the data balance using update query
    public void updateBalanceInDatabase() throws SQLException {
        try (Connection conn = DatabaseConnection.getConnection()) {
            String query = "UPDATE metro_cards SET balance = ? WHERE card_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setDouble(1, balance);
            stmt.setInt(2, cardId);
            stmt.executeUpdate();
        }
    }
// storing the journey detail here
    public void recordJourney(int startStationId, int endStationId, int travelTime ,double fare) throws SQLException {
        try (Connection conn = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO journeys (card_id, start_station, end_station, journey_time,fare) VALUES (?, ?, ?, ?,?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, cardId);
            stmt.setInt(2, startStationId);
            stmt.setInt(3, endStationId);
            stmt.setInt(4, travelTime);
            stmt.setDouble(5,fare);
            stmt.executeUpdate();
        }
    }
}

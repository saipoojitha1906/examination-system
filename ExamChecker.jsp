import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitAnswers")
public class SubmitAnswersServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost/saipoojitha";
    private static final String DB_USER = "saipoojitha";
    private static final String DB_PASSWORD = "saipoojitha1906";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the submitted answers from the request parameters
        String answer1 = request.getParameter("exam1");
        String answer2 = request.getParameter("exam2");
        // Retrieve the rest of the answers...

        // Insert the answers into the database
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            // Prepare the SQL statement
            String sql = "INSERT INTO answer(q_id, ans) VALUES (?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            // Insert answer 1
            statement.setInt(1, 1); // Assuming question 1 has ID 1
            statement.setString(2, answer1);
            statement.executeUpdate();

            // Insert answer 2
            statement.setInt(1, 2); // Assuming question 2 has ID 2
            statement.setString(2, answer2);
            statement.executeUpdate();

            // Insert the rest of the answers...

            // Close the statement
            statement.close();

            // Redirect the user to a success page
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            // Handle any errors
            e.printStackTrace();
            response.sendRedirect("register.jsp");
        }
    }
}

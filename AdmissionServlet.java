package StudentAdmission;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AdmissionServlet1")
public class AdmissionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve student admission information from the request
        String name = request.getParameter("name");
        String course = request.getParameter("course");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String comments = request.getParameter("comments");



        // Check if the admission is successful (you can add your own validation logic here)
        boolean admissionSuccessful = true; // Example: always assume admission is successful

        // Store admission status in the session
        HttpSession session = request.getSession();
        session.setAttribute("admissionSuccessful", admissionSuccessful);

        if (admissionSuccessful) {
            // Store email and password in the session
            session.setAttribute("email", email);
            session.setAttribute("password", password);
        }

        // Set the Student object as an attribute to be displayed in the JSP page
        request.setAttribute("student", new Student(name, course, email, password, dob, comments));

        // Set individual attributes for each field (for debugging)
        request.setAttribute("name", name);
        request.setAttribute("course", course);
        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("dob", dob);
        request.setAttribute("comments", comments);

        // Forward the request to a JSP page for displaying the preview
        request.getRequestDispatcher("jspp/admission_preview.jsp").forward(request, response);
    }
}

package schoolmanagementcontroller;



import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import schoolmanagemententity.Student;
import schoolmanagementservice.StudentService;

@WebServlet({"/displayall", "/getall"})

//@WebServlet("/displayall")
public class DisplayAll extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentService();

        // Get all students from DB
        List<Student> list = service.getAll();

        // Set list in request scope
        req.setAttribute("allStudents", list);

        // Forward to JSP
        RequestDispatcher dispatcher = req.getRequestDispatcher("displayall.jsp");
        dispatcher.forward(req, resp);
    }
}
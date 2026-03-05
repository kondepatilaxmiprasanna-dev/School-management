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

@WebServlet("/sortstudents")
public class SortStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sortBy = req.getParameter("sortBy");
        String order = req.getParameter("order");

        StudentService service = new StudentService();
        List<Student> list = service.sort(sortBy, order);

        req.setAttribute("allStudents", list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("displayall.jsp");
        dispatcher.forward(req, resp);
    }
}

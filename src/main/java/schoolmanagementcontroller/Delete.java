

package schoolmanagementcontroller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import schoolmanagementservice.StudentService;

@WebServlet("/delete")
public class Delete extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));

            StudentService service = new StudentService();
            int res = service.delete(id);

            if (res > 0) {
                resp.sendRedirect("index.jsp");
            } else {
                resp.getWriter().print("<h1>INVALID ID</h1>");
            }

        } catch (NumberFormatException e) {
            resp.getWriter().print("<h1>Invalid ID!</h1>");
        }
    }
}



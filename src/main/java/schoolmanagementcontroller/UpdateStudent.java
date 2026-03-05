package schoolmanagementcontroller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import school.entity.Student;
import school.service.StudentService;

@WebServlet("/edit")
public class UpdateStudent  extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int age=Integer.parseInt(req.getParameter("age"));
		
		Student student=new Student();
		student.setId(id);
		student.setName(name);
		student.setAge(age);
		
		StudentService service=new StudentService();
		int res=service.update(student);
		
		if(res!=0) {
			resp.sendRedirect("index.jsp");
		}else {
			resp.getWriter().print("<h1>DATA NOT UPDATED!!!</h1>");
		}
	
	}
}




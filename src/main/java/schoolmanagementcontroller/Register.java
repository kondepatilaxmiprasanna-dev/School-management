package schoolmanagementcontroller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import schoolmanagemententity.Student;
import schoolmanagementservice.StudentService;

@WebServlet("/register")
public class Register extends HttpServlet {
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
		System.out.println(id+" "+age+" "+name);
		
		StudentService service=new StudentService();
		int res=service.save(student);
		
		if(res!=0) {
			resp.sendRedirect("index.jsp");
		}
		else {
			resp.getWriter().print("<h1>REGISTRATION FAILED!!</h1>");
		}
		
	}
	
	

}




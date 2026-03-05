package schoolmanagementcontroller;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import schoolmanagemententity.Admin;
import schoolmanagementservice.AdminService;

@WebServlet("/adminregister")
public class AdminRegister extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin a=new Admin();
		a.setFname(req.getParameter("fname"));
		a.setUname(req.getParameter("uname"));
		a.setEmail(req.getParameter("email"));
		a.setPassword(req.getParameter("password"));
		a.setPhoneno(req.getParameter("phoneno"));
		AdminService s=new AdminService();
		int n=s.save(a);
		if(n>0) {
			System.out.println("Details Saved..!");
			resp.sendRedirect("login.jsp");
		}
		else {
			resp.getWriter().print("<h1>Data is not saved ...!</h1><h1>Try Again Later </h1>");
		}
	}

}
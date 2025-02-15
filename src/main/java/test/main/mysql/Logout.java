package test.main.mysql;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {

	@Override
protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
	   HttpSession session=req.getSession();
	   session.invalidate();
	    RequestDispatcher r=req.getRequestDispatcher("/index.jsp");
	    r.forward(req, res);
	}

}

package test.main.mysql;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bbb")
public class f1 extends HttpServlet  {
	@Override
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
      res.setContentType("text/html");
      PrintWriter out=res.getWriter();
      
  	String name=req.getParameter("name1");
	String email=req.getParameter("email1");
	String password=req.getParameter("pass");
	String gender=req.getParameter("gender1");
	String city=req.getParameter("city");
		
   try { 
	   Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kapil",  "root",  "1234");
		System.out.print(con);
  PreparedStatement ps=con.prepareStatement("SELECT * FROM web WHERE email='"+email+"' and pass ='"+password+"' ");
  
   ResultSet r=ps.executeQuery();
   if(r.next()) {
	   String aa=  r.getString("name");
	   String bb=  r.getString("city");
	   String cc=  r.getString("pass");
	   String dd=  r.getString("gender");
	   String ee=  r.getString("email");
	   String ff=r.getString("imageFileName");
	   System.out.println("this is  -----"+ff);
	   
	  req.setAttribute("n_key", aa);
	  req.setAttribute("e_key", ee);
	  req.setAttribute("p_key", cc);
	  req.setAttribute("g_key", bb);
	  req.setAttribute("c_key", dd);
	  req.setAttribute("f_key", ff);
	  
	  RequestDispatcher r1=req.getRequestDispatcher("/loginbackend.jsp");
	   r1.forward(req, res);
     
         
   }else {
	   out.print("<h4 style='color:red'> please enter correct email and password<h4>");
	   RequestDispatcher r1=req.getRequestDispatcher("/index.jsp");
       r1.include(req,res);
	         }
   
	}catch(Exception e1){
	   
	   
	   out.print("<h4 style='color:red'> the some problem occure"+e1.getMessage()+"<h4>");
	   RequestDispatcher r1=req.getRequestDispatcher("/index.jsp");
       r1.include(req,res); 
       e1.printStackTrace();
	   
         }
		
	         }
                   }

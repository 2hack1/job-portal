package test.main.mysql;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig
@WebServlet("/aaa")
public class home extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");

		PrintWriter out = res.getWriter();

		String name = req.getParameter("name1");
		String email = req.getParameter("email1");
		String password = req.getParameter("pass");
		String city = req.getParameter("city1");
		String gender = req.getParameter("gender1");
          String img1=req.getParameter("img");

		System.out.println("this do post method");
		Part file = req.getPart("image");

		String imageFileName = file.getSubmittedFileName();
		System.out.println("selercted image " + imageFileName);

		String uploadPath = "C:/Users/HP/eclipse-workspace/check execution/src/main/webapp/" + imageFileName;
		System.out.println("image  path" + uploadPath);

		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();

			byte[] data = new byte[is.available()];
			is.read(data);

			fos.write(data);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection a = DriverManager.getConnection("jdbc:mysql://localhost:3306/kapil", "root", "1234");
			PreparedStatement ps = a.prepareStatement("insert into web values(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, gender);
			ps.setString(5, city);
			ps.setString(6,imageFileName );

			int c = ps.executeUpdate();

			if (c == 1) {

				res.setContentType("text/html");
//	out.print("<h4 style='color:green'>your registration has been  not succses fully</h4><br>");
				RequestDispatcher r = req.getRequestDispatcher("/registerMasse.jsp");
				r.forward(req, res);

			} else {
				res.setContentType("text/html");
				out.print("<h4 style='color:red'>your registration has been  not succses fully</h4><br>");
				RequestDispatcher r = req.getRequestDispatcher("/register.jsp");
				r.include(req, res);
			}
		} catch (Exception e1) {
			res.setContentType("text/html");
			out.print("<h4 style='color:red'>your registration   " + e1.getMessage() + "</h4><br>");
			RequestDispatcher r = req.getRequestDispatcher("/resgister.jsp");
			r.include(req, res);
		}
	}
}

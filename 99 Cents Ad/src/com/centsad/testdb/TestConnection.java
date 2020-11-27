package com.centsad.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     
    public TestDbServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
*/
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String user = "springstudent";
		String pass = "springstudent";
		
		String jdbcUrl = "jdbc:mysql://localhost:3308/99_cents_ad?userSSL=false&serverTimeZone=UTC";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
		PrintWriter out = response.getWriter();
		out.println("Connecting to database : "+ jdbcUrl);
		
		Class.forName(driver);
		
		Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);
		
		out.println("Success");
		
		myConn.close();
		
		
		}catch(Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
		
	}

	/*
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
*/
}


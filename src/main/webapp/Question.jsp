<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question</title>
</head>
<body>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%
		Connection con=null;
		Statement s =null;
		ResultSet rs=null;
		String a1, a2, x, y;
		int a =0;
		try{
			/*
				---------Using jdbc.odbc library------------ 
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				a1=request.getParameter("username");
				a2=request.getParameter("password");
				con=DriverManager.getConnection();
			*/
			
			
			// -----------Using ucanaccess library--------------
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			String path = "D:\\log.accdb";
			String url = "jdbc:ucanaccess://"+path;
			a1=request.getParameter("username");
			a2=request.getParameter("password");
			System.out.println(a1+"\n"+a2);
			con=DriverManager.getConnection(url);
			
			
			
			s=con.createStatement();
			rs=s.executeQuery("SELECT *FROM log");
			//System.out.println(rs);
			while(rs.next()){
				x=rs.getString("username");
				if(a1.equals(x)){
					y=rs.getString("password");
					if(a2.equals(y)){
						a=1;
					}
				}
				if(a==1){
					out.println("<form style=\"font-family: Arial, sans-serif;\" id=\"form1\" method=\"get\" action=\"http://localhost:8080/JSP/Score.jsp\">");
					out.println("<div style=\"max-width:700px; padding:30px; border: 1px solid #ccc; box-shadow: 0 0 100px rgb(54, 150, 255, 0.35); margin: 200px auto; border-radius: 5px;\"><h1>Select any one of the options to answer...</h1>");
					
					out.println("<h2>Who is the Father of Atom Bomb?</h2>");
					out.println("<input type=\"radio\" name=\"r1\" value=\"Oppenheimer\"/>Oppenheimer<br>");
					out.println("<input type=\"radio\" name=\"r1\" value=\"Aristotle\"/>Aristotle<br>");
					out.println("<input type=\"radio\" name=\"r1\" value=\"Feynman\"/>Feynman<br>");
					out.println("<input type=\"radio\" name=\"r1\" value=\"Antonie van\"/>Antonie van<br>");
					
					out.println("<h2>Who is the Father of Electricity?</h2>");
					out.println("<input type=\"radio\" name=\"r2\" value=\"Karl Landsteiner\"/>Karl Landsteiner<br>");
					out.println("<input type=\"radio\" name=\"r2\" value=\"William Harvey\"/>William Harvey<br>");
					out.println("<input type=\"radio\" name=\"r2\" value=\"Benjamin Franklin\"/>Benjamin Franklin<br>");
					out.println("<input type=\"radio\" name=\"r2\" value=\"Robert Hooke\"/>Robert Hooke<br>");
					
					out.println("<h2>Who is the Father of Nuclear Physics?</h2>");
					out.println("<input type=\"radio\" name=\"r3\" value=\"Ernst Rutherford\"/>Ernst Rutherford<br>");
					out.println("<input type=\"radio\" name=\"r3\" value=\"Paul Berg\"/>Paul Berg<br>");
					out.println("<input type=\"radio\" name=\"r3\" value=\"John Locke\"/>John Locke<br>");
					out.println("<input type=\"radio\" name=\"r3\" value=\"James Hutton\"/>James Hutton<br>");
					
					out.println("<h2>Who is the Father of Comic Books?</h2>");
					out.println("<input type=\"radio\" name=\"r4\" value=\"Walter White\"/>Walter White<br>");
					out.println("<input type=\"radio\" name=\"r4\" value=\"John Snow\"/>John Snow<br>");
					out.println("<input type=\"radio\" name=\"r4\" value=\"James Hunter\"/>James Hunter<br>");
					out.println("<input type=\"radio\" name=\"r4\" value=\"Stan Lee\"/>Stan Lee<br>");
					
					out.println("<h2>Who is the Father of Computer?</h2>");
					out.println("<input type=\"radio\" name=\"r5\" value=\"Charles Darwin\"/>Charles Darwin<br>");
					out.println("<input type=\"radio\" name=\"r5\" value=\"Carl Linnaeus\"/>Carl Linnaeus<br>");
					out.println("<input type=\"radio\" name=\"r5\" value=\"Charles Babbage\"/>Charles Babbage<br>");
					out.println("<input type=\"radio\" name=\"r5\" value=\"Claude Ba\"/>Stan Lee<br>");
					
					out.println("<input type=\"submit\" value=\"Submit\" style=\"background-color: #007bff; color: #fff; padding: 10px 20px; border: none;margin-top:30px;justify-content:center ; border-radius: 5px; cursor: pointer;\"/></div></form>");
				}
				else
					out.println("<h1>Invalid Login</h1>");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>
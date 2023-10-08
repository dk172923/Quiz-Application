<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Score card</title>
</head>
<body>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="javax.net.*" %>
	<%@page import="java.util.Arrays" %>
	<%
		Connection con=null;
		Statement s=null;
		ResultSet rs=null;
		String x,y;
		String k[]=new String[6];
		int a=0;
		try{
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			String path = "D:\\quiz_app.accdb";
			String url = "jdbc:ucanaccess://"+path;
			k[0]=request.getParameter("r1");
			k[1]=request.getParameter("r2");
			k[2]=request.getParameter("r3");
			k[3]=request.getParameter("r4");
			k[4]=request.getParameter("r5");
			System.out.println(Arrays.toString(k));
			con=DriverManager.getConnection(url);
			s=con.createStatement();
			System.out.println("Connection established");
		
			rs=s.executeQuery("SELECT *FROM ans");
			int index = 0;
			while(rs.next() && index < k.length){
				String dbAnswer = rs.getString("ans");
				String userAnswer = k[index];
				System.out.println(dbAnswer);
				System.out.println(userAnswer);
				if( userAnswer!=null && !userAnswer.isEmpty()){
					if(userAnswer.equals(dbAnswer)){
						a = a+10;
					}
				}
				index++;
			}

			System.out.println(a);
			out.println("<div style=\"max-width:500px; padding:30px; border: 1px solid #ccc; box-shadow: 0 0 100px rgb(54, 150, 255, 0.35); margin: 200px auto; border-radius: 5px;\">");
			out.println("<h1 style=\"align-item: center;\">Quiz Score Card</h1>");
			out.println("You score is "+a*2+" %");
			out.println("</div>");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>
<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%!Connection con;
	PreparedStatement ps;

	public void jspInit() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "student", "student");
			ps = con.prepareStatement("insert into account values(?,?,?,?)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void jspDestroy() {
		try {
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}%>


<%
int AccNo = Integer.parseInt(request.getParameter("accno"));
String LastName = request.getParameter("lst");
String FirstName = request.getParameter("fst");
int Bal = Integer.parseInt(request.getParameter("bal"));

ps.setInt(1, AccNo);
ps.setString(2, LastName);
ps.setString(3, FirstName);
ps.setInt(4, Bal);

ps.executeUpdate();
%>

<%@ include file="OpenAcc.html" %>




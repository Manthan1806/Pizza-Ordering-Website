<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/t3261db"
     user="t3261"  password="t3261"/>

<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String date = request.getParameter("date");
	String password = request.getParameter("password");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t3261db","t3261","t3261");
		Statement st = con.createStatement();
		String query = "insert into Customers values('"+name+"',phone,'"+address+"','"+email+"','2019/02/24','"+password+"')";
		int i = st.executeUpdate(query);
	}
	catch(Exception e)
	{
		out.println(e);
		e.printStackTrace();
%>
<jsp:include page="register.html"></jsp:include>
<%
	}
%>
<jsp:include page="list.html"></jsp:include>


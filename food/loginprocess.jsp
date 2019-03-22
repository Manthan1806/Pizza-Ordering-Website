<%@page import="java.sql.*"%>

<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	String DRIVER="com.mysql.jdbc.Driver";
	String CONNECTION_URL="jdbc:mysql://localhost:3306/t3261db";
	String USERNAME="t3261";
	String PASSWORD="t3261";

	Connection con = null;
	Class.forName(DRIVER);
	con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);

	Statement ps=con.createStatement();
	ResultSet rs=ps.executeQuery("select * from Customers where email = '" + email + "' and password = '" + password + "'");

	boolean status=rs.next();
	if(status){
	%>
	<jsp:include page="list.html"></jsp:include>
	<%
	session.setAttribute("session","TRUE");
	}
	else
	{
	out.println("Sorry, email or password error");
%>
<jsp:include page="register.html"></jsp:include>
<%
}
%>

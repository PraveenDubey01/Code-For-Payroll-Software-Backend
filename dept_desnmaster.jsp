<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Department and Designation Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
<center>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:payroll","payroll","payroll");
PreparedStatement pst=con.prepareStatement("insert into deptmaster values(?,?)");
pst.setString(1,request.getParameter("deptcode"));
pst.setString(2,request.getParameter("deptdesc"));
pst.executeUpdate();
out.println("data inserted");
%>
<a href="./registration.jsp">back</a>
</center>
</body>
</html>

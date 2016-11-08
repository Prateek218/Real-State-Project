

<%@ page import="java.sql.*" session="true"%>
<%@ page import="java.io.*"%>

<%

     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);



String tid=request.getParameter("h1");
String bid=request.getParameter("h2");
String d=request.getParameter("t3");

int app=Integer.parseInt(request.getParameter("t4"));



int chk=stmt.executeUpdate("insert into register(t_id,b_id,doj,app_no) values('"+tid+"','"+bid+"','"+d+"',"+app+")");


if(chk>0)
{
response.sendRedirect("search.jsp");
}





%>
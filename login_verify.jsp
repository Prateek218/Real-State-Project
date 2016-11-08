
<%@ page import="java.sql.*" session="true"%>
<%@ page import="java.io.*" session="true" %>

<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
		Statement stmt = con.createStatement();

		
int c=0;
String name=request.getParameter("uname");
String password=request.getParameter("pwd");
String logger=request.getParameter("s1");

if(logger.equals("Landlord"))
{
ResultSet rs = stmt.executeQuery("select * from login where type='Landlord' ");

while(rs.next())
{
if((name.equals(rs.getString(1)) && (password.equals(rs.getString(2))))
{

c=1;
break;
}
}


if(c==1)
{
session.setAttribute("username",name);
response.sendRedirect("landlord.jsp");

}
else
{

response.sendRedirect("login.jsp?msg='INVALID USERNAME OR PASSWORD' ");
}


}


if(logger.equals("Tenant"))
{

ResultSet rs = stmt.executeQuery("select * from login where type='Tenant' ");
while(rs.next())
{

String n1=rs.getString(1);
String n2=rs.getString(2);



if(name.equals(n1) && password.equals(n2))
{

c=1;
break;
}
}


if(c==1)
{
session.setAttribute("username",name);
response.sendRedirect("tenant.jsp");
}
else
{

response.sendRedirect("login.jsp?msg='INVALID USERNAME OR PASSWORD'");
}


}


if(logger.equals("Admin"))
{

ResultSet rs = stmt.executeQuery("select * from login where type='Admin' ");

while(rs.next())
{

String n1=rs.getString(1);
String n2=rs.getString(2);



if(name.equals(n1) && password.equals(n2))
{

c=1;
break;
}
}


if(c==1)
{
session.setAttribute("username",name);
response.sendRedirect("admin.jsp");
}
else
{

response.sendRedirect("login.jsp?msg='INVALID USERNAME OR PASSWORD' ");
}
}


}

catch(Exception e)
{
e.printStackTrace();
}

%>




<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%

 PreparedStatement psmt=null;
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);



String sel[]=request.getParameterValues("c1");

if(sel!=null)
{
int l=sel.length;
int chk=0;
for(int i=0;i<l;i++)
{

int j=stmt.executeUpdate("delete from news where id='"+sel[i]+"' ");
if(j>0)
{
chk++;
j=0;
}
}

if(chk==l)
{
response.sendRedirect("news_del.jsp?msg=success");
}
}
else
{
response.sendRedirect("news_del.jsp?msg=invalid");
}



%>

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
int prop=stmt.executeUpdate("delete from prop_builder where id='"+sel[i]+"' ");
int meet=stmt.executeUpdate("delete from meet where l_id='"+sel[i]+"' ");
ResultSet rs=stmt.executeQuery("select uname from landlord_mas where l_id='"+sel[i]+"'");
rs.next();
int login=stmt.executeUpdate("delete from login where uname='"+rs.getString(1)+"' and type= 'Landlord'");

int j=stmt.executeUpdate("delete from landlord_mas where l_id='"+sel[i]+"' ");
if(j>0)
{
chk++;
j=0;
}
}

if(chk==l)
{
response.sendRedirect("l_del.jsp?msg=success");
}
}
else
{
response.sendRedirect("l_del.jsp?msg=invalid");
}



%>
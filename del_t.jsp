
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
int reg=stmt.executeUpdate("delete from register where t_id='"+sel[i]+"' ");
int problem=stmt.executeUpdate("delete from problem where t_id='"+sel[i]+"' ");
int feed=stmt.executeUpdate("delete from feedback_admin where t_id='"+sel[i]+"' ");
int meet=stmt.executeUpdate("delete from meet where t_id='"+sel[i]+"' ");
ResultSet rs=stmt.executeQuery("select uname from ten_master where t_id='"+sel[i]+"'");
rs.next();
int login=stmt.executeUpdate("delete from login where uname='"+rs.getString(1)+"' and type= 'Tenant'");
int j=stmt.executeUpdate("delete from ten_master where t_id='"+sel[i]+"' ");
if(j>0)
{
chk++;
j=0;
}
}

if(chk==l)
{
response.sendRedirect("t_del.jsp?msg=success");
}
}
else
{
response.sendRedirect("t_del.jsp?msg=invalid");
}



%>
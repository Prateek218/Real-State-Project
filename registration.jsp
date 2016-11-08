
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
try
{
FileInputStream fis;
 PreparedStatement psmt=null;
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

int c=0;

String uname=request.getParameter("uname");
String password=request.getParameter("pwd");
String name=request.getParameter("t1");
String dob=request.getParameter("t2");
String country=request.getParameter("t3");
String state=request.getParameter("t4");
String city=request.getParameter("t5");
String add=request.getParameter("t6");
String phno=request.getParameter("t7");
String email=request.getParameter("t8");
String gender=request.getParameter("r1");
//String pic=request.getParameter("t9");

ResultSet rs = stmt.executeQuery("select uname from login where type='Tenant'");

while(rs.next())
{
if(uname.equals(rs.getString(1)))
{

c=1;
break;
}
}


if(c==1)
{
response.sendRedirect("t_add.jsp?msg=invalid ");
}
else
{ 
String n1=null;
ResultSet rs1=stmt.executeQuery("select t_id from ten_master");

rs1.last();
int row=rs1.getRow();
if(row==0)
{
n1="1";
}

double p=Double.parseDouble(phno);
int chk=stmt.executeUpdate("insert into ten_master(t_id,name,dob,country,state,city,address,phno,emailid,gender,uname) values('"+n1+"','"+name+"','"+dob+"','"+country+"','"+state+"','"+city+"','"+add+"',"+p+",'"+email+"','"+gender+"','"+uname+"')");

int chk1=stmt.executeUpdate("insert into login values('"+uname+"','"+password+"','Tenant')");

 
 
 // File image=new File(pic);

  //psmt=con.prepareStatement("update ten_master set pic=? where t_id='"+n1+"'");
 
  
 // fis=new FileInputStream(image);
  
  //psmt.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
 // int s = psmt.executeUpdate();
if(true)
{
response.sendRedirect("login.jsp");
}

}
}catch(Exception s)
{
out.print(s);
}


%>
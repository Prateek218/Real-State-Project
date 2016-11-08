
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
String pic=request.getParameter("t9");
String com_name=request.getParameter("t10");
String com_add=request.getParameter("t11");

ResultSet rs = stmt.executeQuery("select uname from login where type='Landlord'");

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
response.sendRedirect("l_add.jsp?msg=invalid ");
}
else
{ 
String n1=null;
ResultSet rs1=stmt.executeQuery("select l_id from landlord_mas");

rs1.last();
int row=rs1.getRow();
if(row==0)
{
n1="1";
}
else
{
ResultSet rs2=stmt.executeQuery("select l_id from landlord_mas");
           int arr[]=new int[row];   
           int i1=0;
               
               while(rs2.next())
               {
              String l= rs2.getString(1);
             arr[i1]=Integer.parseInt(l);
               i1++;
              }
               int len_arr=arr.length;
               int max=arr[0];
               for(int k=1;k<len_arr;k++)
               {
                   if(max<arr[k])
                   {
                       max=arr[k];
                   }
               }
               
            
               max++;
           n1=Integer.toString(max);
}
int chk=stmt.executeUpdate("insert into landlord_mas(l_id,name,dob,gender,country,state,city,phno,emailid,comp_name,comp_add,address,uname) values('"+n1+"','"+name+"','"+dob+"','"+gender+"','"+country+"','"+state+"','"+city+"','"+phno+"','"+email+"','"+com_name+"','"+com_add+"','"+add+"','"+uname+"')");

int chk1=stmt.executeUpdate("insert into login values('"+uname+"','"+password+"','Landlord')");

 
 
 // File image=new File(pic);

  //psmt=con.prepareStatement("update landlord_mas set pic=? where l_id='"+n1+"'");
 
  
//  fis=new FileInputStream(image);
  
  //psmt.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
  //int s = psmt.executeUpdate();
if(true)
{
response.sendRedirect("login.jsp");
}

}
}catch(Exception e)
{
out.print(e);
}


%>
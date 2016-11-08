<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" session="true"%>
<%@ page import="java.io.*"%>
<%! int i=1; %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Real Estate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">._css3m{display:none}</style>

</head>

<body>

<div id="templatemo_banner_wrapper">
<div id="templatemo_banner">
<div id="templatemo_site_title">
<h1>
            	<img src="images/templatemo_logo.png" alt="css template" /> 
           </h1>
		   </div>
		   <div id="templatemo_menu">
    	<ul>
            <li><a href="main.jsp" ><span></span>Home</a></li>
            <li><a href="about.jsp"><span></span>About</a></li>
            
            <li><a href="gallery.jsp" ><span></span>Gallery</a></li>
            <li><a href="contact.jsp"><span></span>Contact</a></li>
			<li><a href="logout.jsp"><span></span>Logout</a></li>
        </ul>
    </div>



</div>
</div>
<div id="templatemo_content">


<div id="side_column" style="width:150px; margin-bottom:20px">
	<div class="section_w290">
		

<h2> MENU:</h2>
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="t_view.jsp" style="width:91px;"><span>My Profile</span></a>
	<ul>
		<li class="subfirst"><a href="t_view.jsp">View</a></li>
			<li><a href="t_update.jsp">Update</a></li>
		
	</ul></li>

	<li class="topmenu"><a href="search.jsp" style="width:91px;"><span>Property</span></a>
	<ul>
		<li class="subfirst"><a href="search.jsp">Search</a></li>
		
		
	</ul></li>
	
	
</ul>


	
			
</div>

</div>
<% 
try
{
String uname=(String)session.getAttribute("username");
session.setAttribute("username",session.getAttribute("username"));

 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con = DriverManager.getConnection("jdbc:odbc:realstate");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	
	ResultSet rs=stmt.executeQuery("Select * from ten_master where uname='"+uname+"'");
	rs.next();
	
byte[] fileBytes;
%>
<div id="main_column" style="width:530px">
 <table  cellpadding="3">
 


<tr>
<td> Name :
</td>
<td><%=rs.getString(2) %>
</td>

</tr>


<tr>
<td> Date Of Birth:
</td>
<td><%=rs.getString(3) %>
</td>
</tr>

<tr>
<td> Country:
</td>
<td><%=rs.getString(4) %>
</td>
</tr>

<tr>
<td> State:
</td>
<td><%=rs.getString(5) %>
</td>
</tr>

<tr>
<td> City:
</td>
<td><%=rs.getString(6) %>
</td>
</tr>

<tr>
<td> Address:
</td>
<td><%=rs.getString(7) %>
</td>
</tr>

<tr>
<td> Contact No:
</td>
<td><%=rs.getString(8) %>
</td>
</tr>

<tr>
<td> Email Id:
</td>
<td> <%=rs.getString(9) %> 
</td>
</tr>

<tr>
<td> Gender:
</td>
<td><%=rs.getString(10) %>
</td>
</tr>
</table>


<%

String id=rs.getString(1);
ResultSet rs2=stmt.executeQuery("select property_master.Name,register.doj,register.app_no from register inner join property_master on register.b_id=property_master.p_id where register.t_id='"+id+"' "); 
while(rs2.next())
{

%>
<table >

<tr>
<td> Building Name:
</td>

<td>
<%=rs2.getString(1) %>
</td>
</tr>
<tr>
<td> 
Date Of Joining:
</td>


<td>
<%=rs2.getString(2) %>
</td>
</tr>
<tr>
<td> Appartment No:
</td>

<td>
<%=rs2.getString(3) %>
</td>
</tr>

 </table>           
<%} 
}catch(Exception e)
{}
%>

</div>
</div>


<div class="cleaner">
</div>
<div class="cleaner"></div>
</div> <!-- end of content -->



</body>
</html>


